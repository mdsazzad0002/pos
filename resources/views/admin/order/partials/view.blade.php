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
    @foreach ($product_data->product as $key=> $items )
    <tr>
        <td>
            <img style="width: 100px" src="{{ $items->product->image_url }}" alt="">

        </td>
        <td>
            {{ $items->product->name }} <br>
            {{ ($items->product_variant)->name ?? '' }}
        </td>
        <td>{{ $items->quantity }}</td>
        <td>{{ $items->price }}</td>

    </tr>

    @endforeach

    <tr>


        <td>Price : {{ $product_data->subtotal->price }}</td>
        <td>Vat: {{ $product_data->subtotal->discount }}</td>
        <td>Discount: {{ $product_data->subtotal->discount }}</td>
        <td>Vat: {{ $product_data->subtotal->vat }}</td>
        <td>Coupon : {{ $product_data->subtotal->coupon }}</td>
        <td>Subtotal : {{ $product_data->subtotal->total_price }}</td>

    </tr>


    </tbody>


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
