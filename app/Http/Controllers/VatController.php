<?php

namespace App\Http\Controllers;

use App\Models\Vat as vat;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class vatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(vat::query())

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.vat.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.vat.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.vat.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('vat edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('vat delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.vat.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.vat.partials.create_edit');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request->validate(['name' => 'required']);
        $vat = new vat;

        $vat->name = $request->name;
        $vat->amount = $request->amount;
        $vat->status = $request->status ?? 1;


        $vat->creator = auth()->user()->id ?? 0;
        $vat->save();


        return json_encode([
            'title'=>'Successfully  Created vat',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(vat $vat)
    {
        return view('admin.vat.partials.view', compact('vat'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(vat $vat)
    {
        
        return view('admin.vat.partials.create_edit', compact('vat'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, vat $vat)
    {
        $vat->name = $request->name;
        $vat->amount = $request->amount;
        $vat->status = $request->status ?? 1;
        $vat->creator = auth()->user()->id ?? 0;
        $vat->save();


        return json_encode([
            'title'=>'Successfully  Updated vat',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(vat $vat){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(vat $vat)
    {

        $vat->delete();

        return json_encode([
            'title'=>'Successfully  Deleted vat',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getvats(Request $request)
    {
        $data_result = vat::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
