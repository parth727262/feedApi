<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Sponsor;
use Illuminate\Http\Request;
use Validator;

class SponsorController extends Controller
{
    public $successStatus = 200;

    public function add_sponsor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'organisation_name' => 'required',
            'image_url' => 'mimes:jpeg,jpg,png|required',
            'website_link' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $sponsor = new Sponsor();
        $sponsor->organisation_name = $request->organisation_name;
        $sponsor->website_link = $request->website_link;
        $image = $request->image_url->store('public/sponsors');
        $sponsor->image_url = $image;

        if ($sponsor->save()) {
            return response()->json(['sponsors' => ['msg' => "Sponsor Added Successfully"]], $this->successStatus);
        } else {
            return response()->json(['sponsors' => ['msg' => "Sponsor Is Not Added"]]);
        }
    }

    public function get_sponsor()
    {
        $sponsor = Sponsor::select('image_url', 'website_link', 'organisation_name')->get();
        return response()->json(['sponsors' => [$sponsor]], $this->successStatus);
    }

}
