<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\RoomController;
use App\Http\Controllers\ContactController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', RegisterController::class)->name('register');
Route::post('/login', LoginController::class)->name('login');
Route::post('/logout', LogoutController::class)->name('logout');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('room', [RoomController::class, 'index']);
Route::post('room', [RoomController::class, 'store']);
Route::get('/room/{id}', [RoomController::class, 'show']);
Route::put('/room/{id}', [RoomController::class, 'update']);
Route::delete('/room/{id}', [RoomController::class, 'destroy']);

Route::get('contact', [ContactController::class, 'index']);
Route::post('contact', [ContactController::class, 'store']);
Route::get('/contact/{id}', [ContactController::class, 'show']);
Route::put('/contact/{id}', [ContactController::class, 'update']);
Route::delete('/contact/{id}', [ContactController::class, 'destroy']);
