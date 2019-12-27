<?php


namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Validation\Rule;

class UserController extends Controller
{

    public function Profile()
    {
        $user = Auth::user();
        if($user)
        {
            $user->img_url = asset($user->image);
            return response()->json(['success' => $user], $this->successStatus)->header('Content-Type', "application/json");
        }
        return response()->json(["status" => false, "data"=> "Unauthorised"], 401, ['Content-Type' => 'application/json']);
    }


    public function updateProfile(Request $request)
    {
        $user = Auth::user();
        $rules = [
            'first_name'    => 'required|string|max:191|min:3',
            'last_name'     => 'sometimes|string|max:191',
            'email'         =>['required', 'string', 'email', 'max:255', Rule::unique('users')->ignore($user->id)],
            'password'      =>['confirmed', 'string', 'min:6'],
            'country_id'    => 'sometimes|exists:countries,id',
            'birth_date'    => 'sometimes|date|date_format:Y-m-d|before:2001-01-01',

        ];
        if (!is_null($request->image)) {
            $rules['image'] = ['image','mimes:jpeg,png,jpg,gif,svg','max:2048'];
        }
        $validator = validator()->make($request->all(), $rules);
        if($validator->fails()){
            return response()->json(["status" => false, "data" => $validator->errors()], 401, ['Content-Type' => 'application/json']);
        }

        if($user){
            if($request->password){
                $request->merge(['password' => bcrypt($request->password)]);
            }
            $user->update($request->only(['first_name','last_name','email','country_id','birth_date','password']));

            if ($request->hasFile('image')) {
                $image_path = $user->image;  // Value is directory file path
                if (File::exists(public_path($image_path))) {
                    File::delete(public_path($image_path));
                }
                $image = $request->file('image');
                $filename = time() . '.' . $image->getClientOriginalExtension();
                $request->image->move(public_path('uploads/users/' . $user->id), $filename);
                $user->image = '/uploads/users/' . $user->id . '/' . $filename;
                $user->save();
            }
            $user->img_url = asset($user->image);
            return response()->json(["status" => true, "data"=>$user ], $this->successStatus, ['Content-Type' => 'application/json']);
        }
        return response()->json(["status" => false, "data"=> "Unauthorised"], 401, ['Content-Type' => 'application/json']);

    }

}