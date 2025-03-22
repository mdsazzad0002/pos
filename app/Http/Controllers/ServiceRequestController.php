<?php

namespace App\Http\Controllers;

use App\Models\ServiceRequest;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ServiceRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (request()->ajax()) {
            return DataTables::make(ServiceRequest::query())
              
                ->addColumn('service-point', function ($row) {
                    return $row?->service_point_info?->name;
                })
                ->addColumn('product', function ($row) {
                    return $row?->product_info?->name;
                })

                ->addColumn('action', function ($row) {
                    $return_data = '';
                 
                    if(auth()->user()->can('service-request delete') == true){
                        $delete_route = route('admin.service-request.service-request.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('service-request read') == true){
                        $view_route = route('admin.service-request.service-request.show', $row->id);
                        $view_button = " <button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>";

                        $return_data .= $view_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.service-request.service-request.index');
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
        $request->validate([
            'customerName' => 'required',
            'mobile' => 'required',
            'serviceCenter' => 'required',
            'productList' => 'required',

        ]);
        $serviceRequest = new ServiceRequest;
        $serviceRequest->name = $request->customerName;
        $serviceRequest->mobile = $request->mobile;
        $serviceRequest->alt_mobile = $request->alternativeMobile;
        $serviceRequest->address = $request->address;
        $serviceRequest->service_point_id = $request->serviceCenter;
        $serviceRequest->brand = $request->brand ?? settings('app_name_short',9);
        $serviceRequest->product_id = $request->productList;
        $serviceRequest->comment = $request->comment;

        $serviceRequest->save();

        return json_encode([
            'title'=>'Successfully  Created Service Request',
            'type'=>'success',
            'refresh'=>'false',
        ]);
        

    }

    /**
     * Display the specified resource.
     */
    public function show(ServiceRequest $serviceRequest)
    {
        if($serviceRequest){
            $serviceRequest->status = 1;
            $serviceRequest->save();
        }
        return view('admin.service-request.service-request.partials.view', compact('serviceRequest'));
    }

    public function delete(ServiceRequest $serviceRequest){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ServiceRequest $serviceRequest)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ServiceRequest $serviceRequest)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ServiceRequest $serviceRequest)
    {
        $serviceRequest->delete();
        return json_encode([
            'title'=>'Successfully  Deleted Service Request',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }
}
