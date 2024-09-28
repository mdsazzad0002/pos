<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $branch->name }}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>{{ $branch->location }}</td>
    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $branch->status == 1 ? 'Active' : 'Inactive' }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $branch->user->name ?? ''  }}</td>
    </tr>
</table>
