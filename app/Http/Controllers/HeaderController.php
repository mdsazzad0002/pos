<?php

namespace App\Http\Controllers;

use App\Models\header;
use App\Models\Page;
use Illuminate\Http\Request;


class HeaderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pages = Page::get();


        return view('admin.protfilio_theme.menu_builder.index', compact(  'pages'));
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

            if($request->has('pageid')){
                $page = Page::find($request->pageid);
                $header->name =  $page->name;
                $header->slug =  $page->slug;
                $header->position =  'center';
                $header->page_id =  $request->pageid;
                $header->is_page =  1;
                $header->is_text =  0;

            }elseif($request->has('text_item')){
                $header->name =  $request->name;
                $header->slug =  $request->url;
                $header->position =  'right';
                $header->page_id =  0;
                $header->is_page =  0;
                $header->is_text =  1;


            }elseif($request->has('category_menu')){
                $header->name = $request->category_menu;
                $header->slug =  '#';
                $header->position =  'left';
                $header->page_id =  0;
                $header->is_page =  0;
                $header->is_text =  0;

            }

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
            $header_item->save();
        }
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
