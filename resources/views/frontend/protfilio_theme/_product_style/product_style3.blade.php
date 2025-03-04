<style>
    .product_style_3 .card::after {
        content: "{{ settings('app_name_short', 9) }}";
    }
    .product_style_3 .card::before {
        background: {{ $product_style->background_color ?? 'linear-gradient(rgb(207, 214, 230), rgb(231, 239, 249))' }};
    }
</style>



<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-lg-3 product_style_3">

    <div class="card">
        <a class="img-container" href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">
            <img class="phone" src="{{ $product->image_url }}" alt="{{ $product->name ?? '' }}" />
        </a>

        <div class="content-container">
            <a href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">
                <h1>{{ Str::title($product->name ?? '') }}</h1>
            </a>


            @if ($product->variant_on == 0)
                <h3 class="price">{{ $product->selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</h3>
            @else
                <h3 class="price"> Variant Available</h3>
            @endif


            <a data-title="{{ Str::title($product->name ?? '') }}" onclick="" data-id="{{ $product->id }}"
                data-bs-toggle="modal" data-bs-target="#productQuickView"
                class="buy cursor-pointer products-cart-button productQuickViewbtn"><i class="fa fa-cart-plus"></i> Buy
                Now </a>


        </div>

    </div>
</div>


