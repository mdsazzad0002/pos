<?php

namespace App\Http\Controllers;

use App\Models\brand;
use App\Models\category;
use App\Models\payment\PaymentCredential;
use App\Models\product;
use Illuminate\Http\Request;

class PosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $paymentCredentials = PaymentCredential::where('status', 1)->select('id','provider')->get();
        $categories = category::where('status', 1)->get();
        $brands = brand::where('status', 1)->get();
        $products = product::where('status', 1)->where('for_selling', 1)->orderBy('views')->limit(40)->get();
        return view('admin.pos.index', compact('categories','brands', 'products','paymentCredentials'));
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
    public function show(string $id)
    {
        //
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
