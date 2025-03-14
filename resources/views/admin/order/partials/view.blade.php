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
            {{ $items->product->name ?? '' }} <br>
            {{ ($items->product_variant)->name ?? '' }}
        </td>
        <td class="text-right">
            {{ $items->product->variant_on == 1 ? ($items->product_variant->selling_price  ?? '') :  ($items->product->selling_price ?? '') }} <br>
        </td>
        <td class="text-right">{{ $items->quantity }}</td>
        <td class="text-right"> {{ settings('currency_symbol', 9) }} {{ $items->single_subtotal ?? '' }}</td>

    </tr>

    @endforeach

    <tr>
        <td colspan="5">
           <b> Note: </b><br/>
            {{ $order->note ?? '' }}
        </td>
    </tr>




    </tbody>


</table>

<table class="table talbe-bordered border table-striped table-hover text-right">
   <tbody>

            <tr>

        {{-- {{ dd($product_data) }} --}}
                <td>Price: </td><td> {{ settings('currency_symbol', 9) }} {{ $product_data->subtotal->pre_price ?? null }}</td>
            </tr>
            <tr>
                <td>Discount: </td><td>  {{ settings('currency_symbol', 9) }} {{ $product_data->subtotal->discount ?? null }}</td>
            </tr>
            <tr>
                <td>Vat: </td><td>  {{ settings('currency_symbol', 9) }} {{ $product_data->subtotal->vat ?? null }}</td>
            </tr>
            <tr>
                <td>Total Price : </td><td> {{ settings('currency_symbol', 9) }} {{ $product_data->subtotal->price ?? null }}</td>
            </tr>
            <tr>
                <td>Coupon :</td><td>{{ settings('currency_symbol', 9) }} {{ $product_data->subtotal->coupon ?? null }} </td>
            </tr>
            <tr>
                <td>Subtotal : </td><td>{{ settings('currency_symbol', 9) }} {{ $product_data->subtotal->coupon_without_price ?? 0 }} </td>

            </tr>
            {{-- {{ dd($order->shipping_charge) }} --}}
            <tr>
                <td>Shipping Charge : </td><td>{{ settings('currency_symbol', 9) }} {{ $order->shipping_charge->amount ?? '(Delivery Charge Not Selected)' }} </td>
            </tr>
            <tr>
                <td>Final Amount : </td><td>{{ settings('currency_symbol', 9) }} {{ ($product_data->subtotal->coupon_without_price ?? 0) + ($order->shipping_charge->amount ?? 0) }} </td>
            </tr>
            <tr style="background: green">
                <td>Payable Amount : </td><td>{{ settings('currency_symbol', 9) }} {{ ($order->current_cash_collection())}} </td>
            </tr>


   </tbody>
</table>

<table class="table talbe-bordered border table-striped table-hover">
    <thead>
        <tr>
            <th>Transection Id</th>
            <th>Payment Method</th>
            <th>Payment Card</th>
            <th>Payment Amount</th>
            <th>Date</th>
        </tr>

    </thead>
    <tbody>
        @foreach ($order->transection as $transection)
            <tr>
                <td>{{ $transection->mer_txnid ?? '' }}</td>
                <td>{{ $transection->payment_method ?? '' }}</td>
                <td>{{ $transection->by_method ?? '' }}</td>
                <td>{{ settings('currency_symbol', 9) }} {{ $transection->amount ?? '' }}</td>
                <td>{{ $transection->created_at->format('d-m-Y') ?? '' }}</td>
            </tr>
        @endforeach
    </tbody>
</table>



@include('admin.courier.bdcourier.bdcourier_report', ['phone' => $order->customer->phone])


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
<div>
    <br>
   Billing Address
</div>

<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Address</td>
        <td>{{ $order->billing_info->address ?? ''}}</td>
    </tr>
    <tr>
        <td>district</td>
        <td>{{ $order->billing_info->district  ?? ''}}</td>
    </tr>
    <tr>
        <td>country</td>
        <td>{{ $order->billing_info->country  ?? ''}}</td>
    </tr>
    <tr>
        <td>Apartment / Flat</td>
        <td>{{ $order->billing_info->address_optional ?? '' }}</td>
    </tr>
    <tr>
        <td>postal</td>
        <td>{{ $order->billing_info->postal  ?? ''}}</td>
    </tr>
    <tr>
        <td>state</td>
        <td>{{ $order->billing_info->state  ?? ''}}</td>
    </tr>

</table>

<div>
    <br>
    Address
</div>

<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Address</td>
        <td>{{ $order->address_info->address }}</td>
    </tr>
    <tr>
        <td>district</td>
        <td>{{ $order->address_info->district }}</td>
    </tr>
    <tr>
        <td>country</td>
        <td>{{ $order->address_info->country }}</td>
    </tr>
    <tr>
        <td>Apartment / Flat</td>
        <td>{{ $order->address_info->address_optional }}</td>
    </tr>
    <tr>
        <td>postal</td>
        <td>{{ $order->address_info->postal }}</td>
    </tr>
    <tr>
        <td>state</td>
        <td>{{ $order->address_info->state }}</td>
    </tr>

</table>

@include('admin.courier.courier_info')