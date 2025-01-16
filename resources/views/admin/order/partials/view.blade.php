Product Info
<table class="table talbe-bordered border table-striped table-hover">
    <thead>
        <tr>

            <th>Image</th>
            <th>Name</th>
            <th class="text-right">Price</th>
            <th class="text-right">Quantity</th>
            <th class="text-right">Total</th>
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
        {{-- {{ dd($items->product->selling_price) }} --}}
        <td>
            <img style="width: 100px" src="{{ dynamic_asset($items->product->upload_id) }}" alt="">

        </td>
        <td>
            {{ $items->product->name }} <br>
            {{ ($items->product_variant)->name ?? '' }}
        </td>
        <td class="text-right">
            {{ $items->product->variant_on == 1 ? ($items->product_variant->selling_price  ?? '') :  ($items->product->selling_price ?? '') }} <br>
        </td>
        <td class="text-right">{{ $items->quantity }}</td>
        <td class="text-right">{{ $items->single_subtotal }} {{ settings('currency_symbol', 9) }}</td>

    </tr>

    @endforeach




    </tbody>


</table>

<table class="table talbe-bordered border table-striped table-hover text-right">
   <tbody>

            <tr>

        {{-- {{ dd($product_data) }} --}}
                <td>Price: </td><td>{{ $product_data->subtotal->pre_price ?? null }} {{ settings('currency_symbol', 9) }}</td>
            </tr>
            <tr>
                <td>Discount: </td><td> {{ $product_data->subtotal->discount ?? null }} {{ settings('currency_symbol', 9) }}</td>
            </tr>
            <tr>
                <td>Vat: </td><td> {{ $product_data->subtotal->vat ?? null }} {{ settings('currency_symbol', 9) }}</td>
            </tr>
            <tr>
                <td>Total Price : </td><td>{{ $product_data->subtotal->price ?? null }} {{ settings('currency_symbol', 9) }}</td>
            </tr>
            <tr>
                <td>Coupon :</td><td> {{ $product_data->subtotal->coupon ?? null }} {{ settings('currency_symbol', 9) }}</td>
            </tr>
            <tr>
                <td>Subtotal : </td><td>{{ $product_data->subtotal->coupon_without_price ?? null }} {{ settings('currency_symbol', 9) }}</td>

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
