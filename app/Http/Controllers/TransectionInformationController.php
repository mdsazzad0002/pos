<?php

namespace App\Http\Controllers;

use App\Models\payment\TransectionInformation;
use Illuminate\Http\Request;use Yajra\DataTables\DataTables;use App\Models\OrderEvent;

class TransectionInformationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
     
               // $roles = role::latest()->get();
               if (request()->ajax()) {
                $order = TransectionInformation::select('transection_information.*');
                return DataTables::make($order)
                        ->addColumn('order_status', function ($row) {
                            if($row->order_id == 0){
                                return 'Unknown';
                            }
                            $order_event = OrderEvent::where('order_id', $row->order_id)->latest()->first();
                            if($order_event){
                            return $order_event?->status_data?->name ?? 'Unknown';
                            }else{
                            return 'Pending';
                            }
        
                        })
            
                   
                    ->addColumn('order_id_data', function ($row) {
                      if($row->order_id == 0){
                          return 'Unknown';
                      }
                      return $row->order_info?->order_id ?? 'Unknown';
    
                    })
                 
    
                    ->addColumn('action', function ($row) {
                        if($row->order_id == 0){
                            return 'No Action Avialable';
                        }
                        $view_route = route('admin.order.show', $row->order_id);
                        $view_button = " <button class='btn btn-primary '
                        data-dialog='modal-lg modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='Info #ID".$row->order_info->order_id."'
                        data-href='$view_route'>View</button>";
    
    
                        $update_status_route = route('admin.order.update_status', $row->order_id);
                        $update_status_button = " <button class='btn btn-primary '
                        data-dialog='modal-lg modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='info #ID".$row->order_info->order_id."'
                        data-href='$update_status_route'>Update Status </button>";
    
    
                        $return_data = '';
                  
                        if(auth()->user()->can('order read') == true){
                                $return_data .= $view_button;
                        }
    
    
    
    
                        return $return_data;
    
    
                    })
                    ->rawColumns(['action' ,'order_status','cashcollection_price'])
                    ->make(true);
            }
            return view('admin.transaction.index');
       
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(transection_information $transection_information)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(transection_information $transection_information)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, transection_information $transection_information)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(transection_information $transection_information)
    {
        //
    }
}
