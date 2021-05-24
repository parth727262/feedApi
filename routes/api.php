<?php

use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::post('login', 'Api\UserController@login')->name('login');
Route::post('register', 'Api\UserController@register');
Route::group(['middleware' => 'auth:api'], function () {
    Route::post('details', 'Api\UserController@details');

    //category
    Route::post('add_category', 'Api\CategoryController@add_category');
    Route::get('get_category', 'Api\CategoryController@get_category');
    Route::delete('delete_category/{id}', 'Api\CategoryController@delete_category');

    //feed
    Route::post('add_feed', 'Api\FeedController@add_feed');
    Route::get('get_feed', 'Api\FeedController@get_feed');
    Route::post('edit_feed', 'Api\FeedController@edit_feed');
    Route::delete('delete_feed/{id}', 'Api\FeedController@delete_feed');

    //sponsor
    Route::post('add_sponsor', 'Api\SponsorController@add_sponsor');
    Route::get('get_sponsor', 'Api\SponsorController@get_sponsor');

    //counsellor
    Route::post('add_counsellor', 'Api\CounsellorController@add_counsellor');
    Route::get('get_counsellor', 'Api\CounsellorController@get_counsellor');
    Route::delete('delete_counsellor/{id}', 'Api\CounsellorController@delete_counsellor');
});

Route::get('data', 'DemoController@data');
