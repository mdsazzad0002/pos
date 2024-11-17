curl -i -X POST `
  https://graph.facebook.com/v21.0/504081139451136/messages `
  -H 'Authorization: Bearer EAARxbr8T92UBOwLvbigoC7jRuK8w99lSskTXgiIZBmsvOvGZBRIbquSRrh8BgkUGwM1uXcWzt55ZAyJR9BXZC3YPMWGV2ULppcxHtJ0ZAL0MogJ4c6ODkkBCoiZCukNBgZB7uv695ByxZC6nCGPGfz2l0nzbPNaSLDEZC4qpp9EbVQOF4mcJexZATxfIBQWx959RtnIFVjO0AGRepxdtve8GtZAqon7HdJ2NymKo9o1bXrm46UZD' `
  -H 'Content-Type: application/json' `
  -d '{ \"messaging_product\": \"whatsapp\", \"to\": \"8801590084779\", \"type\": \"template\", \"template\": { \"name\": \"hello_world\", \"language\": { \"code\": \"en_US\" } } }'



<?php

use GuzzleHttp\Client;

$client = new Client();

// Prepare the data payload
$data = [
    'messaging_product' => 'whatsapp',
    'to' => '8801590084779',
    'type' => 'template',
    'template' => [
        'name' => 'hello_world',
        'language' => [
            'code' => 'en_US',
        ],
    ],
];

// Set headers
$headers = [
    'Authorization' => 'Bearer EAARxbr8T92UBOwLvbigoC7jRuK8w99lSskTXgiIZBmsvOvGZBRIbquSRrh8BgkUGwM1uXcWzt55ZAyJR9BXZC3YPMWGV2ULppcxHtJ0ZAL0MogJ4c6ODkkBCoiZCukNBgZB7uv695ByxZC6nCGPGfz2l0nzbPNaSLDEZC4qpp9EbVQOF4mcJexZATxfIBQWx959RtnIFVjO0AGRepxdtve8GtZAqon7HdJ2NymKo9o1bXrm46UZD',
    'Content-Type' => 'application/json',
];

try {
    // Send the POST request
    $response = $client->post('https://graph.facebook.com/v21.0/504081139451136/messages', [
        'json' => $data,
        'headers' => $headers,
    ]);

    // Get response body
    echo $response->getBody();

} catch (\GuzzleHttp\Exception\RequestException $e) {
    echo 'Error: ' . $e->getMessage();
}
