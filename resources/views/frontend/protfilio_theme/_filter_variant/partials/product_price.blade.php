@if ($product->variant == 1)
    <h6 ><span class="text-decoration-line-through light-gray"> In Variant</h6>
@else
    <h6 >
        <span class="text-decoration-line-through light-gray">
            {{ settings('currency_symbol', 9) }}{{ $product->old_price }}
        </span>&nbsp;&nbsp;{{ settings('currency_symbol', 9) }}{{  $product->selling_price }}
    </h6>
@endif
