<style>
    .product_style_4.product-item .product-item{
        background: {{ $product_style->background_color ?? '#fff' }};
    }
</style>
<div class="col-lg-3 col-sm-6 d-flex product-item my-3 product_style_4">

    <div class=" d-flex flex-column align-items-center justify-content-center product-item my-3">
        <div href="{{ url($view_page->slug) }}?slug={{ $product->slug }}" class="product" > 
                <img     src="{{ $product->image_url }}" alt="{{ $product->name ?? '' }}" alt="" onclick="window.location.href='{{ url($view_page->slug) }}?slug={{ $product->slug }}'">
     
            <ul class="d-flex align-items-center justify-content-center list-unstyled icons">
                <li class="icon btn productQuickViewbtn" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $product->id }}">
                    <span class="fas fa-expand-arrows-alt " ></span></li>
                <li class="icon mx-3" onclick="add_to_compareList({{ $product->id }})"><span class="far fa-heart"></span></li>
    
        
            
                @if ($product->variant_on == 1)
                    <li class="icon btn productQuickViewbtn" ><span class="fas fa-shopping-bag" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $product->id }}"></span></li>
                @else
                    <li class="icon" ><span class="fas fa-shopping-bag"  onclick="add_to_cart(this)" data-id="{{ $product->id }}" ></span></li>
                @endif
                
            </ul>
        </div>
        <div class="tag bg-red">sale</div>
        <div class="title pt-4 pb-1" onclick="window.location.href='{{ url($view_page->slug) }}?slug={{ $product->slug }}">{{ Str::title($product->name ?? '') }}</div>
        <div class="d-flex align-content-center justify-content-center">
              
                @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $product->rat_count, 'rating_star' => $product->avg_rat, 'rating_count' => false])
            </div>
    
            @if ($product->variant_on == 0)
                <div class="price">{{ $product->selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</div>
            @else
                <div class="price"> Variant Available</div>
            @endif
    
       
    </div>
</div>


