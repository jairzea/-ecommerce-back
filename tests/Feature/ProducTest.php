<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Http\Controllers\Auth\AuthController;

class ProducTest extends TestCase
{
    /**  @test * */
    function testStoreProduct()
    {
        $token = AuthController::getToken();

        $this->withHeaders([
            'Authorization' => 'Bearer ' . $token->original['access_token'],
        ])->post('api/' . env('API_VERSION') . '/products', [
            "name" => 'Test Create Product',
            "description"  => 'Lorem impsum',
            "price" => '40000',
            "img" => "https://#"
        ])
        ->assertStatus(200)
        ->assertSee('Success');
 
    }

    /**  @test * */
    function testIndexProduct()
    {
        $token = AuthController::getToken();

        $this->withHeaders([
            'Authorization' => 'Bearer ' . $token->original['access_token'],
        ])->get('api/' . env('API_VERSION') . '/products')
        ->assertStatus(200);
 
    }
}
