@include('admin.LeadDeal.partials.view_raw', ['LeadDeal'=> $LeadDeal])
@include('admin.LeadContact.partials.view_raw', ['LeadContact'=> $LeadDeal->lead->contact])
@include('admin.LeadAccount.partials.view_raw', ['LeadAccount'=> $LeadDeal->lead->contact->account])

