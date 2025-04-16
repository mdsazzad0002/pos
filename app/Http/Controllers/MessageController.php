<?php

namespace App\Http\Controllers;

use App\Models\message;
use App\Models\Participant;
use App\Models\Thread;
use App\Models\User;
use Illuminate\Http\Request;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {


        return view('admin.message.index');
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
        $message->user_id =$request->sender_id;
        $message->thread_id =$request->message_id;
        $message->body =$request->message;
        $message->message_type = 1;

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
        if($request->has('last_id')){

             $thread_id = Participant::where('user_id', auth()->user()->id)->pluck('thread_id')->toArray();
            $message = message::whereIn('thread_id', $thread_id)->where('id','>', $request->last_id)->get();

            return json_encode($message);
        }else{
            $threads_message =   message::where('thread_id', $request->thread_id)->get();
            return json_encode($threads_message);

        }
    }




    public function thread_users(Request $request){
        $threads = Thread::orderBy('id','desc')->limit(30)->get();

        return json_encode($threads);
    }


    public function thread_user_filter(Request $request){
        $users = User::where('name', 'LIKE', '%' . $request->inpute . '%')->whereNot('id', auth()->user()->id)->get();
        $return_data = [
            'users' => $users
        ];
        return json_encode($return_data);
    }


    public function thread_create(Request $request){

        
        $user_type = $request->key == 'users' ? 1 : 2;
        $participant =  Participant::where('user_id', '==', auth()->user()->id)->where('user_id', $request->items)->where('user_type', $user_type)->first();
        if($participant){
           $thread = Thread::find($participant->thread_id);
           return ($thread);
        }


        // Otherwise Create new thread & participant
        $thread_create = new Thread();
        $thread_create->subject = $request->subject ?? '';
        $thread_create->type = $request->type ?? 1;
        $thread_create->status = $request->status ?? 1;
        $thread_create->save();

        $participant =  new Participant;
        $participant->thread_id = $thread_create->id;
        $participant->user_type = $request->key == 'users' ? 1 : 2;
        $participant->user_id = $request->items;
        $participant->save();

        $participant =  new Participant;
        $participant->thread_id = $thread_create->id;
        $participant->user_type =  1;
        $participant->user_id = auth()->user()->id;
        $participant->save();


        return ($thread_create);
    }
}
