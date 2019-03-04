<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('search','FrontController@getSearch');
Route::get('latest','FrontController@getLatest');
Route::get('photo','FrontController@getGalery');
Route::get('{id}','FrontController@getCategory');
Route::get('{id}/{slug}','FrontController@getArticle');
Route::get('/','FrontController@getIndex');

// Route::get('/', function () {
//     return view('welcome');
// });
