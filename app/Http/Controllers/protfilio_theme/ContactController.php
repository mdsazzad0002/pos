<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Http\Controllers\Controller;
use App\Models\crm\Lead;
use App\Models\crm\LeadAccount;
use App\Models\crm\LeadContact;
use App\Models\crm\LeadDeal;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ContactController extends Controller
{

    public function index(){
        return view('frontend.protfilio_theme.contact.index');
    }

    public function store(Request $request){

        $lead_find = LeadContact::where('email',$request->email)->where('phone', $request->phone)->first();
        if( $lead_find){
            $lead_contact = $lead_find;
            $lead_account = LeadAccount::find($lead_contact->account_id);
        }else{
            $lead_account  =  new LeadAccount();
            $lead_account->name = $request->name;
            $lead_account->email = $request->email;
            $lead_account->phone = $request->phone;
            $lead_account->address = $request->address;
            $lead_account->save();


            $lead_contact = new LeadContact();
            $lead_contact->account_id = $lead_account->id;
            $lead_contact->name = $request->name;
            $lead_contact->email = $request->email;
            $lead_contact->phone = $request->phone;
            $lead_contact->address = $request->address;
            $lead_contact->message = $request->message;
            $lead_contact->save();

        }



        $lead = new Lead();
        $lead->from_lead_id = 1; //Lead source Id
        $lead->date = Carbon::now();
        $lead->contact_id = $lead_contact->id;
        $lead->save();


        $lead_deal = new LeadDeal();
        $lead_deal->lead_id = $lead->id;
        $lead_deal->stage_id = 1;
        $lead_deal->date =  Carbon::now();
        $lead_deal->note = $request->message;
        $lead_deal->save();


        return json_encode([
            'title'=>'Your requirement has been successfully received. We will contact you as soon as possible.',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

}
