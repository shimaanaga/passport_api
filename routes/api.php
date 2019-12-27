<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace' => 'Api'] , function(){

    Route::post('/register','AuthController@register');
    Route::post('/login','AuthController@login')->name('login');

    // Routes need Authentication
    //Route::get('/profile','UserController@Profile')->middleware('auth:api');
    Route::group(['prefix' => 'user' ,'middleware' => 'auth:api'], function(){
        Route::get('/profile','UserController@Profile');
        Route::post('/profile','UserController@updateProfile');
    });

}); /// postman link
/// https://www.getpostman.com/collections/0a890e21dd2c0126617d