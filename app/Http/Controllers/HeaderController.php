<?php

namespace App\Http\Controllers;

use App\Models\header;
use App\Models\Page;
use App\Models\Category as category;
use App\Models\SubCategory ;
use Illuminate\Http\Request;
use App\Models\brand;
use App\Models\Service;

class HeaderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pages = Page::get();
        $category = category::get();
        $subcategory = SubCategory::get();
        $brand = brand::get();
        $service = Service::get();


        return view('admin.protfilio_theme.menu_builder.index', compact(  'pages', 'category', 'subcategory', 'brand', 'service'));
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
        if($request->has('type') && $request->type == 'new'){
            $header = new header;
            $header->name =  $request->name;
            $header->slug =  $request->slug;
            $header->position =  $request->position;
            $header->preset =  $request->preset;
            $header->key_name = $request->name;

            $header->order =  0;
            $header->save();

        }elseif($request->has('orderid')){
            foreach($request->orderid as $orderSerial =>  $header_id){

                $header_data = header::find( $header_id );
                $header_data->order = $orderSerial;
                $header_data->save();
            }
            return $request->orderid;
        }elseif($request->has('status_id')){
            $header_data = header::find( $request->status_id );
            $header_data->status = $request->status_change;
            $header_data->save();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(header $header)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(header $header_item)
    {
        return view('admin.protfilio_theme.menu_builder.partials.edit', compact('header_item'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, header $header_item)
    {
        if($header_item){
            $header_item->name = $request->name;
            $header_item->position = $request->position;
            $header_item->slug = $request->slug;
            $header_item->save();
        }

        return json_encode(
            [
                'type' => 'success',
                'title' => 'Header Updated Successfully',

            ]
        );
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $header = header::find($request->header_id);
        if($header){
            $header->delete();
        }
    }
    public function view()
    {
        $headers = header::orderBy('order', 'asc')->get();
        return view('admin.protfilio_theme.menu_builder.partials.list_header_items', compact('headers'));
    }
}
