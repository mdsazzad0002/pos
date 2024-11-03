<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $subcategory->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $subcategory->slug }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $subcategory->description }}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($subcategory->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Creator</td>
        <td>{{ $subcategory->user->name ?? ''  }}</td>
    </tr>
</table>
