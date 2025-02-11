@extends('frontend.protfilio_theme._profile.master')
@php
if(!isset($register_page)){
    $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
}

if(!isset($tracking_page)){
    $tracking_page = \App\Models\Page::where('status', 1)->where('page_type', 'tracking')->first();
}

$customer = auth()->guard('customer')->user();

// dd($location)

@endphp

@if(auth()->guard('customer')->user())

@section('profile')


<div class="col-12">
    <div class="row">
        <div class="p-3">
            <div class="card-body">

                <table class="table table-bordered table-hover table-striped">
                    <tr>
                        <td>Order ID</td>
                        <td>Quantity</td>
                        <td>Price</td>
                        <td>Status</td>
                        <td>Payment method</td>
                        <td>Cash Collection</td>
                        <td>Track Now</td>
                    </tr>
                    @forelse ( $customer->order as $key => $order)
                    <tr>
                        <td>#{{ $order->order_id }}</td>
                        <td>{{ $order->quantity }}</td>
                        <td>{{ settings('currency_symbol', 9). ' '. $order->price }}</td>
                        <td>{{ $order->payment_method_info?->provider ?? 'Cash On Delivery'}}</td>
                        <td>{{ $order->order_status() }}</td>
                        <td>{{ settings('currency_symbol', 9) .' '. $order->cash_collection}}</td>
                        <td>
                             <a href="{{ url($tracking_page->slug) }}?id={{ $order->order_id }}&email={{ auth()->guard('customer')->user()->email }}" class="btn btn-primary">Track Now</a>
                             <a href="{{ route('order_invoice') }}?order_id={{ $order->order_id }}" class="btn btn-primary" target="_blank"><i class="fas fa-download"></i></a>
                        </td>
                    </tr>



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
                </table>

            </div>
        </div>


    </div>
</div>

@endsection
@endif
