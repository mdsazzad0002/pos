@if($product->variant_option_info != null)
<div class="product_variant">
    <h6>Variant:</h6>
    <div class="product-text-container_fornt bg-white br-20">
        @foreach ($product->variant_option_info as $items_variant)
            <div class="option product_variant" data-price="{{ $items_variant->selling_price }}" data-old_price="{{ $items_variant->old_price }}" data-quantaty="true" onclick="price_change(this)">
                <input type="radio" id="size{{ $items_variant->id }}" value="{{ $items_variant->id }}"  name="size" class="option-input variant_size product_variant"
                    >
                <label class="option-label" for="size{{ $items_variant->id }}">
                    <span class="option-text text-capitalize">{{$items_variant->name}}</span>
                    <span class="option-price">{{ settings('currency_symbol', 9) }}{{$items_variant->selling_price}}</span>
                </label>
            </div>
        @endforeach
    </div>
</div>
@endif
