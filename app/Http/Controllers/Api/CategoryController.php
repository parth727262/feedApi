<?php

namespace App\Http\Controllers\Api;

use App\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class CategoryController extends Controller
{

    public $successStatus = 200;

    public function add_category(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'category_name' => 'required',
            'category_added_by' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $Category = new Category();
        $Category->category_name = $request->category_name;
        $Category->category_added_by = $request->category_added_by;

        if ($Category->save()) {
            return response()->json(['categories' => ['msg' => "Category Added Successfully"]], $this->successStatus);
        } else {
            return response()->json(['categories' => ['msg' => "Category Is Not Added"]]);
        }
    }

    public function get_category()
    {
        $Category = Category::select('id', 'category_name')->get();
        return response()->json(['categories' => [$Category]], $this->successStatus);
    }

    public function delete_category($id)
    {
        $Category = Category::find($id);
        if ($Category->delete()) {
            return response()->json(['categories' => ['msg' => "Category Deleted Successfully"]], $this->successStatus);
        } else {
            return response()->json(['categories' => ['msg' => "Category Is Not Deleted"]]);
        }
    }
}
