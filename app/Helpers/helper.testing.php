<?php

if (!function_exists('randomCredentials')) {
    function randomCredentials(){
        $str_ran = Str::random(10);

        return [
            'email' => "$str_ran@mail.com",
            'password' => "123456",
            'name' => $str_ran
        ];
    }
}
