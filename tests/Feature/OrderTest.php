<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Http\Controllers\Auth\AuthController;

class OrderTest extends TestCase
{   
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
            "id" => "2"
        ])
        ->assertStatus(200)
        ->assertSee('Success');
 
    }

    /**  @test * */
    function testIndexOrder()
    {
        $token = AuthController::getToken();

        $this->withHeaders([
            'Authorization' => 'Bearer ' . $token->original['access_token'],
        ])->get('api/' . env('API_VERSION') . '/orders')
        ->assertStatus(200);
 
    }
}
