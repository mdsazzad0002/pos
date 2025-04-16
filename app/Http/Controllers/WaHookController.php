<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WaContact;
use App\Models\WaMessage;


class WaHookController extends Controller
{
  public function handleStore(\Illuminate\Http\Request $request)
{
    $data = $request->all();

    \Log::info('Webhook received:', $data);

    if (isset($data['entry'])) {
        foreach ($data['entry'] as $entry) {
            $change = $entry['changes'][0]['value'] ?? null;
            if ($change) {
                $this->message_store($change);
            }
        }
    } elseif (isset($data['value'])) {
        $this->message_store($data['value']);
    } else {
        return response()->json(['error' => 'Invalid data structure'], 400);
    }

    return response()->json(['status' => 'stored']);
}

public function message_store($change)
{
    // Store incoming message and contact
    if (isset($change['contacts']) && isset($change['messages'])) {
        $contactData = $change['contacts'][0];
        $messageData = $change['messages'][0];

        $contact = WaContact::updateOrCreate(
            ['wa_id' => $contactData['wa_id']],
            ['name' => $contactData['profile']['name'] ?? null]
        );

        WaMessage::updateOrCreate(
            ['message_id' => $messageData['id']],
            [
                'wa_contact_id' => $contact->id,
                'body' => $messageData['text']['body'] ?? null,
                'type' => $messageData['type'],
                'received_at' => \Carbon\Carbon::createFromTimestamp($messageData['timestamp']),
                'status' => 'received', // default status
            ]
        );
    }

    // Store message status (delivered, read, etc.)
    if (isset($change['statuses'])) {
        foreach ($change['statuses'] as $statusData) {
            WaMessage::where('message_id', $statusData['id'])->update([
                'status' => $statusData['status'],
                'status_updated_at' => \Carbon\Carbon::createFromTimestamp($statusData['timestamp']),
            ]);
        }
    }
}


    public function handleConnect(Request $request){
       
        
        $verify_token = settings('verify_token',36); // same as you set in Meta dashboard

        if ($request->input('hub_verify_token') === $verify_token) {
            \Log::info($request->input('hub_verify_token'));
            \Log::info($request->input('hub_challenge'));
            
            return response($request->hub_challenge, 200);
            
        }
    
        return response('Invalid verify token', 403);
    }
}
