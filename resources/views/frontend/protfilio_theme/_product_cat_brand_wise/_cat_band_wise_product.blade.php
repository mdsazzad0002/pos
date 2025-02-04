<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/_product_cat_brand_wise/_cat_band_wise_product.css')}}"/>
<div class="_cat_band_wise_product home-element">
    <div class="container-fluid">
        <div class="row">

            @for($i = 0; $i < 20; $i++)
                <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                    <div class="flex-cat-block">
                        <div class="flex-cat-img">
                            <a
                                href="https://fabrilife.com/shop?refinementList%5Bcats%5D%5B0%5D=Mens%20%3E%20Half%20Sleeve%20T-shirt">
                                <img src="{{ asset('assets/dist/img/photo3.jpg') }}">
                            </a>
                            <div class="flex-cat-button">
                                <a
                                    href="https://fabrilife.com/shop?refinementList%5Bcats%5D%5B0%5D=Mens%20%3E%20Half%20Sleeve%20T-shirt">Half-Sleeve
                                    T-shirt</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endfor

            
        </div>
    </div>
</div>
