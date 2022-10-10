<?php


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ViewProductOrderController;
use App\Http\Controllers\PaymentController;

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
    Route::post('/auth/authentication',[AuthController::class, 'login']);
    
    Route::post('/auth/signup',[AuthController::class, 'signUp']);

    Route::get('products', [ProductController::class, 'index']);

    Route::group(['middleware' => 'auth:api'], function() 
    {
        Route::post('/auth/logout',[AuthController::class, 'logout']);

        // ---------------------------------------------------------------------
        // Products
        // --------------------------------------------------------------------- 
        Route::post('products', [ProductController::class, 'store']);

        // ---------------------------------------------------------------------
        // Orders
        // --------------------------------------------------------------------- 
        Route::get('orders', [OrderController::class, 'index']);
        Route::post('orders', [OrderController::class, 'store']);
        Route::get('orders/{order}', [OrderController::class, 'show']);

        // ---------------------------------------------------------------------
        // View product orders
        // --------------------------------------------------------------------- 
        Route::get('orders_product', [ViewProductOrderController::class, 'index']);
        Route::get('orders_product_user', [ViewProductOrderController::class, 'showUserMail']);
        
        // ---------------------------------------------------------------------
        // Payments
        // --------------------------------------------------------------------- 
        Route::post('payment_request', [PaymentController::class, 'createPaymentSession']);
        Route::post('response_place_to_pay', [PaymentController::class, 'responseHandlingPlaceToPay']);
        
    });
});
