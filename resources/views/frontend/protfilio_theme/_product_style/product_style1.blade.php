@php
    $p_background_color = $product_style->background_color ??  '#ffffff';

    $p_selling_price = $product->selling_price;
    $p_old_price = $product->old_price;
    $p_variant_on = $product->variant_on;
    $p_discount = number_format((($product->old_price - $product->selling_price ) *  100 )/ $product->old_price,2) ?? 0;

    $p_url = url($view_page->slug) . '?slug=' . $product->slug;
    $p_image = dynamic_asset($product->upload_id);
    $p_id = $product->id;
    $p_name = $product->name;
    $p_short_description = $product->short_description;
@endphp

<div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-6">
    <div class="featured-product-card  br-10" style="background-color:{{ $p_background_color }}">
        <div class="image-box mb-16">

            @if($p_variant_on == 0 && $p_selling_price < $p_old_price)
                <span class="sale-label">
                    {{ $p_discount}} %
                </span>
            @endif

            <a href="{{ $p_url }}"><img src="{{ $p_image }}"  class="product-image" alt=""></a>
            <div class="side-icons">
                <ul class="list-unstyled">
                    <li>
                        <a href="javascript:void(0)" onclick="add_to_compareList({{ $p_id }})">
                            <img src="{{ asset('uploads/icons/heart.png') }}" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="btn productQuickViewbtn" data-id="{{ $p_id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                            <img src="{{ asset('uploads/icons/eye.png') }}" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                            <img src="{{ asset('uploads/icons/compare.png')}}" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="product-desc">
            <h6 class="product-title mb-8">
                @if($view_page)
                <a href="{{ $p_url }}">{{ $p_name }}</a>
                @endif
            </h6>
            <div class="text mb-16">
                <p class="light-gray line-clamp-2">{{ $p_short_description }}</p>
            </div>
            <div class="rating-star mb-16">
                <div class="mb-24">
                    @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $product->rat_count, 'rating_star' => $product->avg_rat])
                </div>

                @include('frontend.protfilio_theme._filter_variant.partials.product_price')

            </div>
            @if ($product->variant_on == 1)
                <a href="{{ $p_url }}"  data-id="{{ $p_id }}" class="cus-btn-2 w-100">View Details</a>
            @else
                <a href="javascript:void(0)" onclick="add_to_cart(this)" data-id="{{ $p_id }}" class="cus-btn-2 w-100">Add to Cart</a>
            @endif
        </div>
    </div>
</div>
