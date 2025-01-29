<div class="row row-gap-3">
    @forelse($products as $items)
            @include('frontend.protfilio_theme._filter_variant.partials.product_items', ['product'=> $items])
    @empty
        <div class="col-12"> <div class="p-3 bg-warning rounded"> Not Found Any Items</div></div>
    @endforelse



</div>
