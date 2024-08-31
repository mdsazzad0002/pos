Product Info
<table class="table talbe-bordered border table-striped table-hover">
    <thead>
        <tr>

            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
    @php
        if($order->product_json != null){
            $product_data =(json_decode($order->product_json));
        }else{
            $product_data =[];
        }
    @endphp
    @foreach ($product_data as $key=> $items )
    <tr>
        <td>{{ $items->name }}</td>
        <td>{{ $items->selling_price }}</td>
        <td>{{ $items->order_quantity }}</td>
        <td>{{ $items->order_price }}</td>
    </tr>

    @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td></td>
            <td></td>
            <td>{{ $order->quantity }}</td>
            <td>{{ $order->price }}</td>
        </tr>
    </tfoot>

</table>



<div>
    <br>
    Customer Info
</div>

<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $order->customer->name }}</td>
    </tr>


    <tr>
        <td>Phone</td>
        <td>{{ $order->customer->phone }}</td>
    </tr>

    <tr>
        <td>Email</td>
        <td>{{ $order->customer->email }}</td>
    </tr>
    <tr>
        <td>Creator Name</td>
        <td>{{ $order->customer->user->name ?? ''}}</td>
    </tr>
</table>
