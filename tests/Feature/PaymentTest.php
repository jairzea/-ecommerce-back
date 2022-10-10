<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentController;
use Illuminate\Http\Request;

class PaymentTest extends TestCase
{
    /**  @test * */
    function testCreatePaymentSession()
    {
    
        $order = OrderController::showOnly()->original->id;

        $request = new Request();

        $request->replace(['order' => $order]);

        $paymentSession = new PaymentController();
        $response = $paymentSession->createPaymentSession($request);
        echo json_encode($response);
        $this->assertEquals('success', $response->original['message']);
 
    }

    /**  @test * */
    function testResponseHandlingPlaceToPay()
    {
    
        $reference = OrderController::showOnly()->original->reference;

        $request = new Request();

        $request->replace(['reference' => $reference]);

        $paymentSession = new PaymentController();
        $response = $paymentSession->responseHandlingPlaceToPay($request);

        $this->assertEquals('success', $response->original['message']);
 
    }
}
