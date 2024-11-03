<?php

namespace App\Http\Controllers;

use App\Models\Discount as discount;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class discountController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(discount::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.discount.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.discount.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.discount.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('discount edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('discount delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.discount.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.discount.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required', 'amount'=>'required']);
        $discount = new discount();
        $discount->name = $request->name;
        $discount->type = $request->type;
        $discount->amount = $request->amount;


        $discount->creator = auth()->user()->id ?? 0;
        $discount->save();


        return json_encode([
            'title'=>'Successfully  Created discount',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(discount $discount)
    {
        return view('admin.discount.partials.view', compact('discount'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(discount $discount)
    {
        return view('admin.discount.partials.edit', compact('discount'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, discount $discount)
    {
        $request->validate(['name' => 'required', 'amount'=>'required']);

        
        $discount->name = $request->name;
        $discount->type = $request->type;
        $discount->amount = $request->amount;


        $discount->creator = auth()->user()->id ?? 0;
        $discount->save();


        return json_encode([
            'title'=>'Successfully  Updated discount',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(discount $discount){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(discount $discount)
    {

        $discount->delete();

        return json_encode([
            'title'=>'Successfully  Deleted discount',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getdiscount(Request $request)
    {
        $data_result = discount::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
