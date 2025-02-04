
<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/_product_cat_brand_wise/_cat_product_sm.css')}}"/>

<div class="_cat_product_sm home-element">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-2 col-lg-3 col-md-4    col-6">
                <a class="product-link" href="https://fabrilife.com/shop?refinementList%5Bcats%5D%5B0%5D=Mens%20%3E%20Shorts">
                    <div>
                        <img src="{{asset('frontend/protfilio_theme/img/testimonials/testimonials-5.jpg')}}">
                    </div>
                    <div class="hero-link">
                        Mens Shorts
                    </div>
                </a>
            </div>
            @for($i = 0; $i < 10; $i++)
            <div class="col-xl-2 col-lg-3 col-md-4    col-6">
                <a class="product-link" href="product/71982-sports-edition-shorts-kinetic">
                    <div class="home-product">
                        <img src="{{asset('frontend/protfilio_theme/img/testimonials/testimonials-5.jpg')}}">
                        <div class="product-info">
                            <div class="product-name">Sports Edition Shorts - Kinetic</div>
                        </div>
                        <div class="product-price">
                            <div>
                                <strong>৳ 435.00</strong> <strike>৳ 485.00</strike>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
                
            @endfor
           
            <div class="col-xl-2 col-lg-3 col-md-4    col-6">

                    <div class="home-product">
                        <a class="product-link" href="product/71978-sports-edition-shorts-dribble">
                            <img src="{{asset('frontend/protfilio_theme/img/testimonials/testimonials-5.jpg')}}">
                        </a>
                        <a class="hot-container-link" href="https://fabrilife.com/shop?refinementList%5Bcats%5D%5B0%5D=Mens%20%3E%20Shorts">
                            <div class="hot-image-title"><span>View</span><span>More</span></div>
                        </a>
                        <div class="product-info">
                            <div class="product-name">Sports Edition Shorts - Dribble</div>
                        </div>
                        <div class="product-price">
                            <div>
                                <strong>৳ 435.00</strong> <strike>৳ 485.00</strike>
                            </div>
                        </div>
                    </div>
                
            </div>
        </div>
    </div>
    
</div>
</div>

