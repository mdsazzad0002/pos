<?php

namespace App\Http\Controllers;

use App\Models\SubScriber;
use Illuminate\Http\Request;
use DataTables;

class SubScriberController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (request()->ajax()) {
            return DataTables::make(SubScriber::query())
                ->addColumn('image', function ($row) {
                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";
                })
              

                ->addColumn('action', function ($row) {
                    $return_data = '';
                    if(auth()->user()->can('sub-scribers edit')==true){
                        $edit_route = route('admin.sub-scribers.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('sub-scribers delete') == true){
                        $delete_route = route('admin.sub-scribers.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('sub-scribers read') == true){
                        $view_route = route('admin.sub-scribers.show', $row->id);
                        $view_button = " <button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>";

                        $return_data .= $view_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'image', 'background'])
                ->make(true);
        }
        return view('admin.sub-scribers.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $subScriber = null;
        return view('admin.sub-scribers.partials.create_edit', compact('subScriber'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'nullable',
            'email' => 'required|email| unique:sub_scribers',
        ]);

        $subScriber = new SubScriber;
        $subScriber->name = $request->name ?? '';
        $subScriber->email = $request->email;
       
        if($request->has('verified')){
            $subScriber->verified = $request->verified;;
        }

        $subScriber->token = rand(64, 15000);
        $subScriber->save();



        return json_encode([
            'title'=>'Successfully  Created SubScriber',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(SubScriber $subScriber)
    {
        return view('admin.sub-scribers.partials.view', compact('subScriber'));

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SubScriber $subScriber)
    {
        return view('admin.sub-scribers.partials.create_edit', compact('subScriber'));
    }

    public function delete(SubScriber $subScriber){
        return view('layout.admin.modal_content_delete');
    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SubScriber $subScriber)
    {
        $request->validate([
            'name' => 'nullable',
            'email' => 'required|email | unique:sub_scribers,email,'.$subScriber->id,
        ]);

        $subScriber->name = $request->name ?? '';
        $subScriber->email = $request->email;
        if($request->has('verified')){
            $subScriber->verified = $request->verified;
        }
        $subScriber->save();

        return json_encode([
            'title'=>'Successfully  Updated SubScriber',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SubScriber $subScriber)
    {
        if(auth()->user()->can('sub-scribers delete') == false){
            return json_encode([
                'title'=>'You are not allowed to delete SubScriber',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }

        if($subScriber){
            $subScriber->delete();
            return json_encode([
                'title'=>'Successfully  Deleted SubScriber',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }
    }
}
