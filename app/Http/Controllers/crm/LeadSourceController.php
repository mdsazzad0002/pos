<?php

namespace App\Http\Controllers\crm;

use App\Models\crm\LeadSource;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;

class  LeadSourceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(LeadSource::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.LeadSource.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.LeadSource.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.LeadSource.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('LeadSource edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('LeadSource delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.LeadSource.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.LeadSource.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        
        $LeadSource = new LeadSource;
        $LeadSource->name = $request->name;
        $LeadSource->creator = auth()->user()->id ?? 0;
        $LeadSource->save();


        return json_encode([
            'title'=>'Successfully  Created LeadSource',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(LeadSource $LeadSource)
    {
        return view('admin.LeadSource.partials.view', compact('LeadSource'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LeadSource $LeadSource)
    {
        return view('admin.LeadSource.partials.edit', compact('LeadSource'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LeadSource $LeadSource)
    {
        $LeadSource->name = $request->name;
        $LeadSource->creator = auth()->user()->id ?? 0;
        $LeadSource->save();


        return json_encode([
            'title'=>'Successfully  Updated LeadSource',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(LeadSource $LeadSource){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LeadSource $LeadSource)
    {

        $LeadSource->delete();

        return json_encode([
            'title'=>'Successfully  Deleted LeadSource',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getLeadSource(Request $request)
    {
        $data_result = LeadSource::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
