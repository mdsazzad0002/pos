@if(isset($product))
<div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-6">
    <div class="featured-product-card bg-white br-10">
        <div class="image-box mb-16">

            @if($product->variant == 0 && $product->selling_price < $product->old_price)
                <span class="sale-label">
                    {{ number_format((($product->old_price - $product->selling_price ) *  100 )/ $product->old_price,2)}} %
                </span>
            @endif
            {{-- {{ dd($product->category_info) }} --}}

            <a href="{{ url($details_page_slug) }}?category={{ $product->category_info?->slug }}"><img src="{{ dynamic_asset($product->upload_id) }}"  class="product-image" alt=""></a>
            <div class="side-icons">
                <ul class="list-unstyled">
                    <li>
                        <a href="javascript:void(0)" onclick="add_to_compareList({{ $product->id }})">
                            <img src="{{ asset('uploads/icons/heart.png') }}" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="btn productQuickViewbtn" data-id="{{ $product->id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
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

                <a href="{{ url($details_page_slug) }}?category={{ $product->category_info?->slug }}">{{ $product->name }}</a>

            </h6>
            <div class="text mb-16">
                <p class="light-gray line-clamp-2">{{ $product->short_description }}</p>
            </div>
            <div class="rating-star mb-16 bg-white">
                <div class="mb-24">
                    @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $product->rat_count, 'rating_star' => $product->avg_rat])
                </div>

                @include('frontend.protfilio_theme._filter_variant.partials.product_price')

            </div>

             <a href="{{ url($details_page_slug) }}?category={{ $product->category_info?->slug }}"  data-id="{{ $product->id }}" class="cus-btn-2 w-100">View Details</a>

        </div>
    </div>
</div>
@endif
