 <!-- HERO BANNER START -->
 <section class="hero-banner py-24">
    <div class="container-fluid">
        <div class="row row-gap-3">
            <div class="col-xl-8 col-lg-12">
                <div class="banner-right">
                    <div class="banner-content-right"
                        style="background: url('{{ asset('uploads/banner/banner-1.png') }}') no-repeat; background-size: cover;">
                        <div class="text-box">
                            <h6 class="color-ter mb-32 d-sm-block d-none">NEW ARRIVALS</h6>
                            <h2 class="white fw-600 mb-8">4K LCD <br> <span
                                    class="color-ter">Quantum&nbsp;</span>Vision LCD</h2>
                            <h6 class="white mb-32">Limited Time: Online Only!</h6>
                            <a href="shop-list-1.html" class="cus-btn-3 sec">Shop Now</a>
                        </div>
                        <div class="image-area">
                            <img src="{{ asset('uploads/') }}/banner/banner-sub-1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-12">
                <div class="d-xl-block d-sm-flex gap-16">
                    <div class="banner-right mb-16">
                        <div class="banner-content-right v-2"
                            style="background: url('{{ asset('uploads/banner/banner-2.png') }}') no-repeat; background-size: cover;">
                            <div class="text-box">
                                <h5 class="fw-500 mb-16"><a href="shop-detail.html" class="white">Mobile
                                        <br> <span class="color-ter">Nexus&nbsp;</span>Mobile Pro 256GB</a>
                                </h5>
                                <p class="white fw-500">Limited Time: Online Only!</p>
                            </div>
                            <div class="image-area">
                                <a href="shop-detail.html">
                                    <img src="{{ asset('uploads/') }}/banner/banner-sub-2.png"
                                        alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="banner-right">
                        <div class="banner-content-right v-3"
                            style="background: url('{{ asset('uploads/banner/banner-3.png') }}') no-repeat; background-size: cover;">
                            <div class="text-box">
                                <h5 class="fw-500 mb-16"><a href="shop-detail.html" class="white">iPadMini
                                        <br> <span class="color-ter">10 Inch&nbsp;</span>iPad Mini Pro</a>
                                </h5>
                                <p class="white fw-500">Limited Time: Online Only!</p>
                            </div>
                            <div class="image-area">
                                <a href="shop-detail.html"><img
                                        src="{{ asset('uploads/') }}/banner/banner-sub-3.png"
                                        alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- HERO BANNER END -->

<!-- Product Categories Start -->
@include('frontend.home.partials.categories')
<!-- Product Categories End -->

<!-- Featured Product Start -->
@include('frontend.home.partials.feature_product')
<!-- Featured Product End -->

<!-- Popular Product Start -->
@include('frontend.home.partials.popular_product')
<!-- Popular Product End -->

<!-- Inner Banner Start -->
<section class="inner-banner">
    <div class="container-fluid">
        <div class="inner-content">
            <div class="inner-text">
                <h2 class="white">Big Saving Await! <br> <span class="color-ter">Shop
                        Now</span>&nbsp;for Unbeatable Deals!</h2>
            </div>
            <div class="inner-image">
                <img src="{{ asset('uploads/') }}/images/banner-image-1.png" alt="">
            </div>
            <div class="inner-image-2">
                <img src="{{ asset('uploads/') }}/images/banner-image-2.png" alt="">
            </div>
        </div>
    </div>
</section>
<!-- Inner Banner End -->

