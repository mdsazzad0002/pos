<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\WholeSaleOrder;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class WholeSaleOrderController extends Controller
{
    public function blukOrder(Request $request)
    {
         // $roles = role::latest()->get();
         if (request()->ajax()) {
            return DataTables::make(WholeSaleOrder::where('order_type',0)->get())
                ->addColumn('action', function ($row) {
                    $return_data = '';
                    // if(auth()->user()->can('whole.sele delete') == true){
                        $delete_route = route('admin.bluk.order.delete', $row->id);
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
        return view('admin.wholeSeleProduct.bluk_order');
    }
    public function customOrder(Request $request)
    {
         // $roles = role::latest()->get();
         if (request()->ajax()) {
            return DataTables::make(WholeSaleOrder::where('order_type',1)->get())
                ->addColumn('action', function ($row) {
                    $return_data = '';
                    // if(auth()->user()->can('whole.sele delete') == true){
                        $delete_route = route('admin.bluk.order.delete', $row->id);
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
        return view('admin.wholeSeleProduct.custom_order');
    }

    public function delete(WholeSaleOrder $order){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WholeSaleOrder $order)
    {

        $order->delete();

        return json_encode([
            'title'=>'Successfully  Deleted wholeSeleProduct',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }
}
