<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $project->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $project->slug }}</td>
    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $project->status ? 'Active' : 'Inactive' }}</td>
    </tr>
</table>
