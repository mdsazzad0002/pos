<?php

namespace App\Http\Controllers;

use App\Models\FooterStyle;
use Illuminate\Http\Request;

class FooterStyleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $footer_styles = FooterStyle::all();
        return view('admin.protfilio_theme.footerstyle.index');
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
    public function show(FooterStyle $footerStyle)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(FooterStyle $footerStyle)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, FooterStyle $footerStyle)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(FooterStyle $footerStyle)
    {
        //
    }
}
