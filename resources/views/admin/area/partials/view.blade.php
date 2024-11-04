<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $area->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $area->slug }}</td>
    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $area->status ? 'Active' : 'Inactive' }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $area->user->name ?? ''  }}</td>
    </tr>
</table>
