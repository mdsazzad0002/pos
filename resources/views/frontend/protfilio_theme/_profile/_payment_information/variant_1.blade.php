@extends('frontend.protfilio_theme._profile.master')
@php
    if (!isset($register_page)) {
        $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
    }

    $customer = auth()->guard('customer')->user();

    // dd($location)

@endphp

@if (auth()->guard('customer')->user())

    @section('profile')
        <div class="col-12">
            <div class="row">
                {{-- {{ dd($customer->order) }} --}}
                <div class="p-3">

                    @forelse ($customer->order as $order)
                        <table class="table table-bordered table-striped table-hover mt-2">
                            <thead>
                                <tr>
                                    <th>Order_id</th>
                                    <th>Transection_id</th>
                                    <th>Method</th>
                                    
                                    <th>Status</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($order->transection as $transection)
                                    <tr>
                                        <td><a target="_blank" href="{{ url('invoice?order_id='.$order->order_id) }}"> #{{ $order->order_id }}</a></td>
                                        <td>{{ $transection->mer_txnid }}</td>
                                        <td>{{ $transection->status }}</td>
                                        <td>{{ $transection->by_method }}</td>
                                        <td>{{ $transection->amount }}</td>
                                    </tr>
                                @endforeach
                            </tbody>

                        </table>
                    @empty
                        <div class="col-12">
                            <div class="bg-warning rounded shadow p-4 text-center">
                                <h3>
                                    Not found
                                </h3>
                                <br>
                                Location Data
                            </div>
                        </div>
                    @endforelse

                </div>

            </div>
        </div>
        </div>
    @endsection
@endif
