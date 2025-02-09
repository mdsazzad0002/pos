<?php

namespace App\Http\Controllers;

use App\Models\address;
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
    public function store(Request $request, User $user = null)
    {
        $address = '';
        // dd($request);

        foreach ($request->village as $key => $items) {
            if(isset($items->address_id[$key])){
                $address =  address::find($items->address_id[$key]);
                if(!$address){
                    $address = new address();
                }
            }else{
                $address =  new address();
            }

            $address->address_type = $request->address_type[$key];
            $address->village = $request->village[$key];
            $address->post = $request->post[$key];
            $address->district = $request->district[$key];
            $address->stay_time = $request->staying[$key];
            $address->addressable_type = User::class;
            $address->addressable_id = $user->id;
            $address->creator = $user->id;
            $address->updater = $user->id;
            $address->country =  $request->country[$key];
            $address->save();

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
     */
    public function update(Request $request, address $address)
    {
      $request =  $request->except(['_token', '_method']);
        // return $request;

        if($address){
            foreach($request as  $key => $value){
                $address->$key = $value ?? '';
            }
            $address->save();
        }
        return back();
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
