<section class="popular-product bg-lightest-gray pt-24 pb-40">
    <div class="container-fluid">
        <div class="top-bar mb-16">
            <h5>Popular Products</h5>
            <ul class="nav nav-tabs" id="myProduct" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="all-product-tab" data-bs-toggle="tab"
                        data-bs-target="#all-product" type="button" role="tab"
                        aria-controls="all-product" aria-selected="true">All Products </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="laptop-pro-tab" data-bs-toggle="tab"
                        data-bs-target="#laptop-pro" type="button" role="tab"
                        aria-controls="laptop-pro" aria-selected="false">Laptop</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="keyboard-pro-tab" data-bs-toggle="tab"
                        data-bs-target="#keyboard-pro" type="button" role="tab"
                        aria-controls="keyboard-pro" aria-selected="false">Keyboard</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="mouse-pro-tab" data-bs-toggle="tab"
                        data-bs-target="#mouse-pro" type="button" role="tab"
                        aria-controls="mouse-pro" aria-selected="false">Mouse</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="headphone-pro-tab" data-bs-toggle="tab"
                        data-bs-target="#headphone-pro" type="button" role="tab"
                        aria-controls="headphone-pro" aria-selected="false">Headphone</button>
                </li>
            </ul>
        </div>
        
        <div class="tab-content" id="myProductContent">
            <div class="tab-pane fa de show active" id="all-product" role="tabpanel"
                aria-labelledby="all-product-tab">
                <div class="row row-gap-3">
                    <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                        <div class="featured-product-card bg-white br-10">
                            <div class="image-box mb-16">
                                <span class="sale-label">-12%</span>
                                <a href="shop-detail.html"><img
                                        src="{{ asset('uploads/') }}/products/product-1b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Radiant View
                                        LCD</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-2b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Pure Bass
                                        Headphones</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Supreme Tech
                                        Phone</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-10.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Aero Pro
                                        Joysticks</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Hyper Glide
                                        Mouse</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-4b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">iPad Standard
                                        Plus</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
            <div class="tab-pane fade" id="laptop-pro" role="tabpanel"
                aria-labelledby="laptop-pro-tab">
                <div class="row row-gap-3">
                    <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                        <div class="featured-product-card bg-white br-10">
                            <div class="image-box mb-16">
                                <span class="sale-label">-12%</span>
                                <a href="shop-detail.html"><img
                                        src="{{ asset('uploads/') }}/products/product-1b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Radiant View
                                        LCD</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-2b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Pure Bass
                                        Headphones</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Supreme Tech
                                        Phone</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-10.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Aero Pro
                                        Joysticks</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Hyper Glide
                                        Mouse</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-4b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">iPad Standard
                                        Plus</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
            <div class="tab-pane fade" id="keyboard-pro" role="tabpanel"
                aria-labelledby="keyboard-pro-tab">
                <div class="row row-gap-3">
                    <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                        <div class="featured-product-card bg-white br-10">
                            <div class="image-box mb-16">
                                <span class="sale-label">-12%</span>
                                <a href="shop-detail.html"><img
                                        src="{{ asset('uploads/') }}/products/product-1b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Radiant View
                                        LCD</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-2b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Pure Bass
                                        Headphones</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Supreme Tech
                                        Phone</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-10.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Aero Pro
                                        Joysticks</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Hyper Glide
                                        Mouse</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-4b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">iPad Standard
                                        Plus</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
            <div class="tab-pane fade" id="mouse-pro" role="tabpanel"
                aria-labelledby="mouse-pro-tab">
                <div class="row row-gap-3">
                    <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                        <div class="featured-product-card bg-white br-10">
                            <div class="image-box mb-16">
                                <span class="sale-label">-12%</span>
                                <a href="shop-detail.html"><img
                                        src="{{ asset('uploads/') }}/products/product-1b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Radiant View
                                        LCD</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-2b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Pure Bass
                                        Headphones</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Supreme Tech
                                        Phone</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-10.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Aero Pro
                                        Joysticks</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Hyper Glide
                                        Mouse</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-4b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">iPad Standard
                                        Plus</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
            <div class="tab-pane fade" id="headphone-pro" role="tabpanel"
                aria-labelledby="headphone-pro-tab">
                <div class="row row-gap-3">
                    <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                        <div class="featured-product-card bg-white br-10">
                            <div class="image-box mb-16">
                                <span class="sale-label">-12%</span>
                                <a href="shop-detail.html"><img
                                        src="{{ asset('uploads/') }}/products/product-1b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Radiant View
                                        LCD</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-2b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Pure Bass
                                        Headphones</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Supreme Tech
                                        Phone</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-10.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Aero Pro
                                        Joysticks</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-3.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">Hyper Glide
                                        Mouse</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
                                        src="{{ asset('uploads/') }}/products/product-4b.png"
                                        class="product-image" alt=""></a>
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
                                <h6 class="product-title mb-8"><a href="shop-detail.html">iPad Standard
                                        Plus</a></h6>
                                <div class="text mb-12">
                                    <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id
                                        viverra cursus enim risus mattis urnanullam quis magna. Ligula
                                        maecenas integer diam risus rhoncus at. Viverra a consectetur ac
                                        lobortis.</p>
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
        </div>
    </div>
</section>
