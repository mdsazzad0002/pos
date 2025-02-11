<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\WholeSaleProductType;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class WholeSaleProductTypeController extends Controller
{
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(WholeSaleProductType::query())
                ->addColumn('action', function ($row) {
                    $return_data = '';
                    // if(auth()->user()->can('wholeSeleProduct edit')==true){
                        $edit_route = route('admin.whole.sele.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
                        $return_data = $edit_button. '&nbsp;';
                    // }

                    // if(auth()->user()->can('whole.sele delete') == true){
                        $delete_route = route('admin.whole.sele.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    // }

                    return $return_data;


                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.wholeSeleProduct.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.wholeSeleProduct.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required']);
        $wholeSeleProduct = new WholeSaleProductType;
        $wholeSeleProduct->name = $request->name;;
        $wholeSeleProduct->status = $request->status;
        $wholeSeleProduct->save();


        return json_encode([
            'title'=>'Successfully  Created wholeSeleProduct',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(WholeSaleProductType $wholeSaleProductType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(WholeSaleProductType $wholeSaleProductType)
    {
        return view('admin.wholeSeleProduct.partials.edit', compact('wholeSaleProductType'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, WholeSaleProductType $wholeSaleProductType)
    {
        $wholeSaleProductType->name = $request->name;
        $wholeSaleProductType->status = $request->status;
        $wholeSaleProductType->save();


        return json_encode([
            'title'=>'Successfully  Updated wholeSeleProduct',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(WholeSaleProductType $wholeSaleProductType){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(wholeSaleProductType $wholeSaleProductType)
    {

        $wholeSaleProductType->delete();

        return json_encode([
            'title'=>'Successfully  Deleted wholeSeleProduct',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }
}
