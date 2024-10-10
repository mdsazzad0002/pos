@include('admin.LeadContact.partials.view', ['LeadContact'=>$Lead->contact])

@include('admin.LeadSource.partials.view', ['LeadSource'=>$Lead->leadSource])

@include('admin.LeadAccount.partials.view', ['LeadAccount'=>$Lead->contact->account])


<table class="table talbe-bordered border table-striped table-hover">
    {{--  Action info  --}}
    <tr>
        <td colspan="2">Action Info : </td>
    </tr>
    <x-quick.table_action_info :info='$Lead'/>
</table>
