<?php

namespace App\Http\Controllers\mail;

use Illuminate\Http\Request;
use App\Models\mail\MailTemplate;
use App\Http\Controllers\Controller;

class MailTemplateController extends Controller
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(MailTemplate $mailTemplate)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(MailTemplate $mailTemplate)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, MailTemplate $mailTemplate)
    {
        $mailTemplate->template = $request->description;
        $mailTemplate->save(); 
        
        return json_encode([
            'title'=>'Successfully  updated',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(MailTemplate $mailTemplate)
    {
        //
    }
}
