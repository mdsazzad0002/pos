<?php

namespace App\Http\Controllers;

use App\Models\Achivement;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class AchivementController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(Achivement::query())
              
                ->addColumn('action', function ($row) {
                    $return_data = '';
                    if(auth()->user()->can('achivement edit')==true){
                        $edit_route = route('admin.achivement.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('achivement delete') == true){
                        $delete_route = route('admin.achivement.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('achivement read') == true){
                        $view_route = route('admin.achivement.show', $row->id);
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
        return view('admin.achivement.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $achivement = null;
        return view('admin.achivement.partials.create_edit', compact('achivement'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $achivement = new Achivement;
        $achivement->counter = $request->counter;
        $achivement->title = $request->title;
        $achivement->sub_title = $request->sub_title;
        $achivement->icon = $request->icon;
        $achivement->status = $request->status;
        $achivement->creator = auth()->user()->id ?? 0;
        $achivement->save();


        return json_encode([
            'title'=>'Successfully  Created achivement',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(Achivement $achivement)
    {
        $achivement = $achivement;
        
        return view('admin.achivement.partials.view', compact('achivement'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(achivement $achivement)
    {
        $achivement = $achivement;
        return view('admin.achivement.partials.create_edit', compact('achivement'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Achivement $achivement)
    {
        $achivement = $achivement;
        $achivement->counter = $request->counter;
        $achivement->title = $request->title;
        $achivement->sub_title = $request->sub_title;
        $achivement->icon = $request->icon;
        $achivement->status = $request->status;
        $achivement->creator = auth()->user()->id ?? 0;
        $achivement->save();



        return json_encode([
            'title'=>'Successfully  Updated achivement',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(Achivement $achivement){

        $achivement = $achivement;
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Achivement $achivement)
    {

        $achivement = $achivement;
        $achivement->delete();

        return json_encode([
            'title'=>'Successfully  Deleted achivement',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }




}
