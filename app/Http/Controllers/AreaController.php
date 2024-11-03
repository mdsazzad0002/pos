<?php

namespace App\Http\Controllers;

use App\Models\area;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(area::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.area.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.area.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.area.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('area edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('area delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.area.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.area.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required']);
        $area = new area;
        $area->name = $request->name;;
        $area->slug = create_slug($request->name, 'area', 'slug');

        $area->creator = auth()->user()->id ?? 0;
        $area->save();


        return json_encode([
            'title'=>'Successfully  Created area',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(area $area)
    {
        return view('admin.area.partials.view', compact('area'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(area $area)
    {
        return view('admin.area.partials.edit', compact('area'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, area $area)
    {
        $area->name = $request->name;
        $area->slug = create_slug($request->name, 'area', 'slug');
        $area->creator = auth()->user()->id ?? 0;
        $area->save();


        return json_encode([
            'title'=>'Successfully  Updated area',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(area $area){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(area $area)
    {

        $area->delete();

        return json_encode([
            'title'=>'Successfully  Deleted area',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getAreas(Request $request)
    {
        $data_result = area::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
