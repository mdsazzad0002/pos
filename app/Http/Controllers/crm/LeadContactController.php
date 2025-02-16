<?php

namespace App\Http\Controllers\crm;

use Illuminate\Http\Request;
use App\Models\crm\LeadContact;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class LeadContactController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(LeadContact::query())

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.LeadContact.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.LeadContact.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    // $edit_route = route('admin.LeadContact.edit', $row->id);
                    // $edit_button =  "<button class='btn btn-warning '
                    // data-dialog='modal-dialog-centered'
                    // data-title='$row->name'
                    // onclick='button_ajax(this)'
                    // data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    // if(auth()->user()->can('LeadContact edit')==true){
                    //     $return_data = $edit_button. '&nbsp;';
                    // }

                    if(auth()->user()->can('LeadContact delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.LeadContact.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.LeadContact.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if (auth()->user()->can('LeadContact create')) {

            $LeadContact = new LeadContact;
            $LeadContact->name = $request->name;
            $LeadContact->phone = $request->phone;
            $LeadContact->email = $request->email;
            $LeadContact->address = $request->address;
            $LeadContact->account_id = $request->account;
            $LeadContact->creator = auth()->user()->id ?? 0;
            $LeadContact->save();


            return json_encode([
                'title' => 'Successfully  Created LeadContact',
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
    public function show(LeadContact $LeadContact)
    {
        if(auth()->user()->can(abilities: 'LeadContact read')){
            return view('admin.LeadContact.partials.view', compact('LeadContact'));
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LeadContact $LeadContact)
    {
        if(auth()->user()->can('LeadContact edit')){
            return view('admin.LeadContact.partials.edit', compact('LeadContact'));
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LeadContact $LeadContact)
    {
        if (auth()->user()->can('LeadContact edit')) {
            $LeadContact->name = $request->name;
            $LeadContact->phone = $request->phone;
            $LeadContact->email = $request->email;
            $LeadContact->address = $request->address;
            $LeadContact->account_id = $request->account;
            $LeadContact->creator = auth()->user()->id ?? 0;

            $LeadContact->save();


            return json_encode([
                'title' => 'Successfully  Updated LeadContact',
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

    public function delete(LeadContact $LeadContact){
        if (auth()->user()->can('LeadContact delete')) {
            return view('layout.admin.modal_content_delete');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LeadContact $LeadContact)
    {

        if(auth()->user()->can('LeadContact delete')){
        $LeadContact->delete();

        return json_encode([
            'title'=>'Successfully  Deleted LeadContact',
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


    public function getLeadContact(Request $request)
    {
        $data_result = LeadContact::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
                $query->orWhere('phone', 'LIKE', '%' . $request->q . '%');
                $query->orWhere('email', 'LIKE', '%' . $request->q . '%');
            }
        })->get()->map(function ($contactLead) {
            return [
                'id' => $contactLead->id,
                'text' => "{$contactLead->name}-{$contactLead->phone} - {$contactLead->account->name}"
            ];
        });
        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
