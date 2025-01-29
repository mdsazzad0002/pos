<div class="row row-gap-3">
    @forelse($products as $items)

        @if(isset($details_page_slug) && $details_page_slug && !$request->has('page'))
            @include('frontend.protfilio_theme._filter_variant.partials.product_items_category_slug', ['product'=> $items])
        @else
            @include('frontend.protfilio_theme._filter_variant.partials.product_items', ['product'=> $items])
        @endif
    @empty
        <div class="col-12"> <div class="p-3 bg-warning rounded"> Not Found Any Items</div></div>
    @endforelse


    @if(isset($paginate_data) && $paginate_data && $products instanceof \Illuminate\Pagination\LengthAwarePaginator )
{{-- {{ dd($request->all()) }} --}}
            {{ $products->appends(['category' => $request->category])->setPath(url($details_page_slug))->links() }}

    @endif


</div>
