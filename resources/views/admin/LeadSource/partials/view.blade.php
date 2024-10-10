<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>Source Info : </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>{{ $LeadSource->name }}</td>
    </tr>

    <x-quick.table_action_info :info='$LeadSource'/>
</table>
