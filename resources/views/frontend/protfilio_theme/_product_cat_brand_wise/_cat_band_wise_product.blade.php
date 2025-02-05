@php
$subcategory_first = \App\Models\Category::where('status', 1)->get();
$filter_page = \App\Models\Page::where('status', 1)->where('page_type', 'filter')->first();
@endphp

<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/_product_cat_brand_wise/_cat_band_wise_product.css')}}" />
<div class="_cat_band_wise_product home-element">
    <div class="container-fluid">
        <div class="row">

            @foreach ($subcategory_first as $key => $items)
            <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                <div class="flex-cat-block">
                    <div class="flex-cat-img">
                        <a href="{{ url($filter_page->slug) .'?subcategory='. $items->slug }}">
                            <img src="{{ dynamic_asset($items->upload_id) }}">
                        </a>
                        <div class="flex-cat-button">
                            <a href="{{ url($filter_page->slug) .'?subcategory='. $items->slug }}"> {{ $items->name }}</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>
