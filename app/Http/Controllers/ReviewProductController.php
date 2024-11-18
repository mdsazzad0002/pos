<?php

namespace App\Http\Controllers;

use App\Models\reviewProduct;
use Illuminate\Http\Request;

class ReviewProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return  reviewProduct::paginate(10);
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

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'message' => 'required',
            'product_id' => 'required',
        ]);

        $product_review = new reviewProduct();
        $product_review->name = $request->name;
        $product_review->email = $request->email;
        $product_review->comment = $request->message;
        $product_review->rating = $request->rating;
        $product_review->product_id = $request->product_id;
        $product_review->creator = auth('customer')->user()->id ?? 0;
        $product_review->save();


        $data = new \stdClass();
        $data->success = 'successfully send review';
        return json_encode($data);
    }

    /**
     * Display the specified resource.
     */
    public function show(reviewProduct $reviewProduct)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(reviewProduct $reviewProduct)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, reviewProduct $reviewProduct)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(reviewProduct $reviewProduct)
    {
        //
    }
}
