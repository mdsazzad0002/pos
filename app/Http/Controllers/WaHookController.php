<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\WaService;

class WaHookController extends Controller
{
    public function handle(Request $request)
    {
        // Handle verification from Meta (GET request)
        if ($request->isMethod('get')) {
            $verify_token = 'whatsapp-webhook'; // set this same token in Meta Webhook config
            $mode = $request->hub_mode;
            $token = $request->hub_verify_token;
            $challenge = $request->hub_challenge;

            if ($mode === 'subscribe' && $token === $verify_token) {
                return response($challenge, 200);
            }

            return response('Invalid verify token', 403);
        }

        // Handle incoming message (POST request)
        $data = $request->all();

        Log::info('Incoming WhatsApp Webhook:', $data);

        // Extract message text
        if (isset($data['entry'][0]['changes'][0]['value']['messages'][0])) {
            $message = $data['entry'][0]['changes'][0]['value']['messages'][0];
            $from = $message['from']; // phone number
            $text = $message['text']['body'] ?? '';

            Log::info("Message from {$from}: {$text}");
        }

        return response()->json(['status' => 'received']);
    }
}
