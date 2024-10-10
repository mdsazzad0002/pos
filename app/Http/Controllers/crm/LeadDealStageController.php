<?php

namespace App\Http\Controllers\crm;

use App\Models\crm\LeadDealStage;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;

class  LeadDealStageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(LeadDealStage::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.LeadDealStage.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.LeadDealStage.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.LeadDealStage.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('LeadDealStage edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('LeadDealStage delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.LeadDealStage.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        if (auth()->user()->can('LeadDealStage create')) {
            return view('admin.LeadDealStage.partials.create');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        if (auth()->user()->can('LeadDealStage create')) {
            $request->validate(['name' => 'required']);
            $LeadDealStage = new LeadDealStage;
            $LeadDealStage->name = $request->name;
            $LeadDealStage->creator = auth()->user()->id ?? 0;
            $LeadDealStage->save();


            return json_encode([
                'title'=>'Successfully  Created LeadDealStage',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }else{
            return json_encode([
                'title' => 'Access Denied',
                'type' => 'error',
                'refresh' => 'false',
            ]);
        }


    }

    /**
     * Display the specified resource.
     */
    public function show(LeadDealStage $LeadDealStage)
    {
        if (auth()->user()->can('LeadDealStage read')) {
            return view('admin.LeadDealStage.partials.view', compact('LeadDealStage'));
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LeadDealStage $LeadDealStage)
    {
        if (auth()->user()->can('LeadDealStage edit')) {
            return view('admin.LeadDealStage.partials.edit', compact('LeadDealStage'));
        }else{
            return json_encode([
                'title' => 'Access Denied',
                'type' => 'error',
                'refresh' => 'false',
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LeadDealStage $LeadDealStage)
    {
        if (auth()->user()->can('LeadDealStage edit')) {
            $LeadDealStage->name = $request->name;
            $LeadDealStage->creator = auth()->user()->id ?? 0;
            $LeadDealStage->save();


            return json_encode([
                'title'=>'Successfully  Updated LeadDealStage',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }else{
            return json_encode([
                'title' => 'Access Denied',
                'type' => 'error',
                'refresh' => 'false',
            ]);
        }
    }

    public function delete(LeadDealStage $LeadDealStage){
        if (auth()->user()->can('LeadDealStage delete')) {
            return view('layout.admin.modal_content_delete');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LeadDealStage $LeadDealStage)
    {
        if (auth()->user()->can('LeadDealStage delete')) {
            $LeadDealStage->delete();

            return json_encode([
                'title'=>'Successfully  Deleted LeadDealStage',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }else{
            return json_encode([
                'title' => 'Access Denied',
                'type' => 'error',
                'refresh' => 'false',
            ]);
        }
    }


    public function getLeadDealStage(Request $request)
    {
        if (auth()->user()->can('LeadDealStage read')) {
            $data_result = LeadDealStage::where(function($query) use ($request) {
                if ($request->has('q')) {
                    $query->where('name', 'LIKE', '%' . $request->q . '%');
                }
            })->select('id', 'name as text')->get();

            $result_make = [];
            $result_make['items']=$data_result;

            return json_encode($result_make);

        }
    }
}
