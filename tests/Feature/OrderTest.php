<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\OrderController;
use Illuminate\Http\Request;

class OrderTest extends TestCase
{   
    public $id;

    /**  @test * */
    function testStoreOrder()
    {
        $token = AuthController::getToken();

        $this->withHeaders([
            'Authorization' => 'Bearer ' . $token->original['access_token'],
        ])->post('api/' . env('API_VERSION') . '/orders', [
            "name" => 'Test Create Order',
            "email"  => 'jzea@mail.com',
            "mobile" => '123456789',
            "id" => "1"
        ])
        ->assertStatus(200)
        ->assertSee('Success');
 
    }

    /**  @test * */
    function testIndexOrder()
    {
        $token = AuthController::getToken();

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token->original['access_token'],
        ])->get('api/' . env('API_VERSION') . '/orders')
        ->assertStatus(200);

        $key = $response->assertSee('id')->original['response']['_rel'];
        
        $this->id = $response->assertSee('id')->original['response']['_embedded'][$key][0]['id'];
    }

    /**  
     * @test 
     * * */
    function testEditOrder()
    {   
        $this->testIndexOrder();

        $arrayinsert = array(
            'customer_name' => 'Test Name',
            'customer_email' => 'testname@mail.com',
            'customer_mobile' => '111 3334444'
        );

        $orderController = new OrderController();
        $response = $orderController->edit('id', $this->id, $arrayinsert);

        $this->assertEquals('Success', $response->original['message']);
 
    }
}
