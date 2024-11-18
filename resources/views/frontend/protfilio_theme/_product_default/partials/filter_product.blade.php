<div class="row row-gap-3">
    @include('frontend.protfilio_theme._filter_variant.partials.product', ['products' => $product_list])
</div>
<div class="pagination pt-40">

    <input type="text" hidden class="first_items" value="{{ $product_list->firstItem()  }}">
    <input type="text" hidden class="last_items" value="{{ $product_list->lastItem()  }}">


    <input type="text" hidden class="total_items" value="{{ $product_list->total()  }}">
    {{ $product_list->links() }}
</div>
