<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use Illuminate\Http\Request;
use App\Models\VarinatSuggession;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

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
        $data_result = VarinatSuggession::where(function ($query) use ($request) {
            if ($request->has('q')) {
                $query->where('title', 'LIKE', '%' . $request->q . '%');
            }
        })->get()->filter(function ($variant) {
            // if (empty($variant->permission)) {
            //     return true;
            // }
            
            // if(auth()->user()->can($variant->permission ?? '') == true){
            //     return true;
            // }
        
            // Check if the user has the specific permission
           return empty($variant->permission) ? true : Auth::user()->can($variant->permission ?? '');
        });

        $result_make = [];
        $result_make['items']=$data_result;

        return response()->json($result_make);

    }
}
