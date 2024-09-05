<?php

namespace App\Http\Controllers;

use App\Models\upload;
use Illuminate\Http\Request;

class UploadController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {

        $upload_data = upload::where(function($query) use ($request){
            if($request->has('id')){
                $query->where('id', '<', "$request->id");
            }
        })->orderBy('id','desc')->limit(50)->pluck('name', 'id')->toArray();
        return json_encode($upload_data);
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
          //return $request;
          $array_key_file = [];

          foreach($request->file('files') as $key => $items){
              $array_key_file[] = uploads($items);
          }

          $upload_data = upload::whereIn('id', $array_key_file)->pluck('name', 'id')->toArray();
          return json_encode($upload_data);
    }

    /**
     * Display the specified resource.
     */
    public function show(upload $upload)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(upload $upload)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, upload $upload)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(upload $upload)
    {
        //
    }
}
