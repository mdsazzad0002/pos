<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $discount->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $discount->slug }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $discount->user->name ?? ''  }}</td>
    </tr>
</table>
