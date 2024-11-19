@php
$filter_page = \App\Models\Page::where('status', 1)->where('page_type', 'filter')->first();
@endphp
<!-- Recommended Product Start -->
<section class="recommended-product bg-lightest-gray pb-40">
    <div class="container-fluid">
        <div class="top-bar mb-16">
            <h5>Recommended Products</h5>
            <a href="{{ url($filter_page->slug) }}?category={{ $products->category_info->slug ?? '' }}"
                class="cus-btn-arrow"> Show All
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15" viewBox="0 0 20 15" fill="none">
                    <path
                        d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                        stroke="#0C0C0D" stroke-width="2" />
                </svg>
            </a>
        </div>

        @php
        $samilar_product = \App\Models\product::where('category', $products->category)->whereNot('id',
        $products->id)->limit(20)->paginate(20);
        @endphp

        @include('frontend.protfilio_theme._product_default.partials.filter_product', ['product_list'=>
        $samilar_product])

    </div>
</section>
<!-- Recommended Product End -->
