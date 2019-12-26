<?php


namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{


    public function register(Request $request)
    {
        $rules = [
            'first_name'    => 'required|string|max:191|min:3',
            'last_name'     => 'sometimes|string|max:191',
            'email'         => 'required|email|unique:users|string|max:191',
            'password'      => 'required|string|min:6|confirmed',
            'country_id'    => 'required|exists:countries,id',
            'birth_date'    => 'sometimes|date|date_format:Y-m-d|before:2001-01-01',
        ];

        $message = [
            'email.unique'  => "Email is found please enter a unique email",
            'birth_date.before' => "The user must be over 15 years old"
        ];

        $validator = Validator::make($request->all() , $rules , $message);

        if($validator->fails())
        {
            return response()->json(["status" => false, "data" => $validator->errors()], 401, ['Content-Type' => 'application/json']);
        }

        $request->merge(['password' => bcrypt($request->password) ,'is_active' => 1]);

        $user = User::create($request->all());
        $success['token'] =  $user->createToken(config("app.name"))->accessToken;
        $success['name'] =  $user->first_name ." ". $user->last_name;
        return response()->json(["status" => true, "data"=>$success], $this->successStatus, ['Content-Type' => 'application/json']);
    }



    public function login(Request $request )
    {
        $rules = [
            'email'              => 'required|email|string|max:191|exists:users,email',
            'password'           => 'required|string|min:6'
        ];
        $message = [
            'email.exists'  => "Email not found on our service",
        ];

        $validator = Validator::make($request->all() , $rules ,$message);

        if($validator->fails())
        {
            return response()->json(["status" => false, "data" => $validator->errors()], 401, ['Content-Type' => 'application/json']);

        }
        $user = User::where('email' , $request->email)->first();

        if($user)
        { // check if data is identical
            if(Auth::attempt(['email' => $request->email, 'password' => $request->password]) )
            {
                if($user->is_active == 1){ // check if active
                    $user = Auth::user();
                    $success['token'] =  $user->createToken(config("app.name"))->accessToken;

                    return response()->json(["status" => true, "data"=>$success , "message" => "Signed In"], $this->successStatus, ['Content-Type' => 'application/json']);

                }else{
                    return response()->json(["status" => false, "data"=> "Your account has been restricted"], $this->successStatus, ['Content-Type' => 'application/json']);
                }

            }else{
                return response()->json(["status" => false, "data"=> "The login data is incorrect"], 401, ['Content-Type' => 'application/json']);
            }
        }


    }


}