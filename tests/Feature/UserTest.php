<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use Illuminate\Support\Str;

class UserTest extends TestCase
{
    public $email;
    public $password;
    public $token;

    /** @test */
    function testSignUp()
    {
        $this->email = randomCredentials()['email'];
        $this->password = randomCredentials()['password'];

        $registerUser = $this->post('api/' . env('API_VERSION') . '/auth/signup', [
            "name" => "Jair Zea",
            "email" => $this->email,
            "password" => $this->password,
            "mobile" => '333 4444567'
        ])->assertStatus(200);
    }

    /** @test */
    function testLogin()
    {
        $this->testSignUp();

        $loginUser = $this->post('api/' . env('API_VERSION') . '/auth/authentication', [
            "email" => $this->email,
            "password" => $this->password
        ])->assertStatus(200);

        $this->token = $loginUser->assertSee('access_token')->original['access_token'];
        
    }

    /** @test */
    function testLogout()
    {
        $this->testSignUp();
        $this->testLogin();

        $loginUser = $this->withHeaders([
            'Authorization' => 'Bearer ' . $this->token,
        ])->post('api/' . env('API_VERSION') . '/auth/logout')->assertStatus(200);
        
    }
}