<!-- Recommended Product Start -->
<section class="recommended-product bg-lightest-gray py-40">
    <div class="container-fluid">
        <div class="top-bar mb-16">
            <h5>Recommended Products</h5>
            <a href="shop-grid-sidebar-1.html" class="cus-btn-arrow"> Show All
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                    viewBox="0 0 20 15" fill="none">
                    <path
                        d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                        stroke="#0C0C0D" stroke-width="2" />
                </svg>
            </a>
        </div>
        <div class="row row-gap-3">
            <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                <div class="featured-product-card bg-white br-10">
                    <div class="image-box mb-16">
                        <span class="sale-label">-12%</span>
                        <a href="shop-detail.html"><img
                                src="{{ asset('uploads/') }}/products/rec-1.png" class="product-image"
                                alt=""></a>
                        <div class="side-icons">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="wishlist.html">
                                        <img src="{{ asset('uploads/') }}/icons/heart.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#productQuickView">
                                        <img src="{{ asset('uploads/') }}/icons/eye.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="zui-wrapper-button"
                                        data-bs-toggle="modal" data-bs-target="#comparepopup">
                                        <img src="{{ asset('uploads/') }}/icons/compare.png"
                                            alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-desc">
                        <h6 class="product-title mb-8"><a href="shop-detail.html">White Earbuds</a></h6>
                        <div class="text mb-12">
                            <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra
                                cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam
                                risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                        </div>
                        <div class="rating-star mb-16 bg-white">
                            <h5 class="color-sec mb-24">★★★★<span
                                    class="light-gray">★</span>&nbsp;&nbsp;<span
                                    class="text-16 fw-400 dark-black">(80)</span></h5>
                            <h6><span class="text-decoration-line-through light-gray">
                                    $12.00</span>&nbsp;&nbsp;$10.00</h6>
                        </div>
                        <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                <div class="featured-product-card bg-white br-10">
                    <div class="image-box mb-16">
                        <span class="sale-label">-12%</span>
                        <a href="shop-detail.html"><img
                                src="{{ asset('uploads/') }}/products/rec-2.png" class="product-image"
                                alt=""></a>
                        <div class="side-icons">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="wishlist.html">
                                        <img src="{{ asset('uploads/') }}/icons/heart.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#productQuickView">
                                        <img src="{{ asset('uploads/') }}/icons/eye.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="zui-wrapper-button"
                                        data-bs-toggle="modal" data-bs-target="#comparepopup">
                                        <img src="{{ asset('uploads/') }}/icons/compare.png"
                                            alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-desc">
                        <h6 class="product-title mb-8"><a href="shop-detail.html">Gaming RBG Mouse</a>
                        </h6>
                        <div class="text mb-12">
                            <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra
                                cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam
                                risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                        </div>
                        <div class="rating-star mb-16 bg-white">
                            <h5 class="color-sec mb-24">★★★★<span
                                    class="light-gray">★</span>&nbsp;&nbsp;<span
                                    class="text-16 fw-400 dark-black">(80)</span></h5>
                            <h6><span class="text-decoration-line-through light-gray">
                                    $12.00</span>&nbsp;&nbsp;$10.00</h6>
                        </div>
                        <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                <div class="featured-product-card bg-white br-10">
                    <div class="image-box mb-16">
                        <span class="sale-label">-12%</span>
                        <a href="shop-detail.html"><img
                                src="{{ asset('uploads/') }}/products/rec-3.png" class="product-image"
                                alt=""></a>
                        <div class="side-icons">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="wishlist.html">
                                        <img src="{{ asset('uploads/') }}/icons/heart.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#productQuickView">
                                        <img src="{{ asset('uploads/') }}/icons/eye.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="zui-wrapper-button"
                                        data-bs-toggle="modal" data-bs-target="#comparepopup">
                                        <img src="{{ asset('uploads/') }}/icons/compare.png"
                                            alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-desc">
                        <h6 class="product-title mb-8"><a href="shop-detail.html">Key Master Elite</a>
                        </h6>
                        <div class="text mb-12">
                            <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra
                                cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam
                                risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                        </div>
                        <div class="rating-star mb-16 bg-white">
                            <h5 class="color-sec mb-24">★★★★<span
                                    class="light-gray">★</span>&nbsp;&nbsp;<span
                                    class="text-16 fw-400 dark-black">(80)</span></h5>
                            <h6><span class="text-decoration-line-through light-gray">
                                    $12.00</span>&nbsp;&nbsp;$10.00</h6>
                        </div>
                        <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                <div class="featured-product-card bg-white br-10">
                    <div class="image-box mb-16">
                        <span class="sale-label">-12%</span>
                        <a href="shop-detail.html"><img
                                src="{{ asset('uploads/') }}/products/rec-4.png" class="product-image"
                                alt=""></a>
                        <div class="side-icons">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="wishlist.html">
                                        <img src="{{ asset('uploads/') }}/icons/heart.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#productQuickView">
                                        <img src="{{ asset('uploads/') }}/icons/eye.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="zui-wrapper-button"
                                        data-bs-toggle="modal" data-bs-target="#comparepopup">
                                        <img src="{{ asset('uploads/') }}/icons/compare.png"
                                            alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-desc">
                        <h6 class="product-title mb-8"><a href="shop-detail.html">Ultra Sport Watch</a>
                        </h6>
                        <div class="text mb-12">
                            <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra
                                cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam
                                risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                        </div>
                        <div class="rating-star mb-16 bg-white">
                            <h5 class="color-sec mb-24">★★★★<span
                                    class="light-gray">★</span>&nbsp;&nbsp;<span
                                    class="text-16 fw-400 dark-black">(80)</span></h5>
                            <h6><span class="text-decoration-line-through light-gray">
                                    $12.00</span>&nbsp;&nbsp;$10.00</h6>
                        </div>
                        <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                <div class="featured-product-card bg-white br-10">
                    <div class="image-box mb-16">
                        <span class="sale-label">-12%</span>
                        <a href="shop-detail.html"><img
                                src="{{ asset('uploads/') }}/products/rec-5.png" class="product-image"
                                alt=""></a>
                        <div class="side-icons">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="wishlist.html">
                                        <img src="{{ asset('uploads/') }}/icons/heart.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#productQuickView">
                                        <img src="{{ asset('uploads/') }}/icons/eye.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="zui-wrapper-button"
                                        data-bs-toggle="modal" data-bs-target="#comparepopup">
                                        <img src="{{ asset('uploads/') }}/icons/compare.png"
                                            alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-desc">
                        <h6 class="product-title mb-8"><a href="shop-detail.html">Radiant View LCD</a>
                        </h6>
                        <div class="text mb-12">
                            <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra
                                cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam
                                risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                        </div>
                        <div class="rating-star mb-16 bg-white">
                            <h5 class="color-sec mb-24">★★★★<span
                                    class="light-gray">★</span>&nbsp;&nbsp;<span
                                    class="text-16 fw-400 dark-black">(80)</span></h5>
                            <h6><span class="text-decoration-line-through light-gray">
                                    $12.00</span>&nbsp;&nbsp;$10.00</h6>
                        </div>
                        <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                <div class="featured-product-card bg-white br-10">
                    <div class="image-box mb-16">
                        <span class="sale-label">-12%</span>
                        <a href="shop-detail.html"><img
                                src="{{ asset('uploads/') }}/products/rec-6.png" class="product-image"
                                alt=""></a>
                        <div class="side-icons">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="wishlist.html">
                                        <img src="{{ asset('uploads/') }}/icons/heart.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#productQuickView">
                                        <img src="{{ asset('uploads/') }}/icons/eye.png"
                                            alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="zui-wrapper-button"
                                        data-bs-toggle="modal" data-bs-target="#comparepopup">
                                        <img src="{{ asset('uploads/') }}/icons/compare.png"
                                            alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-desc">
                        <h6 class="product-title mb-8"><a href="shop-detail.html">Wired Head Free</a>
                        </h6>
                        <div class="text mb-12">
                            <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra
                                cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam
                                risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                        </div>
                        <div class="rating-star mb-16 bg-white">
                            <h5 class="color-sec mb-24">★★★★<span
                                    class="light-gray">★</span>&nbsp;&nbsp;<span
                                    class="text-16 fw-400 dark-black">(80)</span></h5>
                            <h6><span class="text-decoration-line-through light-gray">
                                    $12.00</span>&nbsp;&nbsp;$10.00</h6>
                        </div>
                        <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Recommended Product End -->

