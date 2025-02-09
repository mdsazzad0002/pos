@php
$resent_products = \App\Models\product::where('status', 1)->limit($variant_info->items_show)->orderByDesc('updated_at')->get();
if(!isset($details_page)){
    $details_page = \App\Models\Page::where('page_type', 'view')->first();
}

@endphp

<x-frontend_section :info="$variant_info" class="_recent_product" css="_filter_variant/_recent_product.css">
    <div class="container-fluid">
        <div class="row">
            @if($resent_products && $details_page)


            @foreach ($resent_products as $key => $items)
                 @include('frontend.protfilio_theme._filter_variant.partials.product_items', ['product'=> $items])
            @endforeach

            @endif

        </div>
    </div>
</x-frontend_section>
