<?php

namespace App\Http\Controllers;

use App\Models\message;
use App\Models\User;
use Illuminate\Http\Request;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $users = User::get();
        return view('admin.message.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'message' =>'required'
        ]);

        $message = new message;
        $message->sender_id =$request->sender_id;
        $message->user_type =$request->user_type;
        $message->receiver_id =$request->message_id;
        $message->message =$request->message;
        $message->message_type = 1;
        $message->is_group = 0;
        $message->save();

        return 'success';

    }

    /**
     * Display the specified resource.
     */
    public function show(message $message)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(message $message)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, message $message)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(message $message)
    {
        //
    }


    public function get_message(Request $request){
       return  message::
    //    where(['sender_id' => $request->sender_id, 'receiver_id' => $request->message_id])
       where('id', '>', $request->current_message_id)
       ->get();

    }
}
