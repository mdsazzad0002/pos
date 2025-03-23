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

        }elseif($request->has('order')){
            $array_data = [];

            foreach ($request->order as $orderSerial => $header_info) {
                if (!in_array($header_info['id'], $array_data)) {
                    $array_data[] = $header_info['id'];
                    $header_data = header::find($header_info['id']);

                    // Only update if there's a change
                    if ($header_data->order != $orderSerial || $header_data->parents != 0) {
                        $header_data->order = $orderSerial;
                        $header_data->parents = 0;
                        $header_data->save();
                    }
                }

                if (isset($header_info['children'])) {
                    foreach ($header_info['children'] as $serial => $child) {
                        if (!in_array($child['id'], $array_data)) {
                            $array_data[] = $child['id'];
                            $child_data = header::find($child['id']);

                            if ($child_data->order != $serial || $child_data->parents != $header_info['id']) {
                                $child_data->order = $serial;
                                $child_data->parents = $header_info['id'];
                                $child_data->save();
                            }
                        }

                        if (isset($child['children'])) {
                            foreach ($child['children'] as $s => $child2) {
                                if (!in_array($child2['id'], $array_data)) {
                                    $array_data[] = $child2['id'];
                                    $child2_data = header::find($child2['id']);

                                    if ($child2_data->order != $s || $child2_data->parents != $child['id']) {
                                        $child2_data->order = $s;
                                        $child2_data->parents = $child['id'];
                                        $child2_data->save();
                                    }
                                }
                            }
                        }
                    }
                }
            }

            return response()->json([
                'success' => true,
                'array_data' => $array_data
            ]);

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
        $headers = header::orderBy('order', 'asc')->where('parents', 0)->orWhere('parents', null)->get();
        return view('admin.protfilio_theme.menu_builder.partials.list_header_items', compact('headers'));
    }
}
