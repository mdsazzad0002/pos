<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
        'scheme' => 'https',
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'google' => [
        'client_id' => '7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com',//env('GOOGLE_CLIENT_ID'),
        'client_secret' =>'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', //env('GOOGLE_CLIENT_SECRET'),
        'redirect' => '/user/google/callback',//env('GOOGLE_REDIRECT_URL'),
    ],
    'facebook' => [
        'client_id' =>  '2034141270377312',//env('FACEBOOK_CLIENT_ID'),
        'client_secret' => 'ceabcb574affbc86ee9d4422a29defd8',//env('FACEBOOK_CLIENT_SECRET'),
        'redirect' => '/user/facebook/callback', //env('FACEBOOK_REDIRECT_URI'),
    ],

];
// https://accounts.google.com/o/oauth2/v2/auth?scope=https%3A//www.googleapis.com/auth/drive.metadata.readonly%20https%3A//www.googleapis.com/auth/calendar.readonly&state=state_parameter_passthrough_value&redirect_uri=http://localhost/pos/user/google/redirect&access_type=offline&response_type=code&client_id=7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com

// https://accounts.google.com/o/oauth2/v2/auth?scope=https%3A//www.googleapis.com/auth/drive.metadata.readonly%20https%3A//www.googleapis.com/auth/calendar.readonly&state=state_parameter_passthrough_value&access_type=offline&response_type=code&client_id=7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com
