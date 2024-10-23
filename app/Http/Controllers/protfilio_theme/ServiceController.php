<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\features;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $services = Service::where('status', 1)->get();
        $features = features::where('status', 1)->get();
        return view('frontend.protfilio_theme.service.index', compact('services', 'features'));
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
    public function show($slug)
    {

        if($slug != null && $slug){
            $service =  Service::where('status', 1)->where('slug', $slug)->first();
            return view('frontend.protfilio_theme.service_view.index', compact('service'));
        }else{
            abort('404');
        }

    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
