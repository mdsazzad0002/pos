@php
    $order_history = \App\Models\order::findOrFail(\request()->order_id);

if(!isset($tracking_page)){
    $tracking_page = \App\Models\Page::where('status', 1)->where('page_type', 'tracking')->first();
}

@endphp
<div class="success_style1">
    <div class="container">
        @if ($order_history)
            <div class="text-center">
                <br>
                <br>
                <div>
                    <h1 class="text-dark">{{ __('frontend.order_success') }}</h1>
                    <h2 class="text-dark"> {{ $order_history->customer->name ?? '' }}</h2>
                </div>
                <br>
                <br>
                <div class="text-center">
                    <i class="fa fa-shopping-bag order_cart_bag" aria-hidden="true"></i>
                </div>
                <br>
                <br>

                <div class="text-center">
                    Order Id #{{ $order_history->order_id }} </br>
                    Order Amount : {{ settings('currency_symbol'). ' '. $order_history->price }} </br>
                    {{ __('order.success_text') }}
                </div>
                <br>

                <div class="d-flex gap-4 align-items-center justify-content-center">

                    <a class="btn btn-primary" href="{{ route('order_invoice') }}?order_id={{ $order_history->order_id }}">View Invoice</a>

                    <a class="btn btn-dark" href="{{ url($tracking_page->slug) }}?id={{ $order_history->order_id }}&email={{ $order_history->customer->email ?? '' }}">Track  Order</a>

                </div>
            </div>

        @else
            <div>
                {{ __('frontend.order_error') }}
            </div>
        @endif
    </div>
    <br>
    <br>
</div>

<style>
    .order_cart_bag{
        color:var(--primary-color);
        font-size: 76px;
    }

    .success_style1 {
        width:650px;
        background: #afd9af;
        max-width: 80%;
        margin: auto;
        border-radius: 25px;
    }

</style>

