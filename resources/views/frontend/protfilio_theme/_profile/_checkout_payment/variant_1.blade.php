@extends('frontend.protfilio_theme._profile.master')
@php
    if (!isset($register_page)) {
        $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
    }

    if (!isset($tracking_page)) {
        $tracking_page = \App\Models\Page::where('status', 1)->where('page_type', 'tracking')->first();
    }

    $customer = auth()->guard('customer')->user();

    // dd($location)

@endphp

@if (auth()->guard('customer')->user())

    @section('profile')
        @if (\request('order_id'))
            @php

                $order_find = \App\Models\order::findOrFail(\request('order_id'));
            @endphp
            <div class="col-12">
                <div class="row">
                    <div class="p-3">
                        <div class="card-body">
                            @if ($order_find)
                                @include('frontend.protfilio_theme._checkout_variant.partials.payment_methods')


                                <button class="btn btn-primary" type="submit" id="pay_now_btn" onclick="payment_manual(this)">
                                    {{ $order_find->current_cash_collection() }} Pay Now
                                </button>
                                <script>
                                    function payment_manual() {
                                        var payment_method = document.querySelector('input[name="plan"]:checked').value;
                                        var order_id = {{ request('order_id') }};
                                        window.location.href = '{{ url('checkout/payment') }}?order_id=' + order_id + '&payment_method=' +
                                            payment_method;
                                        // console.log(payment_method)
                                    }
                                </script>
                            @else
                                <div class="p-3">
                                    Someting went Wrong contact with Athor.
                                </div>
                            @endif
                        </div>
                    </div>


                </div>
            </div>
        @else
            <div class="p-3 bg-warning">
                Someting went Wrong contact with Athor. Order Id Not Found
            </div>
        @endif
    @endsection
@endif
