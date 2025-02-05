
@php
$category_first = \App\Models\Category::where('id', 6)->first();
$filter_page = \App\Models\Page::where('status', 1)->where('page_type', 'filter')->first();
$detail_page = \App\Models\Page::where('status', 1)->where('page_type', 'view')->first();
$products = [];
if($category_first){
$products = \App\Models\Product::where('category', $category_first->id)->where('status', 1)->limit(8)->get();
}
@endphp
<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/_product_cat_brand_wise/_cat_product_sm.css')}}"/>

<div class="_cat_product_sm home-element">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-2 col-lg-3 col-md-4    col-6">
                <a class="product-link" href="{{ url($filter_page->slug) . '?category=' . $category_first->slug }}">
                    <div>
                        <img src="{{ dynamic_asset($category_first->upload_id) }}">
                    </div>
                    <div class="hero-link">
                       {{ $category_first->name }}
                    </div>
                </a>
            </div>

            @foreach ($products as $key => $product)
                @if(count($products) - 1 == $key)
                <div class="col-xl-2 col-lg-3 col-md-4    col-6">

                    <div class="home-product">
                        <a class="product-link" href="{{ url($filter_page->slug) . '?category=' . $category_first->slug }}">
                            <img src="{{ dynamic_asset($product->upload_id) }}">
                        </a>
                        <a class="hot-container-link" href="{{ url($filter_page->slug) . '?category=' . $category_first->slug }}">
                            <div class="hot-image-title"><span>View</span><span>More</span></div>
                        </a>
                        <div class="product-info">
                            <div class="product-name">{{ $product->name }}</div>
                        </div>
                        <div class="product-price">
                            <div>
                                <strong>{{ settings('currency_symbol',9) . ' '. $product->old_price }}</strong>
                                <strike>{{ settings('currency_symbol',9) . ' '. $product->selling_price }}</strike>
                            </div>
                        </div>
                    </div>

                </div>
                @continue
                @endif

                <div class="col-xl-2 col-lg-3 col-md-4    col-6">
                    <a class="product-link" href="{{ url($detail_page->slug) . '?slug=' . $product->slug }}">
                        <div class="home-product">
                            <img src="{{ $product->image_url }}">
                            <div class="product-info">
                                <div class="product-name">{{ $product->name }}</div>
                            </div>
                            <div class="product-price">
                                <div>
                                    <strong>{{ settings('currency_symbol',9) . ' '. $product->old_price }}</strong>
                                    <strike>{{ settings('currency_symbol',9) . ' '. $product->selling_price }}</strike>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

            @endforeach


        </div>
    </div>

</div>
</div>

