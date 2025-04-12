<?php

namespace App\Http\Controllers;

use App\Models\ShippingCharge as deliverycharge;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class ShippingChargeController extends Controller
{

        /**
         * Display a listing of the resource.
         */
        public function index()
        {
               // $roles = role::latest()->get();
               if (request()->ajax()) {
                return DataTables::make(deliverycharge::query())
    
         
    
                    ->addColumn('view', function ($row) {
                        $view_route = route('admin.deliverycharge.show', $row->id);
                        return "<button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>";
    
                    })
                    ->addColumn('action', function ($row) {
                        $delete_route = route('admin.deliverycharge.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '
    
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
    
                        $edit_route = route('admin.deliverycharge.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
    
                        $return_data = '';
                        // if(auth()->user()->can('deliverycharge edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        // }
    
                        // if(auth()->user()->can('deliverycharge delete') == true){
                            $return_data .= $delete_button ;
                        // }
    
                        return $return_data;
    
    
                    })
                    ->rawColumns(['action', 'view'])
                    ->make(true);
            }
            return view('admin.deliverycharge.index');
        }
    
        /**
         * Show the form for creating a new resource.
         */
        public function create()
        {
            $deliverycharge = null;
            return view('admin.deliverycharge.partials.create_edit', compact('deliverycharge'));
        }
    
        /**
         * Store a newly created resource in storage.
         */
        public function store(Request $request)
        {
           
    
            $request['store_date'] = true;
             return  $this->update($request);
    
        }
    
        /**
         * Display the specified resource.
         */
        public function show(deliverycharge $deliverycharge)
        {
    
            return view('admin.deliverycharge.partials.view', compact('deliverycharge'));
        }
    
        /**
         * Show the form for editing the specified resource.
         */
        public function edit(deliverycharge $deliverycharge)
        {
            return view('admin.deliverycharge.partials.create_edit', compact('deliverycharge'));
        }
    
        /**
         * Update the specified resource in storage.
         */
        public function update(Request $request,  $deliverycharge = null)
        {
            $request->validate([
                'name' => 'required',
                'amount' => 'required',
            ]);
    
            if($deliverycharge != null){
                $deliverycharge = deliverycharge::find($deliverycharge);
                $deliverycharge->updater = auth()->user()->id;
            }else{
                $deliverycharge = new deliverycharge();
                $deliverycharge->creator = auth()->user()->id;
            }
    
            $deliverycharge->name = $request->name;
            $deliverycharge->amount = $request->amount;
            $deliverycharge->status = $request->status ?? 1;
            $deliverycharge->save();
    
            if($request->has('store_date')){
                return json_encode([
                    'title'=>'Successfully  Created deliverycharge',
                    'type'=>'success',
                    'refresh'=>'true',
                ]);
            }else{
                return json_encode([
                    'title'=>'Successfully  Updated deliverycharge',
                    'type'=>'success',
                    'refresh'=>'true',
                ]);
            }
        }
    
        public function delete(deliverycharge $deliverycharge){
            return view('layout.admin.modal_content_delete');
        }
    
        /**
         * Remove the specified resource from storage.
         */
        public function destroy(deliverycharge $deliverycharge)
        {
    
            $deliverycharge->delete();
            return json_encode([
                'title'=>'Successfully  Delete deliverycharge',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }
    
    

    }
    