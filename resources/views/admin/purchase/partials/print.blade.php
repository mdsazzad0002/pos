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

        .supplier-info .left,
        .supplier-info .right {
            width: 48%;
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
            <div style="display: flex; justify-content:space-evenly">
                <div class="breadcrumb" style="line-height:0.5">
                    <img src="{{ asset('assets/dist/img/AdminLTELogo.png') }}" alt="" style="height: 44px; width:84px">
                </div>
                <div class="breadcrumb" style="line-height:0.5">
                    <h2>BD SOFT</h2>
                    <p>Mirput 10 Dhaka 1216</p>
                    <p>01715-4263541</p>
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
            <div class="right">
                <p><strong>Purchase by:</strong>{{ $purchase[0]->user->name }}</p>
                <p><strong>Invoice No.:</strong>{{ $purchase[0]->productId }}</p>
                <p><strong>Purchase Date:</strong>{{ $purchase[0]->buying_date }}</p>
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
                        <td>{{ $item->product->name }}</td>
                        <td>{{ $item->quantity }}</td>
                        <td>{{ $item->unit->name }}</td>
                        <td>{{ $item->price }}</td>
                        <td>{{ $item->total }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </section>

        <!-- Invoice Summary -->
        <section class="summary">
            @php
                
            @endphp
            <div class="left">
                <p><strong>Previous Due:</strong> 4253100</p>
                <p><strong>Current Due:</strong>{{  $totalPrice }}</p>
                <p><strong>Total Due:</strong> 4277130.00</p>
            </div>
            <div class="right">
                <p><strong>Sub Total:</strong> {{  $totalPrice }}</p>
                {{-- <p><strong>VAT:</strong> 0.00</p>
                <p><strong>Discount:</strong> 0.00</p>
                <p><strong>Transport Cost:</strong> 0.00</p> --}}
                {{-- <p><strong>Total:</strong> 24030.00</p>
                <p><strong>Paid:</strong> 0.00</p>
                <p><strong>Due:</strong> 24030.00</p> --}}
            </div>
        </section>


        <!-- Footer -->
        <section class="footer">
                <p><strong>In Word : </strong>{{ Str::title(numToWordsRec($totalPrice)) }}</p>
                <p><strong>Note:</strong> Thank you for your business.</p>
<div style="text-align: center">
    <button onclick="window.print()" class="print-button">Print</button>

</div>
        </section>

    </div>
</body>

</html>
