

<ul class="product-list p-24">

    @if(isset($product_cart) && $product_cart && isset($product_cart->product))
        @foreach ($product_cart->product as $product)

                <li class="product-item mb-24" data-id="{{ $product['product']->id ?? '' }}">
                    <span class="item-image">
                        <img src="{{dynamic_asset($product['product']->upload_id)}}" alt="Product Photo">
                    </span>
                    <div class="product-text">
                        <div class="prod-title mb-16">
                            <h6>{{ $product['product']->name}}  {{ $product['product_variant'] ? '('. $product['product_variant']->name .')' : ''  }}</h6>
                            <a href="javascript:void(0);" class="cancel" onclick="remove_cart({{ $product['product']->id }}, {{ $product['size'] }})">

                                <img src="{{asset('uploads/')}}/images/cancel.png" alt="" style="margin-bottom: 5px;">
                            </a>
                        </div>
                        <div class="prod-desc">
                            <div>
                                <p class="fw-500">Quantity: {{  $product['quantity'] ?? 0 }}</p>
                                <p class="fw-500">
                                    {{settings('currency_symbol', 9) .' '. ($product['price']) }} x {{ $product['quantity'] }} =
                                    {{settings('currency_symbol', 9) .' '. ($product['single_subtotal'] ) }}</p>
                            </div>
                            <div class="quantity quantity-wrap d-inline-flex">
                                <div class="input-area quantity-wrap">
                                    <input class="decrement" type="button" value="-">
                                    <input type="text" name="quantity" value="{{ $product['quantity'] ?? 0 }}" maxlength="2" size="1"
                                        class="number qunataty_input">
                                    <input class="increment" type="button" value="+">
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="hr-line mb-24"></li>
        @endforeach
    @endif
</ul>
<div class="price-coupon p-24  py-1 d-flex justify-content-between">
    <span class="h5">Coupon</span>
    <span class="h5">{{settings('currency_symbol', 9) . ' '. $product_cart->subtotal['coupon'] ?? ''}}</span>
</div>
<div class="price-total p-24  py-1">
    <span class="h5">SUBTOTAL</span>

    <span class="h5">{{settings('currency_symbol', 9) . ' '. $product_cart->subtotal['coupon_without_price'] ?? ''}}</span>
</div>
