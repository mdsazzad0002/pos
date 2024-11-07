<div class="row row-gap-3">
    @include('frontend.protfilio_theme._filter_variant.partials.product', ['products' => $product_list])
</div>
<div class="pagination pt-40">
    {{ $product_list->links() }}
</div>
