
<style>
    .product_style_6 .card{
        background: {{ $product_style->background_color ?? '#fff' }};
    }
</style>
<div style="position:relative" class="product-grid-single {{ $v_per_row }}  product_style_6">
    <div class="card mb-3">
        <img class="card-img-top" src="{{ $p_image }}"
          style="width: 100%;" alt="Card image cap">
        <div class="product-detail">
            <h5 class="card-title heading text-center">{{ $p_name }}</h5>
            <span class="subheading">{{ $product->category_info?->name ?? 'Unknown' }}</span>
            <blockquote>
                <p>'{{ $p_short_description }}'</p>
            </blockquote>
            <a type="button" href="{{ $p_url}}" class="btn btn-outline-dark">BUY NOW</a>
        </div>
    </div>
</div>
