<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Counter</td>
        <td>{{ $achivement->counter }}</td>
    </tr>
    <tr>
        <td>Title</td>
        <td>{{ $achivement->title }}</td>
    </tr>
    <tr>
        <td>Sub Title</td>
        <td>{{ $achivement->sub_title }}</td>
    </tr>
    <tr>
        <td>Icon</td>
        <td><i class="{{ $achivement->icon }}"></i></td>
    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $achivement->status ? 'Active' : 'Inactive' }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $achivement->user->name ?? ''  }}</td>
    </tr>
</table>