<!-- Brand Slider Start -->
@include('frontend.home.partials.brands')
<!-- Brand Slider End -->

<!-- Blog Section Start -->
<section class="blog-section bg-lightest-gray py-40">
    <div class="container-fluid">
        <div class="top-bar mb-16">
            <h5>Latest Blogs</h5>
            <div class="slider-arrow">
                <button class="arrow btn-prev" data-slide="blog-slider">
                    <svg xmlns="http://www.w3.org/2000/svg" width="33" height="32"
                        viewBox="0 0 33 32" fill="none">
                        <path
                            d="M12.8057 23C12.8057 20 10.0057 16 6.80566 16M6.80566 16C8.639 16 12.8057 15 12.8057 9M6.80566 16H25.8057"
                            stroke="#1B1918" stroke-width="2"></path>
                    </svg>
                </button>
                <button class="arrow btn-next" data-slide="blog-slider">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
                        viewBox="0 0 32 32" fill="none">
                        <path
                            d="M19.3545 23C19.3545 20 22.1545 16 25.3545 16M25.3545 16C23.5212 16 19.3545 15 19.3545 9M25.3545 16H6.35449"
                            stroke="#1B1918" stroke-width="2"></path>
                    </svg>
                </button>
            </div>
        </div>
        <div class="blog-slider" data-parent="blog-slider">
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-1.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">Headphone Heroes: Elevating Your Experience Quality Sound
                    </h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-2.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">Gizmo Galore: Exploring the Coolest Gadgets on the Market
                    </h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-3.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">The 4K Perspective: Gaining Insights into Ultra HD
                        Entertainment</h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-4.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">Gaming Grasp: Navigating the World of Game Controllers</h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-1.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">Headphone Heroes: Elevating Your Experience Quality Sound
                    </h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-2.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">Gizmo Galore: Exploring the Coolest Gadgets on the Market
                    </h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-3.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">The 4K Perspective: Gaining Insights into Ultra HD
                        Entertainment</h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
            <a href="blog-detail.html" class="blog-block bg-white">
                <div class="blog-image">
                    <img src="{{ asset('uploads/') }}/blogs/blog-4.png" alt="">
                </div>
                <div class="blog-content">
                    <p class="mb-16 fw-500 dark-black">24 June, 2024</p>
                    <h6 class="mb-16 fw-600">Gaming Grasp: Navigating the World of Game Controllers</h6>
                    <div class="d-flex align-items-center justify-content-between mb-16">
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/users/user-1.png" alt="">
                            <p class="light-gray">By <span class="color-primary">Emily</span></p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-1.png" alt="">
                            <p class="light-gray">Comments</p>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <img src="{{ asset('uploads/') }}/icons/icon-2.png" alt="">
                            <p class="light-gray">Views</p>
                        </div>
                    </div>
                    <p class="light-gray mb-32">Lorem ipsum dolor sit amet consectetur. Vitae vel sit
                        convallis aliquet amet vestibulum maecenas ac.</p>
                    <div class="cus-btn-arrow">Read More
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15"
                            viewBox="0 0 20 15" fill="none">
                            <path
                                d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                                stroke="#0C0C0D" stroke-width="2" />
                        </svg>
                    </div>
                </div>
            </a>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Inner Banner Start -->
