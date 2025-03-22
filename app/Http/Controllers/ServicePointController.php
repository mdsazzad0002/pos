<?php

namespace App\Http\Controllers;

use App\Models\ServicePoint;
use Illuminate\Http\Request;
use DataTables;

class ServicePointController extends Controller
{
    public function index()
    {
           if (request()->ajax()) {
            return DataTables::make(ServicePoint::query())
                ->addColumn('image', function ($row) {
                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";
                })
              

                ->addColumn('action', function ($row) {
                    $return_data = '';
                    if(auth()->user()->can('category edit')==true){
                        $edit_route = route('admin.service-request.service-point.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('category delete') == true){
                        $delete_route = route('admin.service-request.service-point.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('category read') == true){
                        $view_route = route('admin.service-request.service-point.show', $row->id);
                        $view_button = " <button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>";

                        $return_data .= $view_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'image', 'background'])
                ->make(true);
        }
        return view('admin.service-request.service-point.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $service_point = null;
        return view('admin.service-request.service-point.partials.create_edit', compact('service_point'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required']);
        $service_point = new ServicePoint;
        $service_point->name = $request->name;;
        $service_point->location = $request->location;;
        $service_point->status = $request->status;
        $service_point->upload_id = $request->image ?? 0;
        $service_point->save();


        return json_encode([
            'title'=>'Successfully  Created Service Point',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(ServicePoint $service_point)
    {
        return view('admin.service-request.service-point.partials.view', compact('service_point'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ServicePoint $service_point)
    {
        return view('admin.service-request.service-point.partials.create_edit', compact('service_point'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ServicePoint $service_point)
    {
        
        $service_point->name = $request->name;;
        $service_point->location = $request->location;
        $service_point->status = $request->status;
        $service_point->upload_id = $request->image ?? 0;
        $service_point->save();


        return json_encode([
            'title'=>'Successfully  Updated Service Point',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(ServicePoint $service_point){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ServicePoint $service_point)
    {

        $service_point->delete();

        return json_encode([
            'title'=>'Successfully  Deleted Category',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getServicePoint(Request $request)
    {
        $data_result = ServicePoint::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }




}
