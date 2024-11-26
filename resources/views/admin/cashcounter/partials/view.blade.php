<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $cashcounter->name }}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>{{ $cashcounter->branch_info->name ?? '' }}</td>
    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $cashcounter->status == 1 ? 'Active' : 'Inactive' }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $cashcounter->user->name ?? ''  }}</td>
    </tr>
</table>
