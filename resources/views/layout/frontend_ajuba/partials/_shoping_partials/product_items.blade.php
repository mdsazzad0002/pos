
@php
    $price =  0;
@endphp
<ul class="product-list p-24">
    @if(isset($products) && count($products) > 0)
        @foreach ($products as $product)
            @php
                 $price+= ($product->selling_price *  $product->items_cart);
            @endphp
                <li class="product-item mb-24" data-id="{{ $product->id ?? '' }}">
                    <span class="item-image">
                        <img src="{{dynamic_asset($product->upload_id)}}" alt="Product Photo">
                    </span>
                    <div class="product-text">
                        <div class="prod-title mb-16">
                            <h6>{{ $product->name ?? '' }}</h6>
                            <a href="javascript:void(0);" class="cancel" onclick="remove_cart({{ $product->id }})">
                                <img src="{{asset('uploads/')}}/images/cancel.png" alt="" style="margin-bottom: 5px;">
                            </a>
                        </div>
                        <div class="prod-desc">
                            <div>
                                <p class="fw-500">Quantity: {{ $product->items_cart ?? 0 }}</p>
                                <p class="fw-500">
                                    {{settings('currency_symbol', 9) . ($product->selling_price) }} x {{ $product->items_cart }} =
                                    {{settings('currency_symbol', 9) . ($product->selling_price * $product->items_cart ) }}</p>
                            </div>
                            <div class="quantity quantity-wrap d-inline-flex">
                                <div class="input-area quantity-wrap">
                                    <input class="decrement" type="button" value="-">
                                    <input type="text" name="quantity" value="{{ $product->items_cart ?? 0 }}" maxlength="2" size="1"
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
<div class="price-total p-24">
    <span class="h5">SUBTOTAL</span>
    <span class="h5">{{settings('currency_symbol', 9) .  $price }}</span>
</div>
