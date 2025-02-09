@if(isset($product))
@php
    if(!isset($view_page)){
        $view_page = \App\Models\Page::where('page_type', 'view')->first();
    }

@endphp

    @if(settings('product_style_1_status', 99) == 1)
    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-6">
        <div class="featured-product-card bg-white br-10">
            <div class="image-box mb-16">

                @if($product->variant == 0 && $product->selling_price < $product->old_price)
                    <span class="sale-label">
                        {{ number_format((($product->old_price - $product->selling_price ) *  100 )/ $product->old_price,2)}} %
                    </span>
                @endif

                <a href="{{ url($view_page->slug) }}?slug={{ $product->slug }}"><img src="{{ dynamic_asset($product->upload_id) }}"  class="product-image" alt=""></a>
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
                    @if($view_page)
                    <a href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">{{ $product->name }}</a>
                    @endif
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
                @if ($product->variant_on == 1)
                    <a href="{{ url($view_page->slug) }}?slug={{ $product->slug }}"  data-id="{{ $product->id }}" class="cus-btn-2 w-100">View Details</a>
                @else
                    <a href="javascript:void(0)" onclick="add_to_cart(this)" data-id="{{ $product->id }}" class="cus-btn-2 w-100">Add to Cart</a>
                @endif
            </div>
        </div>
    </div>
    @elseif(settings('product_style_2_status', 99) == 1)
    <div style="position:relative" class="product-grid-single col-sm-6 col-md-6 col-lg-3 product_style_2">
        <div class="card product-card">
            <a class="no-style-link" href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">
                <div class="gallerythumbWrapper gallerythumbWrapperLoaded"
                    style="background: url('/img/product-loader.svg') no-repeat center, linear-gradient(135deg, #ffffff 0%, #e0e0e0 100%);">

                    <img class="gallerythumb gallerythumbLoaded"
                        style="background-color:#ffffff; min-height: 13vw;" src="{{ $product->image_url}}"
                        width="100%" alt="Card image" />

                    <h6 style="text-align: center; color: #000; padding: 0px 15px;  height: 40px;"
                        class="card-text truncate">{{ Str::title($product->name ?? '') }}</h6>

                    <div style="text-align: center; color: #000;font-size: 1.2rem; padding-bottom: 7px;"
                        class="card-text price_card">
                        <span style="font-size:.8em; color: gray;"></span>
                        <br>
                        @if($product->variant_on == 0)
                            @if($product->old_price > $product->selling_price)

                                <span style="text-decoration: line-through;color: red;font-size: 1rem;">
                                    {{ settings('currency_symbol', 9). ' '.$product->old_price }}
                                </span>

                            @endif


                            {{ settings('currency_symbol', 9). ' '.$product->selling_price }}

                            
                            @if($product->old_price > $product->selling_price)
                                <div style="display:block" class="discounted_amount">
                                    <span>Save Tk. {{ settings('currency_symbol', 9) . ' '. $product->old_price -
                                        $product->selling_price }}</span>
                                </div>
                            @endif


                        @else
                            Variant Available
                        @endif

                    </div>

                </div>
            </a>

            <div data-title="{{ Str::title($product->name ?? '') }}" data-id="8" data-bs-toggle="modal"
                data-bs-target="#productQuickView" class="products-cart-button productQuickViewbtn"><i
                    class="fa fa-cart-plus"></i> Buy Now </div>


            <div style="display:block" class="sale"><span>SALE</span></div>

            @if($product->free_delivery == 1)
            <div style="display:block" class="free_delivery"><img
                    src="https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-flash-photography-images-those-icons-lineal-color-those-icons.png"><span>FREE
                    DELIVERY</span></div>
            @endif
        </div>





    </div>
    @endif
@endif
