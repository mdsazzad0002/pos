<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_product_variant/_category_wise_product1.css') }}" />
<div class="home-element category_wise_product">
<div class="container-fluid">
    <div class="product_column_container">
        <div class="product_dobble_column product_column">
            <a class="product-link"
                href="https://fabrilife.com/shop?refinementList%5Bcats%5D%5B0%5D=Mens%20%3E%20Full%20Sleeve%20T-shirt">
                <div>
                    <img src="{{asset('frontend/protfilio_theme/img/testimonials/testimonials-5.jpg')}}">
                </div>
                <div class="hero-link">
                    Mens Full sleeve T-shirt
                </div>
            </a>
        </div>

        @for($i = 0; $i < 7; $i++)
        <div class="product_column">
            <a class="product-link" href="product/73159-mens-urban-edition-premium-full-sleeve-t-shirt-crescent">
                <div class="home-product">
                    <img src="{{asset('frontend/protfilio_theme/img/testimonials/testimonials-5.jpg')}}">
                    <div class="product-info">
                        <div class="product-name">Mens Urban Edition Premium Full Sleeve T-shirt -
                            Crescent</div>
                    </div>
                    <div class="product-price">
                        <div>
                            <strong>৳ 699.00</strong> <strike>৳ 795.00</strike>
                        </div>
                    </div>
                </div>
            </a>
        </div>
            
        @endfor
        

        <div class="product_column">
            <a class="product-link" href="product/72153-mens-premium-blank-full-sleeve-t-shirt-stellar">
            </a>
            <div class="home-product"><a class="product-link"
                    href="product/72153-mens-premium-blank-full-sleeve-t-shirt-stellar">
                    <img src="{{asset('frontend/protfilio_theme/img/testimonials/testimonials-5.jpg')}}">
                </a><a class="hot-container-link"
                    href="https://fabrilife.com/shop?refinementList%5Bcats%5D%5B0%5D=Mens%20%3E%20Full%20Sleeve%20T-shirt">
                    <div class="hot-image-title"><span>View</span><span>More</span></div>
                </a>
                <div class="product-info">
                    <div class="product-name">Mens Premium Blank Full Sleeve T-Shirt - Stellar
                    </div>
                </div>
                <div class="product-price">
                    <div>
                        <strong>৳ 595.00</strong> <strike>৳ 685.00</strike>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</div>