<section class="inner-banner">
    <div class="container-fluid">
        <div class="inner-content v-2">
            <div class="inner-text">
                <h2 class="white"><span class="color-ter">Hurry up!</span>&nbsp;Offer ends in</h2>
            </div>
            <div class="coming-soon-cd">
                <ul class="unstyled countdown">
                    <li>
                        <h2 class="h5">365</h2>
                        <h6 class="fw-500">Days</h6>
                    </li>
                    <li>
                        <h2 class="h5">24</h2>
                        <h6 class="fw-500">Hrs</h6>
                    </li>
                    <li>
                        <h2 class="h5">60</h2>
                        <h6 class="fw-500">Min</h6>
                    </li>
                    <li>
                        <h2 class="h5">60</h2>
                        <h6 class="fw-500">Secs</h6>
                    </li>
                </ul>
            </div>
            <div class="inner-image-2">
                <img src="{{ asset('uploads/') }}/images/banner-image-3.png" alt="">
            </div>
        </div>
    </div>
</section>
<!-- Inner Banner End -->

<!-- Newsletter Start -->
<section class="newsletter-section bg-lightest-gray py-40">
    <div class="container-fluid">
        <div class="row row-gap-3">
            <div class="col-xl-6 col-lg-6">
                <div class="newsletter-container bg-white br-10">
                    <div class="newsletter-image m-auto">
                        <img src="{{ asset('uploads/') }}/icons/mail.png" alt="">
                    </div>
                    <h3 class="dark-black mb-16 mt-24">Subscribe to our Newslatter</h3>
                    <p class="light-gray mb-24">
                        Subscribe now to unlock a 20% discount code and receive exclusive natural beauty
                        offers directly to your inbox.
                        Don't miss out – join now!
                    </p>
                    <form action="index.html" method="post">
                        <input type="email" name="email" id="mail" class="form-control"
                            placeholder="exampleinfo@gmail.com">
                        <button class="cus-btn">Subscribe</button>
                    </form>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="newsletter-container bg-white br-10">
                    <div class="newsletter-image m-auto">
                        <img src="{{ asset('uploads/') }}/icons/phone.png" alt="">
                    </div>
                    <h3 class="dark-black mb-16 mt-24">SMS Signup</h3>
                    <p class="light-gray mb-24">
                        Subscribe now to unlock a 20% discount code and receive exclusive natural beauty
                        offers directly to your inbox.
                        Don't miss out – join now!
                    </p>
                    <form action="index.html" method="post">
                        <input type="tel" name="phone" id="mobile"
                            class="form-control w-100" placeholder="+01 123 456 789">
                        <button class="cus-btn">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Newsletter End -->
