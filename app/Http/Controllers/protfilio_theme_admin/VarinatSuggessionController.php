<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use Illuminate\Http\Request;
use App\Models\VarinatSuggession;
use App\Http\Controllers\Controller;

class VarinatSuggessionController extends Controller
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
    public function show(VarinatSuggession $varinatSuggession)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(VarinatSuggession $varinatSuggession)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, VarinatSuggession $varinatSuggession)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(VarinatSuggession $varinatSuggession)
    {
        //
    }

    public function VarinatSuggession(Request $request)
    {
        $data_result = VarinatSuggession::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('title', 'LIKE', '%' . $request->q . '%');
            }
        })->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
