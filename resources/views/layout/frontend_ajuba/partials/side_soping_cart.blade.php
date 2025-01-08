@php

    $cart_page = \App\Models\Page::where('page_type', 'cart')->first();
    $checkout_page = \App\Models\Page::where('page_type', 'checkout')->first();
@endphp

<aside id="sidebar-cart">
    <div class="title-cart-block mb-32 bg-lightest-gray">
        <h6>Shopping Cart (<span class="cart_items">0</span>)</h6>
        <a href="#" class="close-button close-popup"><span class="close-icon">X</span></a>
    </div>
   <div class="shoping_content">
        {{-- @include('layout.frontend_ajuba.partials._shoping_partials.product_items') --}}
   </div>
    <div class="hr-line mb-24"></div>
    @if ($cart_page && $checkout_page)

        <div class="action-buttons p-24  py-2">
            <a href="{{ url($cart_page->slug) }}" class="cus-btn-2">{{ $cart_page->name ?? '' }}</a>
            <a href="{{ url($checkout_page->slug) }}" class="cus-btn active-btn">{{ $checkout_page->name ?? '' }}</a>
        </div>

    @endif
</aside>
<div id="sidebar-cart-curtain" class="close-popup"></div>


<style>
    .product-text{
        width: 100%;
    }
    .prod-title{
        justify-content: space-between;
        width: 100%;
    }
    #sidebar-cart .product-list .product-item .product-text .prod-title{
        margin-bottom: 0px;
    }
</style>

