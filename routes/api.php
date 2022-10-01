<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ViewProductOrderController;


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

Route::group(['prefix' => env('API_VERSION')], function () 
{
    Route::post('/auth/login',[AuthController::class, 'login']);
    Route::post('/auth/signup',[AuthController::class, 'signUp']);

    Route::group(['middleware' => 'auth:api'], function() 
    {
        Route::post('/auth/logout',[AuthController::class, 'logout']);

        // ---------------------------------------------------------------------
        // Products
        // --------------------------------------------------------------------- 
        Route::get('products', [ProductController::class, 'index']);
        Route::post('products', [ProductController::class, 'store']);

        // ---------------------------------------------------------------------
        // Orders
        // --------------------------------------------------------------------- 
        Route::get('orders', [OrderController::class, 'index']);
        Route::post('orders', [OrderController::class, 'store']);

        // ---------------------------------------------------------------------
        // View product orders
        // --------------------------------------------------------------------- 
        Route::get('orders_product', [ViewProductOrderController::class, 'index']);
        Route::get('orders_product_user', [ViewProductOrderController::class, 'showUserMail']);


        
    });
});
