<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\User;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
    public function store(Request $request, User $user)
    {

        $contact = '';
        // dd($request);

        foreach ($request->contact_info as $key => $items) {
            if(isset($items->contact_id[$key])){
                $contact =  Contact::find($items->contact_id[$key]);
                if(!$contact){
                    $contact = new Contact();
                }
            }else{
                $contact =  new Contact();
            }

            $contact->contact = $request->contact_info[$key];
            $contact->source = $request->source[$key];

            $contact->contactable_type = User::class;

            $contact->contactable_id = $user->id;
            $contact->creator = $user->id;
            $contact->updater = $user->id;
 
            $contact->save();

        }


        return json_encode([
            'title' => 'Success',
            'type' => 'success',
            'refresh' => 'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Contact $contact)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Contact $contact)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Contact $contact)
    {
        //
    }
}
