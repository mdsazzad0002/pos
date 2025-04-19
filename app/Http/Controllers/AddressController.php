<?php

namespace App\Http\Controllers;

use App\Models\Address as address;
use App\Models\User;
use Illuminate\Http\Request;

class AddressController extends Controller
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
    public function store(Request $request, $class = null, $class_id = null)
    {
       
    
        return $this->update($request, null, $class, $class_id);

    }

    /**
     * Display the specified resource.
     */
    public function show(address $address)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(address $address)
    {
        //
    }

   /**
    * Update the specified resource in storage.
    * @param  \Illuminate\Http\Request  $request
    * @param  \App\Models\Address  $address
    * @param  string|null  $class
    * @param  int|null  $class_id
    * @return \Illuminate\Http\Response
    * @throws \Illuminate\Validation\ValidationException
    */
    public function update(Request $request,  $address = null, $class = null, $class_id = null)
    {
       
     
        if($address){
            $address = address::find($address);
            if(!$address){
                $address = new address();
            }
        }else{
            $address = new address();
        }
       
        if($class){
            $address->addressable_type = $class;
        }

        if($class_id){
            $address->addressable_id = $class_id;
        }
     
        foreach($request->address as $key => $items){
                $address->$key = $items;
        }
              
        $address->save();

        if($request->ajax()){
            return response()->json([
                'title' => 'Success',
                'type' => 'success',
                'refresh' => 'true',
            ]);
        }else{
            return back();
        }

        
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(address $address)
    {
        if($address){
            $address->delete();
        }
        return back();
    }
}
