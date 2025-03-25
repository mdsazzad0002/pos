<?php

namespace App\Http\Controllers;

use App\Models\WhyChooseUs;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class WhyChooseUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(WhyChooseUs::query())
              
                ->addColumn('action', function ($row) {
                    $return_data = '';
                    if(auth()->user()->can('whychooseus edit')==true){
                        $edit_route = route('admin.whychooseus.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('whychooseus delete') == true){
                        $delete_route = route('admin.whychooseus.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('whychooseus read') == true){
                        $view_route = route('admin.whychooseus.show', $row->id);
                        $view_button = " <button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>";

                        $return_data .= $view_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.whychooseus.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $whychooseus = null;
        return view('admin.whychooseus.partials.create_edit', compact('whychooseus'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $whychooseus = new WhyChooseUs;
        $whychooseus->title = $request->title;
        $whychooseus->icon = $request->icon;
        $whychooseus->status = $request->status;
        $whychooseus->creator = auth()->user()->id ?? 0;
        $whychooseus->save();


        return json_encode([
            'title'=>'Successfully  Created Why Choose Us',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(WhyChooseUs $whychooseu)
    {
        $whychooseus = $whychooseu;
        
        return view('admin.whychooseus.partials.view', compact('whychooseus'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(WhyChooseUs $whychooseu)
    {
        $whychooseus = $whychooseu;
        return view('admin.whychooseus.partials.create_edit', compact('whychooseus'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, WhyChooseUs $whychooseu)
    {
        $whychooseus = $whychooseu;
        $whychooseus->title = $request->title;
        $whychooseus->icon = $request->icon;
        $whychooseus->status = $request->status;
        $whychooseus->creator = auth()->user()->id ?? 0;
        $whychooseus->save();



        return json_encode([
            'title'=>'Successfully  Updated whychooseus',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(WhyChooseUs $whychooseu){

        $whychooseus = $whychooseu;
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WhyChooseUs $whychooseu)
    {

        $whychooseus = $whychooseu;
        $whychooseus->delete();

        return json_encode([
            'title'=>'Successfully  Deleted whychooseus',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }




}
