<?php

namespace App\Http\Controllers;

use App\Models\unit;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class UnitController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            $query = unit::with('subitems')->get();
            return DataTables::of( $query)

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.unit.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.unit.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.unit.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('unit edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('unit delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.unit.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $units = unit::pluck('name', 'id')->toArray();
        return view('admin.unit.partials.create', compact('units'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $unit = new unit;
        $unit->name = $request->name;
        $unit->sort_name = $request->sort_name;
        $unit->decimal = $request->decimal;
        if($request->has('unit_checked')){
            $unit->sub_items = $request->sub_items;
            $unit->sub_items_id = $request->sub_items_id;
        }

        $unit->creator = auth()->user()->id ?? 0;

        $unit->save();


        return json_encode([
            'title'=>'Successfully Added Unit',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(unit $unit)
    {
        return view('admin.unit.partials.view', compact('unit'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(unit $unit)
    {
        $units = unit::pluck('name', 'id')->toArray();
        return view('admin.unit.partials.edit', compact('unit', 'units'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, unit $unit)
    {
        $unit->name = $request->name;
        $unit->sort_name = $request->sort_name;
        $unit->decimal = $request->decimal;
        if($request->has('unit_checked')){
            $unit->sub_items = $request->sub_items;
            $unit->sub_items_id = $request->sub_items_id;
        }else{
            $unit->sub_items = 0;
            $unit->sub_items_id = 0;
        }

        $unit->creator = auth()->user()->id ?? 0;
        $unit->save();


        return json_encode([
            'title'=>'Successfully Updated Unit',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(unit $unit){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(unit $unit)
    {
        $unit->delete();

        return json_encode([
            'title'=>'Successfully Deleted Unit',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function getUnit(Request $request)
    {
        $data_result = unit::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->limit(10)->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
