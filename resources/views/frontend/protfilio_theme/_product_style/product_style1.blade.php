<div class=" {{ $v_per_row }} ">
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
                    @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $p_rat_count, 'rating_star' => $p_avg_rat])
                </div>

                @if ($p_variant_on == 1)
                    <h6 ><span class="text-decoration-line-through light-gray"> In Variant</h6>
                @else
                    <h6 >
                        <span class="text-decoration-line-through light-gray">
                            {{ settings('currency_symbol', 9) }}{{ $p_old_price }}
                        </span>&nbsp;&nbsp;{{ settings('currency_symbol', 9) }}{{  $p_selling_price }}
                    </h6>
                @endif

                    @include('frontend.protfilio_theme._product_style._button.product_buttons', [
                        'root_class'=> 'd-flex gap-16',
                        'btn_class'=> 'cus-btn',
                    ])
            </div>

        </div>
    </div>
</div>
