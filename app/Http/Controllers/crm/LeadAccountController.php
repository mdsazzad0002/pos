<?php

namespace App\Http\Controllers\crm;

use App\Models\crm\LeadAccount;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;

class LeadAccountController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(LeadAccount::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.LeadAccount.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.LeadAccount.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.LeadAccount.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('LeadAccount edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('LeadAccount delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.LeadAccount.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        if (auth()->user()->can('LeadAccount create')) {
            return view('admin.LeadAccount.partials.create');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {


        if (auth()->user()->can('LeadAccount create')) {
            $request->validate(['name' => 'required']);
            $LeadAccount = new LeadAccount;
            $LeadAccount->name = $request->name;
            $LeadAccount->website = $request->website;
            $LeadAccount->email = $request->email;
            $LeadAccount->phone = $request->phone;
            $LeadAccount->address = $request->address;
            $LeadAccount->creator = auth()->user()->id ?? 0;

            $LeadAccount->save();


            return json_encode([
                'title' => 'Successfully  Created LeadAccount',
                'type' => 'success',
                'refresh' => 'true',
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
    public function show(LeadAccount $LeadAccount)
    {
        return view('admin.LeadAccount.partials.view', compact('LeadAccount'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LeadAccount $LeadAccount)
    {

        if (auth()->user()->can('LeadAccount create')) {
            return view('admin.LeadAccount.partials.edit', compact('LeadAccount'));
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LeadAccount $LeadAccount)
    {

        if (auth()->user()->can('LeadAccount edit')) {
            $LeadAccount->name = $request->name;
            $LeadAccount->website = $request->website;
            $LeadAccount->email = $request->email;
            $LeadAccount->phone = $request->phone;
            $LeadAccount->address = $request->address;
            $LeadAccount->save();


            return json_encode([
                'title'=>'Successfully  Updated LeadAccount',
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

    public function delete(LeadAccount $LeadAccount){


        if (auth()->user()->can('LeadAccount create')) {
            return view('layout.admin.modal_content_delete');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LeadAccount $LeadAccount)
    {


        if (auth()->user()->can('LeadAccount delete')) {
            $LeadAccount->delete();

            return json_encode([
                'title'=>'Successfully  Deleted LeadAccount',
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


    public function getLeadAccount(Request $request)
    {

        if (auth()->user()->can('LeadAccount read')) {
            $data_result = LeadAccount::where(function ($query) use ($request) {
                if ($request->has('q')) {
                    $query->where('name', 'LIKE', '%' . $request->q . '%');
                }
            })->select('id', 'name as text')->get();

            $result_make = [];
            $result_make['items'] = $data_result;

            return json_encode($result_make);
        }

    }
}
