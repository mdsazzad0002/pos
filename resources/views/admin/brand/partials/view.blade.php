<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $brand->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $brand->slug }}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($brand->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Creator</td>
        <td>{{ $brand->user->name ?? ''  }}</td>
    </tr>
</table>
