<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TagController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/', [PostController::class , 'home'] );
Route::get('posts', [PostController::class , 'index'] );
Route::get('posts/create', [PostController::class , 'create'] );
Route::get('posts/search', [PostController::class , 'search'] );
Route::get('posts/{id}', [PostController::class , 'show'] );
Route::post('posts', [PostController::class , 'store'] );
Route::get('posts/{id}/edit', [PostController::class , 'edit'] );
Route::put('posts/{id}', [PostController::class , 'update'] );
Route::delete('posts/{id}', [PostController::class , 'destroy'] );


Route::resource('users' , UserController::class) ;
Route::get('user/{id}/posts', [UserController::class , 'posts'] )->name('user.posts');


Route::resource('tags' , TagController::class) ;
