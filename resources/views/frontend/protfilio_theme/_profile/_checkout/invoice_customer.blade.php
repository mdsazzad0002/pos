<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>

<style>
    body {
        font-family: Arial, sans-serif;
    }

    h2 {
        font-weight: 800;
    }

    .invoice {
        padding: 20px;
        border: 1px solid #ccc;
        height: 100vh;
    }

    .invoice-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }

    .invoice-header-left {
        flex: 1 1 50%;
    }

    .invoice-header-right {
        flex: 1 1 50%;
        text-align: right;
    }

    .invoice-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20%;
    }

    .invoice-table th,
    .invoice-table td {
        border: 1px solid #000;
        padding: 10px;
        text-align: center;
    }

    .invoice-table th {
        background-color: #E64A19;
        color: #fff;
        font-weight: bold;
        text-align: center;
    }

    .invoice-total {
        float: right;
    }
</style>

</head>
<body>

    <div class="invoice">
        <div class="invoice-header">
            <div class="invoice-header-left">

             <img src="{{ settings('app_image', 9) }}" alt="Company Logo" width="150">
             {{-- <img src="{{ asset('frontend/protfilio_theme/img/pdf_image/Logo 03_1739195641132_fboaph.png') }}" alt="Company Logo" width="150"> --}}
                <h1>{{$order->address_info->name ?? '' }}</h1>
                <p>Address: {{ $order->address_info->address ?? '' }}</p>
                <p>Email: {{ $order->address_info->email }}</p>
                <p>Phone: {{ $order->address_info->phone }}</p>
            </div>

            {{-- <div class="invoice-header-left">
             <img src="{{ settings('app_image', 9) }}" alt="Company Logo" width="150">
                <h1>{{ settings('app_title', 9) }}</h1>
                <p>{{ settings('app_address', 9) }}</p>
                <p>Email: {{ settings('app_email', 9) }}</p>
                <p>Phone: {{ settings('app_tel', 9) }}</p>
            </div> --}}
            <div class="invoice-header-right">
                <h2>Invoice</h2>
                <p>Invoice Number: #{{ $order->order_id }}</p>
                <p>Date: {{ $order->created_at->format('d-M-Y h:i:s A') }}</p>
            </div>
        </div>
        @php
            $product_info =  json_decode($order->product_json);
        @endphp

        {{-- {{ dd($order->product_json) }} --}}

        <table class="invoice-table">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Unit Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($product_info->product as $key => $items )
                    <tr>
                        <td style="">
                            <div>
                                <img src="{{ dynamic_asset($items->product->upload_id) }}" alt="" style="width: 60px"/> </br>
                            </div>
                            <div>
                                {{ $items->product->name }}
                            </div>
                        </td>
                        <td>
                            {{ $items->quantity }}
                        </td>
                        <td>{{ settings('currency_symbol', 9). ' '.   $items->product->selling_price }}</td>
                        <td>{{ settings('currency_symbol', 9). ' '.   $items->quantity * $items->product->selling_price }}</td>
                    </tr>
                @endforeach

                <!-- Add more items as needed -->
            </tbody>
        </table>

        <div class="invoice-total">
            <p>Subtotal: {{ settings('currency_symbol', 9). ' '.   $order->price  }}</p>
        </div>

        <div class="invoice-footer">
            <div class="text-center mt-3">
                <p>Thank you for your support</p>
                <p>Best regards</p>
                <p>{{ settings('app_title', 9) }}</p>
            </div>
        </div>
    </div>
</body>
</html>


