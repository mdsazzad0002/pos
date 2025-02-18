<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Purchase Invoice</title>
    <style>
        /* General Reset */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            background: #f9f9f9;
        }

        .invoice-container {
            max-width: 900px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        header.invoice-header {
            text-align: center;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        header .breadcrumb {
            font-size: 14px;
            margin-bottom: 10px;
        }

        header .breadcrumb a {
            color: #007bff;
            text-decoration: none;
        }

        header .breadcrumb span {
            color: #555;
        }

        header h2 {
            font-size: 24px;
            margin: 0;
        }

        .supplier-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .supplier-info .left, {
            width: 45%;
        }

        .supplier-info .right {
            width:55%;
            justify-content:space-between;
        }

        .supplier-info p {
            margin: 5px 0;
        }

        .invoice-table table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .invoice-table th,
        .invoice-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        .invoice-table th {
            background: #f4f4f4;
        }

        .summary {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .summary .left,
        .summary .right {
            width: 48%;
        }

        .summary p {
            margin: 5px 0;
        }

        .footer {
            border-top: 1px solid #ddd;
            padding-top: 10px;
        }

        .footer p {
            margin: 5px 0;
        }
        @media print {
            .print-button {
                display: none;
            }

            body {
                background: #fff;
                font-size: 12pt;
            }

            .invoice-container {
                box-shadow: none;
                border: none;
                margin: 0;
                padding: 0;
            }
        }

    </style>
</head>

<body>
    <div class="invoice-container">
        <!-- Header -->
        <header class="invoice-header">
            <div style="display: flex; justify-content:space-evenly; align-items:center;">
                <div class="breadcrumb" style="line-height:0.5">
                    <img src="{{ settings('app_image', 9) }}" alt="" style="height: 80px;">
                </div>
                <div class="breadcrumb d-flex flex-column" style="line-height:0.5">
                    <h2>{{settings('app_title', 9)}}</h2>
                    <p>{{settings('address', 9)}}</p>
                    <p>{{settings('app_tel', 9)}}</p>
                </div>
            </div>
            <hr>
            <hr>
            <h2>Purchase Invoice</h2>
        </header>

        <!-- Supplier and Invoice Details -->
        <section class="supplier-info">
            <div class="left">
                <p><strong>Supplier ID:</strong>{{ $purchase[0]->supplier->id }}</p>
                <p><strong>Supplier Name:</strong>{{ $purchase[0]->supplier->name }}</p>
                <p><strong>Supplier Address:</strong>{{ $purchase[0]->supplier->areaItem->name }}</p>
                <p><strong>Supplier Mobile:</strong>{{ $purchase[0]->supplier->phone }}</p>
            </div>
            <div class="right" style="display:flex;">
                <div>
                    <p><strong>Purchase by:</strong>{{ $purchase[0]->user->name }}</p>
                    <p><strong>Invoice No.:</strong>{{ $purchase[0]->productId }}</p>
                    <p><strong>Purchase Date:</strong>{{ $purchase[0]->buying_date }}</p>
                </div>
                <div>
                    <div  style="
                    text-align:center; 
                    display:flex;
                    align-items:center;
                    flex-direction:column;
                    
                    ">
                        <div style=" border: 1px solid #cfcfcf; border-radius:5px;">
        
                            {!! $data!!}
                            <span style="
                                border: 1px solid #cfcfcf;
                                display: block;
                                border-bottom: none;
                                border-left: none;
                                border-right: none;
                                background: #e5e5e5;
                                padding: 2px 0px;
                                color: #07336d;
                                font-weight: 700;
                            ">Scan & View</span>
                        </div>
                    
                     
                    </div>
                </div>
            
            </div>
        </section>

        <!-- Items Table -->
        <section class="invoice-table">
            <table>
                <thead>
                    <tr>
                        <th>Sl.</th>
                        <th>Name</th>
                        <th>Qty</th>
                        <th>Unit</th>
                        <th>Unit Price</th>
                        <th>Total</th>
                    </tr>
                </thead>
                @php
                    $totalPrice = 0;
                @endphp
                <tbody>
                    @foreach ($purchase as $key=>$item )

                    @php
                         $totalPrice+=$item->total;
                    @endphp
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ Str::title($item->product?->name) }}
                            
                            @if($item->varinat_id != 0)
                                </br>
                                {{Str::title(Str::replace(':', ' ', $item->variant?->name ?? ''))}}
                            @endif

                        </td>
                        <td>{{ $item->quantity }}</td>
                        <td>{{ $item->unit->name }}

                        @if($item?->product?->unit != $item?->unit?->id)
                            {{ $item?->unit?->subitems?->name ?? '' }}
                        @endif

                        </td>
                        <td> &nbsp;{{settings('currency_symbol',9)}} &nbsp; {{ $item->price }}</td>
                        <td> &nbsp;{{settings('currency_symbol',9)}} &nbsp; {{ $item->total }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </section>

        <!-- Invoice Summary -->
        <section class="summary">

            <div class="left" >
               
            </div>
            <div class="right">
                <p><strong>Sub Total:</strong>  &nbsp;{{settings('currency_symbol',9)}} &nbsp;{{  $totalPrice }}</p>
                <p><strong>In Word : </strong>{{ Str::title(numToWordsRec($totalPrice)) }} ({{settings('currency_symbol',9)}})</p>

                <p><strong>Current Due:</strong> &nbsp;{{settings('currency_symbol',9)}} {{
                    (($previous_due != null) ? $previous_due->total_sum : 0) - (($supplier_payment != null) ?  $supplier_payment->payment : 0) + (($supplier_refund != null) ?  $supplier_refund->payment : 0)
                    }}</p>
                <p>
                    
            </div>
        </section>
      


        <!-- Footer -->
        <section class="footer">
            <div style="text-align: center">
                <p><strong>Note:</strong> Thank you for your business.</p>
                <button onclick="window.print()" class="print-button">Print</button>
            </div>
        </section>

    </div>
</body>

</html>
