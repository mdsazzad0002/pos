<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $product->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $product->slug }}</td>
    </tr>
    <tr>
        <td>Selling Price</td>
        <td>{{ $product->selling_price }}</td>
    </tr>

    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($product->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Creator</td>
        <td>{{ $product->user->name ?? ''  }}</td>
    </tr>
</table>
