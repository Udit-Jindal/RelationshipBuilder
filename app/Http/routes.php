<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//echo url('/');die;
Route::get('/', function () {
    return view('welcome');
});

/****************************USER-ROUTES[START]*********************/

Route::get('musejam/public/user/all', 'UserController@getAllUsers');

Route::get('musejam/public/user/{id}', 'UserController@getUserById');

Route::get('musejam/public/user/name/{name}', 'UserController@getUserByName');

Route::post('musejam/public/user', 'UserController@createUser');

Route::put('musejam/public/user', 'UserController@updateUser');

Route::delete('musejam/public/user', 'UserController@deleteUser');

/****************************USER-ROUTES[END]*********************/


/****************************TAG-ROUTES[START]*********************/

Route::get('musejam/public/tag/all', 'TagController@getAllTags');

Route::get('musejam/public/tag/{id}', 'TagController@getTagById');

Route::get('musejam/public/tag/name/{name}', 'TagController@getTagByName');

Route::post('musejam/public/tag', 'TagController@createTag');

Route::put('musejam/public/tag', 'TagController@updateTag');

Route::delete('musejam/public/tag', 'TagController@deleteTag');

/****************************TAG-ROUTES[END]*********************/


/****************************RELATIONSHIP-ROUTES[START]*********************/

Route::get('musejam/public/relationship/all', 'RelationshipController@getAllRelationships');

Route::get('musejam/public/relationship/{id}', 'RelationshipController@getRelationshipById');

Route::post('musejam/public/relationship', 'RelationshipController@createRelationship');

Route::put('musejam/public/relationship', 'RelationshipController@updateRelationship');

Route::delete('musejam/public/relationship', 'RelationshipController@deleteRelationship');

/****************************RELATIONSHIP-ROUTES[END]*********************/