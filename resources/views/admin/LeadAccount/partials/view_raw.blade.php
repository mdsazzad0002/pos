<table class="table talbe-bordered border table-striped table-hover">
    {{--  Account Info  --}}
    <tr>
        <td colspan="2">Organization Info :</td>
    </tr>
    <tr>
        <td> Name</td>
        <td>{{ $LeadAccount->name }}</td>
    </tr>
    <tr>
        <td> Phone</td>
        <td>{{ $LeadAccount->phone }}</td>
    </tr>
    <tr>
        <td> Email</td>
        <td>{{ $LeadAccount->email }}</td>
    </tr>
    <tr>
        <td> Website</td>
        <td>{{ $LeadAccount->website }}</td>
    </tr>
    <tr>
        <td> Address</td>
        <td>{{ $LeadAccount->address }}</td>
    </tr>
    <x-quick.table_action_info :info='$LeadAccount'/>
</table>
