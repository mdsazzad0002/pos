<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
        }

        h2 {
            font-weight: 800;
        }

        .invoice {
            padding: 5px;

            height: 100vh;
        }

        .invoice-footer,
        .invoice-header {

            margin-bottom: 20px;
        }

        .invoice-footer:after,
        .invoice-header::after {
            content: "";
            display: block;
            clear: both;
        }

        .footer-left,
        .invoice-header-left {
            width: 50%;
            float: left;
            padding: 15px;
        }

        .footer-right,
        .invoice-header-right {
            width: 40%;
            float: right;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 50px;
        }

        .invoice-table th,
        .invoice-table td {
            border: 1px solid #000;
            padding: 10px;
            text-align: center;
            border-left: 0px;
            border-right: 0px;
            border-color: #ccc;
        }

        .invoice-table th {
            background-color: #999696;
            color: #fff;
            font-weight: bold;
            text-align: center;


        }

        .invoice-total {
            float: right;
        }

        .invoice-type {
            font-size: 2rem;
            color: rgb(1, 151, 81);
            font-weight: bold;
            text-transform: uppercase;
        }

        .company-info {
            padding: 8px;
            margin-top: 10px;
            border: 2px solid black;
        }

        .customer-details {
            margin-top: 12px;

        }

        .customer-details .customer-title {
            font-weight: bold;
            text-decoration: underline;
            thead-underline: 5px solid #000;
        }

        .customer-details .customer-name {
            font-weight: bold;
            font-size: 2rem
        }

        .customer-details .customer-address div {
            margin-top: 2px;
            font-size: 0.8rem;
        }

        .text-center {
            text-align: center
        }

        .mt-2 {
            margin-top: 2px;
        }

        .text-right,
        .invoice-table td.text-right {
            text-align: right !important;
        }
    </style>

</head>

<body>

    @php
        $unit = App\Models\unit::find($order->unit_id);
    @endphp

    <div class="invoice">
        <div class="invoice-header">
            <div class="invoice-header-left">

                <img src="{{ settings('app_image', 9) }}" alt="Company Logo" width="250">

                <div class="company-info">
                   {{ settings('app_address', 9)}} <br />
                    Helpline: {{ settings('app_tel', 9) }}
                </div>

                <div class="customer-details">
                    <div class="customer-title">
                        Customer Details
                    </div>
                    <div class="customer-name">
                        {{ $order->address_info->name ?? '' }}
                    </div>
                    <div class="customer-address">
                        <div>Address: {{ $order->address_info->address ?? '' }}</div>
                        <div>Email: {{ $order->address_info->email }}</div>
                        <div>Contact Phone: {{ $order->address_info->phone }}</div>
                    </div>
                </div>
            </div>

            <div class="invoice-header-right text-right">
                <h2 class="invoice-type text-right">INVOICE</h2>
                <br />
                <br />
                <br />
                <br />
                <br />
   
                {{-- {!! $qrcode_data !!} --}}
                <div>Date: {{ $order->created_at->format('d-M-Y h:i:s A') }}</div>
                <div class="mt-2">Invoice:

                    <b>#{{ $order->order_id }}</b>
                </div>
            </div>
        </div>
        @php
            $product_info = json_decode($order->product_json);
        @endphp

        {{-- {{ dd($order->product_json) }} --}}

        <table class="invoice-table">
            <thead>
                <tr>
                    <th>SI</th>
                    <th>ITEM</th>
                    <th>ACT TYPE</th>
                    <th>UOM</th>
                    <th>QTY</th>
                    <th>UNIT PRICE</th>
                    <th>TOTAL</th>
                </tr>

            </thead>
            <tbody>

                @foreach ($product_info->product as $key => $items)
                    <tr>
                        <td>{{ $key + 1 }}</td>
                        <td style="">
                            {{ $items->product->name }}
                        </td>
                        <td style="">
                            {{ $items->product->weight }}
                        </td>
                        <td style="">
                            @php
                                $unit = App\Models\unit::find($items->product->unit);
                            @endphp
                            {{ $unit?->name ?? '' }}
                        </td>
                        <td>
                            {{ $items->quantity }}
                        </td>
                        <td>{{ settings('currency_symbol', 9) . ' ' . $items->product->selling_price }}</td>
                        <td>{{ settings('currency_symbol', 9) . ' ' . $items->quantity * $items->product->selling_price }}
                        </td>
                    </tr>
                @endforeach

                @php 
                $product_info  = $product_info->subtotal;
               // dd($product_info)
                @endphp
                <tr>
                    <td class="text-right" colspan="7">
                        Total = {{ settings('currency_symbol', 9) . ' ' . $product_info->pre_price }}
                    </td>
                </tr>
                <tr>
                    <td class="text-right" colspan="7">
                        Tax = {{ settings('currency_symbol', 9) . ' ' . $product_info->vat }}
                    </td>
                </tr>
                <tr>
                    <td class="text-right" colspan="7">
                        Special Discount = {{ settings('currency_symbol', 9) . ' ' . $product_info->discount }}
                    </td>
                </tr>
                <tr>
                    <td class="text-right" colspan="7">
                        Shipping Charge = {{ settings('currency_symbol', 9) }} {{ ($order->cash_collection -  $order->price   ) }}
                    </td>
                </tr>
                <tr>
                    <td class="text-right" colspan="7">
                       Sub Total = {{ settings('currency_symbol', 9) . ' ' . $order->price }}
                    </td>
                </tr>

                <!-- Add more items as needed -->
            </tbody>
        </table>

     

        @foreach ($order->transection as $transection)
            <div class="invoice-footer">
                <div class="footer-left">
                    Payment Data: <br />
                    Account : {{ $transection->payment_method->provider ?? '' }}<br />
                    Name : {{ $transection->name }} <br />
                    Method : {{ $transection->by_method }}<br />
                    Transaction ID: {{ $transection->mer_txnid }} <br />
                </div>
                <div class="footer-right">
                    <BR />
                    <div class="mt-3">Amount: {{ settings('currency_symbol', 9) . ' ' . $transection->amount }}</div>
                    <div class="mt-3">Sub Total: {{ settings('currency_symbol', 9) . ' ' . $transection->amount }}
                    </div>
                </div>
            </div>
            <hr>
        @endforeach

        <div class="invoice-footer">
            <div style="font-weight: bold">Due Amount :
                {{ settings('currency_symbol', 9) . ' ' . $order->current_cash_collection() }}</div>
            <div>Terms and Conditions</div>
            <div>Installation & Repair work for any problem within 30 days will be free of cost</div>
        </div>
    </div>
    {{-- {{ dd($order->transection) }} --}}
</body>

</html>
