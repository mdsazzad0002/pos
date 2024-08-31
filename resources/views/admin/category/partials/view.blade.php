<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $category->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $category->slug }}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($category->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Creator</td>
        <td>{{ $category->user->name ?? ''  }}</td>
    </tr>
</table>
