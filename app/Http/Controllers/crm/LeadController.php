<?php

namespace App\Http\Controllers\crm;

use App\Models\crm\Lead;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;

class  LeadController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {

            // $query = Lead::with('contact','leadSource')
            // ->leftJoin('lead_accounts', 'lead_contacts.account_id', '=', 'lead_accounts.id');

            $query = Lead::leftJoin('lead_sources', 'leads.from_lead_id', '=', 'lead_sources.id')
            ->leftJoin('lead_contacts', 'leads.contact_id', '=', 'lead_contacts.id')
            ->leftJoin('lead_accounts', 'lead_contacts.account_id', '=', 'lead_accounts.id')
            ->select('leads.*', 'lead_accounts.name as account_name', 'lead_accounts.phone as account_phone', 'lead_accounts.email as account_email', 'lead_accounts.website as account_website','lead_accounts.address as account_address', 'lead_sources.name as lead_sources', 'lead_contacts.name as contacts_name', 'lead_contacts.email as contacts_email', 'lead_contacts.phone as contacts_phone' );

            return DataTables::of($query)
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.Lead.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered modal-dialog-scrollable'
                    onclick='button_ajax(this)'
                    data-title='`$row->contacts_name`  info'
                    data-href='$view_route'>View</button>";

                })

                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.Lead.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->contacts_name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.Lead.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->contacts_name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('Lead edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('Lead delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.Lead.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        if(auth()->user()->can('Lead create')):
             return view('admin.Lead.partials.create');
        endif;

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if(auth()->user()->can('Lead create')):
            $request->validate([
                'LeadContact' => 'required',
                'LeadSource' => 'required',
            ]);

            $lead_find_exists = Lead::where([
                'contact_id' => $request->LeadContact,
                'from_lead_id' => $request->LeadSource
            ])->count();

            if($lead_find_exists > 0){
                return json_encode([
                    'title'=>'Already Exists',
                    'type'=>'error',
                    'refresh'=>'false',
                ]);
            }else{
                $Lead = new Lead;
                $Lead->contact_id = $request->LeadContact;
                $Lead->from_lead_id = $request->LeadSource;
                $Lead->date = $request->date;
                $Lead->creator = auth()->user()->id ?? 0;
                $Lead->save();


                return json_encode([
                    'title'=>'Successfully  Created Lead',
                    'type'=>'success',
                    'refresh'=>'true',
                ]);
            }
        endif;


    }

    /**
     * Display the specified resource.
     */
    public function show(Lead $Lead)
    {
        if(auth()->user()->can('Lead read')){
            return view('admin.Lead.partials.view', compact('Lead'));
        }else{
            return 'Permission Denied';

        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Lead $Lead)
    {
        if(auth()->user()->can('Lead edit')){
            return view('admin.Lead.partials.edit', compact('Lead'));
        }else{
            return 'Permission Denied';

        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Lead $Lead)
    {
        if(auth()->user()->can('Lead edit')){
            $request->validate([
                'LeadContact' => 'required',
                'LeadSource' => 'required',
            ]);

            $lead_find_exists = Lead::where([
                'contact_id' => $request->LeadContact,
                'from_lead_id' => $request->LeadSource
            ])->whereNot('id', $Lead->id)->count();

            if ($lead_find_exists > 0) {
                return json_encode([
                    'title'=>'Already Exists',
                    'type'=>'error',
                    'refresh'=>'false',
                ]);
            }else{

                $Lead->contact_id = $request->LeadContact;
                $Lead->from_lead_id = $request->LeadSource;
                $Lead->date = $request->date;
                $Lead->updater_id = auth()->user()->id ?? 0;
                $Lead->save();


                return json_encode([
                    'title' => 'Successfully  Updated Lead',
                    'type' => 'success',
                    'refresh' => 'true',
                ]);
            }
        }else{
            return json_encode([
                'title' => 'Permission Denied',
                'type' => 'error',
                'refresh' => 'false',
            ]);
        }

    }

    public function delete(Lead $Lead){
        if(auth()->user()->can('Lead delete')):
            return view('layout.admin.modal_content_delete');
        endif;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Lead $Lead)
    {
        if(auth()->user()->can('Lead delete')):
            $Lead->delete();

            return json_encode([
                'title'=>'Successfully  Deleted Lead',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        endif;
    }


    public function getLead(Request $request)
    {
        if(auth()->user()->can('Lead read')):
            $data_result = Lead::leftJoin('lead_contacts', 'leads.contact_id', '=', 'lead_contacts.id')
            ->leftJoin('lead_accounts', 'lead_contacts.account_id', '=', 'lead_accounts.id')

            ->select('leads.*', 'lead_contacts.name as contact_name', 'lead_accounts.name as account_name')

            ->where(function ($query) use ($request) {
                if ($request->has('q')) {
                    $query->where('lead_contacts.name', 'LIKE', '%' . $request->q . '%');
                    $query->orWhere('lead_accounts.name', 'LIKE', '%' . $request->q . '%');
                }
            })->get()->map(function ($contactLead) {
                return [
                    'id' => $contactLead->id,
                    'text' => "{$contactLead->contact_name} - {$contactLead->account_name}"
                ];
            });

            $result_make = [];
            $result_make['items']=$data_result;

            return json_encode($result_make);
        endif;

    }
}
