<?php

namespace App\Http\Controllers\courier\pathao;
use App\Http\Controllers\Controller;

use GuzzleHttp\Client;

class PathaoAPIService
{
    protected $base_url;
    protected $client_id;
    protected $client_secret;
    protected $client_email;
    protected $client_password;
    protected $grant_type;

    public function __construct()
    {
        $this->base_url = config('services.pathao.base_url');
        $this->client_id = config('services.pathao.client_id');
        $this->client_secret = config('services.pathao.client_secret');
        $this->client_email = config('services.pathao.client_email');
        $this->client_password = config('services.pathao.client_password');
        $this->grant_type = config('services.pathao.grant_type');
    }

    public function getAccessToken()
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/issue-token
        $response = $client->post("$this->base_url/aladdin/api/v1/issue-token", [
            'json' => [
                'client_id' => $this->client_id,
                'client_secret' => $this->client_secret,
                'username' => $this->client_email,
                'password' => $this->client_password,
                'grant_type' => $this->grant_type,
            ],
            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true)['access_token'];
    }

    public function createStore($accessToken, $storeData)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/stores
        $response = $client->post("$this->base_url/aladdin/api/v1/stores", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'json' => $storeData,

            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true);
    }

    public function getStores($accessToken)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/stores
        $response = $client->get("$this->base_url/aladdin/api/v1/stores", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true);
    }


    public function getCityList($accessToken)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/countries/1/city-list
        $response = $client->get("$this->base_url/aladdin/api/v1/countries/1/city-list", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true)['data']['data'];
    }

    public function getZoneList($accessToken, $cityId)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/cities/{city_id}/zone-list
        $response = $client->get("$this->base_url/aladdin/api/v1/cities/$cityId/zone-list", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true)['data']['data'];
    }

    public function getAreaList($accessToken, $zoneId)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/zones/{zone_id}/area-list
        $response = $client->get("$this->base_url/aladdin/api/v1/zones/$zoneId/area-list", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true)['data']['data'];
    }

    public function getPrice($accessToken, $bodyData)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/merchant/price-plan
        $response = $client->post("$this->base_url/aladdin/api/v1/merchant/price-plan", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            // 'json' => [
            //     'store_id' => 130895,
            //     'item_type' => 2,
            //     'delivery_type' => 48,
            //     'item_weight' => 0.5,
            //     'recipient_city' => 1,
            //     'recipient_zone' => 248,
            //     'recipient_area' => 17920,
            // ],
            'json' => $bodyData,
            'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true);
    }

    public function createOrder($accessToken, $orderData)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/orders
        $response = $client->post("$this->base_url/aladdin/api/v1/orders", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'json' => $orderData,

             'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true);
    }

    public function getInfo($accessToken, $consignment_id)
    {
        $client = new Client();
        // <base_url>/aladdin/api/v1/orders
        $response = $client->get("$this->base_url/aladdin/api/v1/orders/$consignment_id/info", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ],
            'json' => $consignment_id,

             'verify' => false, // Disable SSL verification
        ]);

        return json_decode($response->getBody(), true);
    }
}
