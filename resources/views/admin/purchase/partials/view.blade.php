<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $purchase->product->name }}</td>
    </tr>


    <tr>
        <td>Quantity</td>
        <td>{{ $purchase->quantity }}</td>
    </tr>

    <tr>
        <td>Price</td>
        <td>{{ $purchase->price }}</td>
    </tr>

    <tr>
        <td>Total Price</td>
        <td>{{ $purchase->total_price }}</td>
    </tr>

    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($purchase->product->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Supplier</td>
        <td>{{ $purchase->supplier->name }}</td>
    </tr>
    <tr>
        <td>Supplier phone</td>
        <td>{{ $purchase->supplier->phone }}</td>
    </tr>
    <tr>
        <td>Created By</td>
        <td>{{ $purchase->user->name ?? ''  }}</td>
    </tr>
    <tr>
        <td>Update By</td>
        <td>{{ $purchase->updater->name ?? ''  }}</td>
    </tr>
</table>
