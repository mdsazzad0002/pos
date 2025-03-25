<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Title</td>
        <td>{{ $whychooseus->title }}</td>
    </tr>
    <tr>
        <td>Icon</td>
        <td><i class="{{ $whychooseus->icon }}"></i></td>
    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $whychooseus->status ? 'Active' : 'Inactive' }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $whychooseus->user->name ?? ''  }}</td>
    </tr>
</table>
