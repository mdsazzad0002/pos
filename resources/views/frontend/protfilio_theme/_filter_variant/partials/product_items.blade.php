@if(isset($product))
<div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6">
    <div class="featured-product-card bg-white br-10">
        <div class="image-box mb-16">
            <span class="sale-label">-12%</span>
            <a href="shop-detail.html"><img src="{{ dynamic_asset($product->upload_id) }}"  class="product-image" alt=""></a>
            <div class="side-icons">
                <ul class="list-unstyled">
                    <li>
                        <a href="wishlist.html">
                            <img src="assets/media/icons/heart.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="btn productQuickViewbtn" data-id="{{ $product->id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                            <img src="assets/media/icons/eye.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                            <img src="assets/media/icons/compare.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="product-desc">
            <h6 class="product-title mb-8"><a href="shop-detail.html">{{ $product->name }}</a></h6>
            <div class="text mb-16">
                <p class="light-gray line-clamp-2">{{ $product->short_description }}</p>
            </div>
            <div class="rating-star mb-16 bg-white">
                <div class="mb-24">
                    @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $product->review_count, 'rating_star' => $product->review_avg_rating])
                </div>

                @include('frontend.protfilio_theme._filter_variant.partials.product_price')

            </div>
            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
        </div>
    </div>
</div>
@endif
