<?php

namespace App\Http\Controllers;

use App\Models\purchase;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Models\product;

class PurchaseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(purchase::query())

                ->addColumn('name', function ($row) {
                    $view_route = route('admin.purchase.show', $row->id);
                    return $row->product->name;

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.purchase.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('image', function ($row) {
                   return  $view_route = "<img style='max-width:100px' src='".$row->product->image_url."'/>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.purchase.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.purchase.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Change Status</button>";

                    $return_data = '';
                    if(auth()->user()->can('purchase edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('purchase delete') == true){
                        if($row->status == 2){
                            $return_data .= $delete_button;
                        }
                    }

                    return $return_data;


                })
                ->rawColumns(['name','image','action', 'view', ])
                ->make(true);
        }
        return view('admin.purchase.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.purchase.purchase_create.index');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'supplierID' => 'required'
        ]);


        foreach($request->productId as $key => $value){
            $purchase = new purchase;
            $purchase->productId = $value;
            $purchase->supplierId = $request->supplierID;
            $purchase->quantity = $request->quantity[$key];
            $purchase->price = $request->price[$key];
            $purchase->status = 2;
            $purchase->creator = auth()->user()->id ?? 0;
            $purchase->save();
        }

        // flash('Successfully saved', 'success');
        // return back();

        return json_encode([
            'title'=>'Successfully  Created purchase',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(purchase $purchase)
    {
        return view('admin.purchase.partials.view', compact('purchase'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(purchase $purchase)
    {
        return view('admin.purchase.partials.edit', compact('purchase'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, purchase $purchase)
    {

        if($purchase->status == 2 && $request->status == 1) {

            $product = product::find($purchase->productId);
            $product->quantity += $purchase->quantity;
            $product->save();

            $purchase->status = 1;
            $purchase->save();

        }elseif($purchase->status == 1 && $request->status == 2){
            $product = product::find($purchase->productId);
            $product->quantity -= $purchase->quantity;
            $product->save();

            $purchase->status = 2;
            $purchase->save();
        }

        $purchase->creator = auth()->user()->id ?? 0;
        $purchase->save();


        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(purchase $purchase){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(purchase $purchase)
    {
       $purchase->delete();

        return json_encode([
            'title'=>'Successfully  Deleted purchase',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getPurchase(Request $request)
    {
        $data_result = purchase::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }


    public function filterPurchase (Request $request)
    {
        $data_result = product::with('unit_info','units_info','variant_option_info')->where(function($query) use ($request) {
            if ($request->has('q')) {
                $keyword =  $request->q;
                $query->where('name', 'LIKE', "%$keyword%");
            }
        })->limit(10)->get();

        return json_encode($data_result);

    }

}
