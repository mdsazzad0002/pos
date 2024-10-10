<?php

namespace App\Http\Controllers\crm;

use App\Models\crm\LeadDeal;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;

class   LeadDealController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            $query = LeadDeal::leftJoin('leads', 'lead_deals.lead_id', 'leads.id')
                            ->leftJoin('lead_contacts', 'leads.contact_id', 'lead_contacts.id')
                            ->leftJoin('lead_accounts', 'lead_contacts.account_id', 'lead_accounts.id')
                            ->leftJoin('lead_deal_stages', 'lead_deals.stage_id', 'lead_deal_stages.id')

                            ->select('lead_deals.*', 'lead_accounts.name as account_name', 'lead_accounts.phone as account_phone', 'lead_accounts.email as account_email', 'lead_accounts.website as account_website','lead_accounts.address as account_address',  'lead_contacts.name as contacts_name', 'lead_contacts.email as contacts_email', 'lead_contacts.phone as contacts_phone', 'lead_deal_stages.name as stage_name' );

            return DataTables::of($query)
               
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.LeadDeal.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.LeadDeal.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.LeadDeal.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('LeadDeal edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('LeadDeal delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.LeadDeal.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        if (auth()->user()->can('LeadDeal create')) {
            return view('admin.LeadDeal.partials.create');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        if (auth()->user()->can('LeadDeal create')) {

            $request->validate([
                'LeadDealStage'=>'required',
                'lead'=>'required',
                'amount'=>'required | int',
            ]);
            $LeadDeal = new LeadDeal;
            $LeadDeal->note = $request->note;
            $LeadDeal->amount = $request->amount;
            $LeadDeal->date = $request->date;
            $LeadDeal->stage_id = $request->LeadDealStage;
            $LeadDeal->lead_id = $request->lead;
            $LeadDeal->creator = auth()->user()->id ?? 0;
            $LeadDeal->save();


            return json_encode([
                'title'=>'Successfully  Created LeadDeal',
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
    public function show(LeadDeal $LeadDeal)
    {
        if (auth()->user()->can('LeadDeal read')) {
            return view('admin.LeadDeal.partials.view', compact('LeadDeal'));
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LeadDeal $LeadDeal)
    {
        if (auth()->user()->can('LeadDeal edit')) {
            return view('admin.LeadDeal.partials.edit', compact('LeadDeal'));
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
    public function update(Request $request, LeadDeal $LeadDeal)
    {
        if (auth()->user()->can('LeadDeal edit')) {
            $request->validate([
                'LeadDealStage'=>'required',
                'lead'=>'required',
                'amount'=>'required | int',
            ]);
            
            $LeadDeal->note = $request->note;
            $LeadDeal->amount = $request->amount;
            $LeadDeal->date = $request->date;
            $LeadDeal->stage_id = $request->LeadDealStage;
            $LeadDeal->lead_id = $request->lead;
            $LeadDeal->save();


            return json_encode([
                'title'=>'Successfully  Updated LeadDeal',
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

    public function delete(LeadDeal $LeadDeal){
        if (auth()->user()->can('LeadDeal delete')) {
            return view('layout.admin.modal_content_delete');
        }else{
            return 'Access Denied';
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LeadDeal $LeadDeal)
    {
        if (auth()->user()->can('LeadDeal delete')) {
            $LeadDeal->delete();

            return json_encode([
                'title'=>'Successfully  Deleted LeadDeal',
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


    public function getLeadDeal(Request $request)
    {
        if (auth()->user()->can('LeadDeal read')) {
            $data_result = LeadDeal::where(function($query) use ($request) {
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
