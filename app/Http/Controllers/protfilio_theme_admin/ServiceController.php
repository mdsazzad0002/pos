<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Str;
use Yajra\DataTables\Facades\DataTables;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(Service::query())


                ->addColumn('image', function ($row) {
                   return  "<i  class='".$row->icon_class."></i>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.service.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog='modal-dialog-centered modal-lg'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.service.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '

                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.service.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered modal-lg'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";

                        $return_data = '';
                        if(auth()->user()->can('service edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('service delete') == true){
                            $return_data .= $delete_button ;
                        }




                    return $return_data;


                })
                ->rawColumns(['image','action', 'view'])
                ->make(true);
        }
        return view('admin.protfilio_theme.service.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.protfilio_theme.service.partials.create_and_edit');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $service =  new service;
        $service->title =  $request->title;
        $service->icon_class =  $request->icon_class;
        $service->upload_id =  $request->image;
        $service->short_description = $request->short_description;
        $service->description = $request->description;
        $service->status = $request->status;
        $service->slug = Str::slug($request->title);
        $service->save();

        return json_encode([
            'title'=>'Successfully  Created service',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(service $service)
    {
        return view('admin.protfilio_theme.service.partials.view', compact('service'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(service $service)
    {
        return view('admin.protfilio_theme.service.partials.create_and_edit', compact('service'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, service $service)
    {

        $service->title =  $request->title;
        $service->icon_class =  $request->icon_class;
        $service->short_description = $request->short_description;
        $service->upload_id =  $request->image;
        $service->description = $request->description;
        $service->status = $request->status;
        $service->slug = Str::slug($request->title);
        $service->save();



        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(service $service){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(service $service)
    {

       $service->delete();

        return json_encode([
            'title'=>'Successfully  Deleted service',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getservice(Request $request)
    {
        $data_result = service::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
