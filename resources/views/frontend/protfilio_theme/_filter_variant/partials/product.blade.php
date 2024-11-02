<div class="row row-gap-3">
    @foreach ($products as $items)
        @include('frontend.protfilio_theme._filter_variant.partials.product_items', ['product'=> $items])
    @endforeach
</div>
