<div class="row row-gap-3">
    @forelse($products as $items)

        @if(isset($details_page_slug) && $details_page_slug)
            @include('frontend.protfilio_theme._filter_variant.partials.product_items_category_slug', ['product'=> $items])
        @else
            @include('frontend.protfilio_theme._filter_variant.partials.product_items', ['product'=> $items])
        @endif
    @empty
        <div class="col-12"> <div class="p-3 bg-warning rounded"> Not Found Any Items</div></div>
    @endforelse


    @if(isset($paginate_data) && $paginate_data && $products instanceof \Illuminate\Pagination\LengthAwarePaginator )

            {{ $products->appends(request()->query())->setPath(url(url()->previous()))->links() }}
     



    @endif


</div>
