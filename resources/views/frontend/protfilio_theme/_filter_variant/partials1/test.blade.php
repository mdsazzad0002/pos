<div class="container-fluid">
    <div class="row">
        @for ($i= 0; $i < 15; $i++) 
        <div style="position:relative"
            class="product-grid-single col-sm-6 col-md-6 col-lg-3">
            <div class="card product-card">
                <a class="no-style-link" href="/product/71908-single-jersey-knitted-cotton-polo-royal-blue">
                    <div class="gallerythumbWrapper gallerythumbWrapperLoaded"
                        style="background: url('/img/product-loader.svg') no-repeat center, linear-gradient(135deg, #ffffff 0%, #e0e0e0 100%);">

                        <img class="gallerythumb gallerythumbLoaded" style="background-color:#ffffff; min-height: 13vw;"
                            src="{{ asset('assets/dist/img/user4-128x128.jpg') }}" width="100%" alt="Card image" />

                        <h6 style="text-align: center; color: #000; padding: 0px 15px;" class="card-text truncate">
                            Single Jersey Knitted Cotton Polo - Royal Blue</h6>

                        <div style="text-align: center; color: #000;font-size: 1.2rem;" class="card-text price_card">
                            <span style="font-size:.8em; color: gray;"></span>
                            <br>
                            <span style="text-decoration: line-through;color: red;font-size: 1rem;">
                                ৳800
                            </span>
                            ৳695

                            <div style="display:block" class="discounted_amount">
                                <span>Save Tk. 105</span>
                            </div>
                      
                        </div>

                    </div>
                </a>

                <div data-productkey="71908" data-image="/products/621784538389b-square.jpg"
                    data-title="Single Jersey Knitted Cotton Polo - Royal Blue" data-color="#ffffff"
                    data-url="/product/71908-single-jersey-knitted-cotton-polo-royal-blue"
                    class="products-cart-button "><i class="fa fa-cart-plus"></i> Buy Now <i
                        class="products-cart-button-loader fa fa-circle-o-notch fa-spin fa-3x fa-fw"></i></div>


                        <div style="display:block" class="sale"><span>SALE</span></div>
                        <div style="display:block" class="free_delivery"><img
                                src="https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-flash-photography-images-those-icons-lineal-color-those-icons.png"><span>FREE
                                DELIVERY</span></div>
            </div>




        </div>
            @endfor

    </div>
</div>

<style>
    .product-card{
        position: relative;
    }
    .products-cart-button {
        background: #2d2d2d;
        text-align: center;
        color: white;
        padding: 9px;
        font-weight: 700;
    }

    .free_delivery {
        position: absolute;
        top: 0;
        z-index: 99;
        background: #0b0a0a;
        color: white;
        padding: 3px 11px;
    }


    .sale {
        position: absolute;
        top: 0;
        right: 0;
        background: #ff4e4e;
        color: white;
        padding: 3px 11px;
    }



    .discounted_amount {
        position: absolute;
        top: 0px;
        left: 50%;
        transform: translateX(-50%);
        background: #2d2d2d;
        color: white;
        padding: 0px 6px;
        font-size: 14px;
    }

    .price_card {
        position: relative;
    }
    .card-text.truncate{
        margin: 7px 0;
        line-clamp: 2;
        text-overflow: ellipsis;
    }
</style>