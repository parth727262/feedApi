<?php

namespace App\Http\Controllers\Api;

use App\Feed;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class FeedController extends Controller
{
    public $successStatus = 200;

    public function add_feed(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'feed_title' => 'required',
            'feed_description' => 'required',
            'feed_category_id' => 'required',
            'feed_image' => 'mimes:jpeg,jpg,png|required',
            'feed_added_by' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $feed = new Feed();
        $feed->feed_title = $request->feed_title;
        $feed->feed_description = $request->feed_description;
        $feed->feed_category_id = $request->feed_category_id;
        $image = $request->feed_image->store('public/feeds');
        $feed->feed_image = $image;
        $feed->feed_added_by = $request->feed_added_by;

        if ($feed->save()) {
            return response()->json(['feeds' => ['msg' => "Feed Added Successfully"]], $this->successStatus);
        } else {
            return response()->json(['feeds' => ['msg' => "Feed Is Not Added"]]);
        }
    }

    public function get_feed()
    {
        $feed = Feed::all();
        return response()->json(['feeds' => [$feed]], $this->successStatus);
    }

    public function delete_feed($id)
    {
        $feed = Feed::find($id);
        if (isset($feed)) {
            if ($feed->delete()) {
                return response()->json(['feeds' => ['msg' => "Feed Deleted Successfully"]], $this->successStatus);
            } else {
                return response()->json(['feeds' => ['msg' => "Feed Is Not Deleted"]]);
            }
        } else {
            return response()->json(['feeds' => ['msg' => "feed is not exist"]]);
        }
    }

    public function edit_feed(Request $request)
    {

        $feed = Feed::find($request->id);
        $feed->feed_title = $request->feed_title;
        $feed->feed_description = $request->feed_description;
        $feed->feed_category_id = $request->feed_category_id;
        $image = $request->feed_image->store('public/feeds');
        $feed->feed_image = $image;
        $feed->feed_added_by = $request->feed_added_by;

        if ($feed->save()) {
            return response()->json(['feeds' => ['msg' => "Feed Updated Successfully"]], $this->successStatus);
        } else {
            return response()->json(['feeds' => ['msg' => "Feed Is Not Updated"]]);
        }
    }
}
