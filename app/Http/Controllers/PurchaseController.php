<?php

namespace App\Http\Controllers;

use App\Models\unit;
use App\Models\product;
use App\Models\supplierPayment;
use App\Models\purchase;
use Illuminate\Http\Request;
use App\Models\VariantOption;
use Yajra\DataTables\DataTables;


use Mpdf\QrCode\QrCode;
use Mpdf\QrCode\Output;
use Barryvdh\DomPDF\Facade as PDF;



class PurchaseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            $query = Purchase::join('suppliers', 'purchases.supplierId', '=', 'suppliers.id')
            ->selectRaw('
                purchases.purchase_id as purchase_id, 
                ANY_VALUE(purchases.supplierId) as supplier_id, 
                ANY_VALUE(suppliers.upload_id) as upload_id, 
                ANY_VALUE(suppliers.name) as supplier_name, 
                
                ANY_VALUE(purchases.buying_date) as buying_date, 
                SUM(purchases.total) as price
            ')
            ->groupBy('purchases.purchase_id');
        
        

            return DataTables::make($query)

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.purchase.report_single',['purchase_id'=> $row->purchase_id]);
                    return "<a class='btn btn-primary' onclick='window.open(\"$view_route\", \"_blank\", \"width=800,height=600,scrollbars=yes,resizable=yes\")' href='javascript:void(0)'>View</a>";


                })
                ->addColumn('image', function ($row) {
                   return  $view_route = "<img style='max-width:100px' src='".dynamic_asset($row->upload_id ?? 0)."'/></br> ";
                })
                ->addColumn('supplier', function ($row) {
                    $supplier_view_route = route('admin.supplier.show', $row->supplier_id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->supplier_name  info'
                    data-href='$supplier_view_route'>$row->supplier_name</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.purchase.delete', $row->purchase_id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='#".$row->purchase_id."'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.purchase.edit', $row->purchase_id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='#".$row->purchase_id."'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Change Status</button>";

                    $return_data = '';
                    // if(auth()->user()->can('purchase edit')==true){
                    //     $return_data = $edit_button. '&nbsp;';
                    // }

                    // if(auth()->user()->can('purchase delete') == true){
                    //     if($row->status == 2){
                    //         $return_data .= $delete_button;
                    //     }
                    // }

                    return $return_data;


                })
                ->rawColumns(['image','action', 'view', 'supplier' ])
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

        // return $request;
        $request->validate([
            'supplierID' => 'required'
        ]);


        $purchase_last = purchase::orderBy('id','desc')->first();
        $purchase_last =$purchase_last ? $purchase_last->purchase_id+1 : 1;

        foreach($request->productId as $key => $value){
            $product = product::find($value);
            $variant = VariantOption::where('name', $request->variant_name[$key])->first();
            $units = unit::find($request->unit[$key]);

            $actual_quantity = 1;
            if($product->unit != $units->id){
                $actual_quantity = $units->sub_items;
            }

            if($variant){
                $variant->quantity +=   ($actual_quantity * $request->quantity[$key]);
                $variant->save();
            }elseif(!$variant){
                $product->quantity += ($actual_quantity * $request->quantity[$key]);
                $product->save();
            }



            $purchase = new purchase;
            $purchase->purchase_id = $purchase_last;
            $purchase->productId = $value;
            $purchase->supplierId = $request->supplierID;
            $purchase->quantity = $request->quantity[$key];
            $purchase->price = $request->price[$key];
            $purchase->buying_date = $request->buying_date;
            $purchase->status = 2;
            $purchase->unit_id =  $units ?  $units->id : 0;
            $purchase->varinat_id =  $variant ?  $variant->id : 0;
            $purchase->total =  $request->quantity[$key] * $request->price[$key];
            $purchase->expiring_date =  $request->expiring_date[$key] ?? null;
            $purchase->creator = auth()->user()->id ?? 0;
            $purchase->save();
        }

        // flash('Successfully saved', 'success');
        // return back();

        return json_encode([
            'purchase_id'=> $purchase_last,
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
            $purchase->status = 1;
            $purchase->save();

        }elseif($purchase->status == 1 && $request->status == 2){
            $purchase->status = 2;
            $purchase->save();
        }

        $purchase->updater = auth()->user()->id ?? 0;
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






    public function report_single(Request  $request){


        $purchase = purchase::with('product', 'unit', 'supplier', 'user', 'variant')->where('purchase_id', $request->purchase_id)->get();
        if(count($purchase) > 0){
             $purchase_first_column =  $purchase->first();
             $supplier = $purchase_first_column->supplier;
             $previous_due = Purchase::where('supplierId',  $supplier->id)
                         ->selectRaw('SUM(total) as total_sum')
                         ->first();

             $supplier_payment = supplierPayment::where('supplier_id', $supplier->id)
                                ->where('status', 1)
                                ->selectRaw('SUM(amount) as payment')
                                ->first();

             $supplier_refund = supplierPayment::where('supplier_id', $supplier->id)
                                ->where('status', 2)
                                ->selectRaw('SUM(amount) as payment')
                                ->first();


             $current_url = url()->full();
            $qrCode = new QrCode($current_url);


            // // Echo an HTML table
            $output = new Output\Html();
            $data = $output->output($qrCode);

            if($request->has('pdf')){
                $pdf = PDF::loadView('admin.purchase.partials.print', compact('purchase', 'previous_due', 'supplier_payment', 'supplier_refund', 'data'));
                return $pdf->download('invoice-'.Str::slug($supplier).'.pdf');
            }else{
                return view('admin.purchase.partials.print', compact('purchase', 'previous_due', 'supplier_payment', 'supplier_refund', 'data'));
            }


        }else{
            return 'Something is wrong';
        }
    }
}
