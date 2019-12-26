<?php


namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class UserController extends Controller
{

    public function Profile()
    {
        $user = Auth::user();
        if($user)
            return response()->json(['success' => $user], $this->successStatus)->header('Content-Type', "application/json");
        return response()->json(['error'=>'Unauthorised'], 401);
    }

    public function updateProfile(Request $request)
    {
        $user = Auth::user();
        if($user){
            //        dd(\auth()->guard('api')->user()); // Auth::user()  // $request->user()
//        $rules = [
//            'email' => ['required', 'string', 'email', 'max:255', Rule::unique('users')->ignore($request->user()->id)],
//            'password' => ['confirmed', 'string', 'min:6']
//        ];
//        $validator = validator()->make($request->all(), $rules);
//        if($validator->fails()){
//            return \Response::json(["status" => "ok", "data" => ["error" => $validator->errors()->first(), $validator->errors()]], 200, ['Content-Type' => 'application/json']);
//        }
//        $loginUser = $request->user();
//
//        $loginUser->update($request->all());
//
//        if($loginUser->has('password')){
//            $loginUser->password = bcrypt($request->password);
//        }
//        $loginUser->save();

            return response()->json(['success' => $user], $this->successStatus);
        }
        return response()->json(['error'=>'Unauthorised'], 401);
    }

}