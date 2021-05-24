<?php

namespace App\Http\Controllers\Api;

use App\Counsellor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class CounsellorController extends Controller
{
    public $successStatus = 200;

    public function add_counsellor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'counsellor_name' => 'required',
            'counsellor_whatsapp_no' => 'required|string',
            'counsellor_contact_number' => 'required|string',
            'counsellor_email' => 'required|email',
            'day_avaliability' => 'required',
            'time_avaliability' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $counsellor = new Counsellor();
        $counsellor->counsellor_name = $request->counsellor_name;
        $counsellor->counsellor_whatsapp_no = $request->counsellor_whatsapp_no;
        $counsellor->counsellor_contact_number = $request->counsellor_contact_number;
        $counsellor->counsellor_email = $request->counsellor_email;
        $counsellor->day_avaliability = implode(',', $request->day_avaliability);
        $counsellor->time_avaliability = implode(',', $request->time_avaliability);

        if ($counsellor->save()) {
            return response()->json(['counsellors' => ['msg' => "Counsellor Added Successfully"]], $this->successStatus);
        } else {
            return response()->json(['counsellors' => ['msg' => "Counsellor Is Not Added"]]);
        }
    }

    public function get_counsellor()
    {
        $day = date('l');
        $counsellors = Counsellor::where("day_avaliability", "LIKE", "%" . $day . "%")->get();
        foreach ($counsellors as $key => $counsellor) {
            $time[$key] = explode(",", $counsellor->time_avaliability);
        }
        print_r($time);
        die;
        return response()->json(['counsellors' => [$counsellor]], $this->successStatus);
    }

    public function delete_counsellor($id)
    {
        $counsellor = Counsellor::find($id);
        if (isset($counsellor)) {
            if ($counsellor->delete()) {
                return response()->json(['counsellors' => ['msg' => "counsellor Deleted Successfully"]], $this->successStatus);
            } else {
                return response()->json(['counsellors' => ['msg' => "counsellor Is Not Deleted"]]);
            }
        } else {
            return response()->json(['counsellors' => ['msg' => "counsellor is not exist"]]);
        }
    }
}
