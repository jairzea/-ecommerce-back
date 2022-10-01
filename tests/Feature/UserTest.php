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

    /** @test */
    function testSignUp()
    {
        $this->email = randomCredentials()['email'];
        $this->password = randomCredentials()['password'];

        $registerUser = $this->post('api/' . env('API_VERSION') . '/auth/signup', [
            "name" => "Jair Zea",
            "email" => $this->email,
            "password" => $this->password
        ])->assertStatus(200);
    }

    /** @test */
    function testLogin()
    {
        $this->testSignUp();

        $loginUser = $this->post('api/' . env('API_VERSION') . '/auth/login', [
            "email" => $this->email,
            "password" => $this->password
        ])->assertStatus(200);
        
    }
}
