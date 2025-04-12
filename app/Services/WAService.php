<?php 
namespace App\Services;

use Illuminate\Support\Facades\Http;

class WAService
{
    protected $token;
    protected $phoneNumberId;

    public function __construct()
    {
        $this->token =  12;
        $this->phoneNumberId = 12;
        $this->appId = '504081139451136';
        $this->appSecret = '5e6ade3324158cce650b2505c54c88c6';
        $this->shortLivedToken = 'EAARZClfTU0DsBOzZC1RRv4u8UhMTFs6K81x40wGMrLA1RMcEaagPDQnLfjtEM79hZAz3AwrRvCfyG5ZAGoe5kjMehiLs4MEkcVZCJWqTFG1HEKZCJ16dWqyWM09ZAtXZAq7e5zd96wkFzlfThtFopZAP6ZBCrCTy5LYATTaJPlQZC6oJwB7NzIbbcoESe2I';
    }

    public function sendTextMessage($to, $message)
    {
        // $url = "https://graph.facebook.com/v18.0/{$this->phoneNumberId}/messages";

        $response = Http::withoutVerifying()->withHeaders([
            'Authorization' => 'Bearer '.$this->shortLivedToken,

        ])->post('https://graph.facebook.com/v22.0/'.$this->appId.'/messages', [
            'messaging_product' => 'whatsapp',
            'to' => ''.$to.'',
            'type' => 'template',
            'template' => [
                'name' => 'plain_text',
                'language' => [
                    'code' => 'en_US',
                ],
                'components' => [
                    [
                        'type' => 'body',
                        'parameters' => [
                            [
                                'type' => 'text',
                                'text' => $message,
                            ],
                        ],
                    ],
                ],
            ],
        ]);

        dd($response->json());
    }

    public function getToken(){
        dd($this->appId, $this->appSecret, $this->shortLivedToken);

        $response = Http::withoutVerifying()->get('https://graph.facebook.com/v18.0/oauth/access_token', [
            'grant_type' => 'fb_exchange_token',
            'client_id' => $this->appId,
            'client_secret' => $this->appSecret,
            'fb_exchange_token' => $this->shortLivedToken,
        ]);



        dd($response->json());
    }

}
