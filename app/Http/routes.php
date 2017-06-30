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


Route::get('login', 'Auth\AuthController@getLogin')->name('login');
Route::post('login', 'Auth\AuthController@postLogin');
Route::get('logout', 'Auth\AuthController@getLogout');

Route::post('registrar','AdminController@registrar');
Route::group(['middleware' => 'auth'], function () {

  Route::get('/', 'AdminController@index')->name('/');
  Route::get('/socios', 'AdminController@socios')->name('/socios');
  Route::get('/usuario', 'AdminController@usuario')->name('/usuario');
  Route::get('/vehiculo', 'AdminController@vehiculo')->name('/vehiculo');
  Route::get('/admsocios', 'AdminController@admsocios')->name('/admsocios');
  Route::get('/admusuarios', 'AdminController@admusuarios')->name('/admusuarios');
  Route::get('/admvehiculo', 'AdminController@admvehiculo')->name('/admvehiculo');
  Route::get('/listsocios', 'AdminController@listsocios')->name('/listsocios');
  Route::get('json', 'AdminController@json')->name('json');
  Route::get('json2', 'AdminController@json2')->name('json2');

  });
