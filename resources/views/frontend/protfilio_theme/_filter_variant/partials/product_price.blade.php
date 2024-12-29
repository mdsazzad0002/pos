@if ($product->variant == 0)
    <h6 >
        <span class="text-decoration-line-through light-gray">
            {{ settings('currency_symbol', 9) }}{{ $product->old_price }}
        </span>&nbsp;&nbsp;{{ settings('currency_symbol', 9) }}{{  $product->selling_price }}
    </h6>

    {{-- @if( $product->old_price > $product->selling_price)
         <span class="label white">- {{  number_format((($product->old_price - $product->selling_price ) *  100 ) / $product->old_price ,2) }}%</span>
    @endif --}}
@else
    <h6 ><span class="text-decoration-line-through light-gray"> In Variant</h6>
@endif
