<?php

namespace App\Http\Controllers;

use App\Models\ProductStyle;
use Illuminate\Http\Request;

class ProductStyleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.product.product_style');
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
    public function show(ProductStyle $productStyle)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ProductStyle $productStyle)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ProductStyle $productStyle)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ProductStyle $productStyle)
    {
        //
    }
}
