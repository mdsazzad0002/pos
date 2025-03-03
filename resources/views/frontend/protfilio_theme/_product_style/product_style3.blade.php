<style>
    .product_style_3 .phone {
        aspect-ratio: 10/11;
        width: auto;
    }

    .product_style_3 .card {
        position: relative;

        background: var(--primary-color);
        border-radius: 20px;
        overflow: hidden;
    }

    .product_style_3 .card::before {
        content: "";
        position: absolute;
        top: -50%;
        width: 100%;
        height: 100%;
        background: linear-gradient(rgb(207, 214, 230), rgb(231, 239, 249));
        transform: skewY(345deg);
        transition: 0.5s;
    }

    .product_style_3 .card:hover::before {
        top: -70%;
        transform: skewY(390deg);
    }

    .product_style_3 .card::after {
        content: "{{ settings('app_name_short', 9) }}";
        position: absolute;
        bottom: 25px;
        left: 25px;
        font-weight: 600;
        font-size: 3rem;
        line-height: 2.5rem;
        color: rgb(255 255 255 / 15%);
    }

    .product_style_3 .card .img-container {
        position: relative;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        padding-top: 20px;
        z-inder: 1;
    }

    .product_style_3 .card .content-container {
        position: relative;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        z-index: 2;
    }

    .card .content-container h1 {
        font-size: 18px;

        font-family: 'Montserrat';
        color: #f5f5f5;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    .product_style_3 .card .content-container .price {
        font-size: 24px;
        color: white;
        font-weight: 700;
        letter-spacing: 1px;
    }

    .product_style_3 .card .content-container .buy {
        position: relative;
        top: 100px;
        opacity: 0;
        padding: 10px 30px;
        margin-top: 15px;
        color: #000000;
        text-decoration: none;
        background: linear-gradient(rgb(207, 214, 230), rgb(231, 239, 249));
        border-radius: 30px;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: 0.5s;
    }

    .product_style_3 .card:hover .content-container .buy {
        top: 0;
        opacity: 1;
    }
</style>





<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-lg-3 product_style_3">

    <div class="card" href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">
        <a class="img-container">
            <img class="phone" src="{{ $product->image_url }}" alt="{{ $product->name ?? '' }}"  
            onclick="window.location.href='{{ url($view_page->slug) }}?slug={{ $product->slug }}'"
            >
        </a>

        <div class="content-container">
            <h1>{{ Str::title($product->name ?? '') }}</h1>


            @if ($product->variant_on == 0)
                <h3 class="price">{{ $product->selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</h3>
            @else
                <h3 class="price"> Variant Available</h3>
            @endif


            <a data-title="{{ Str::title($product->name ?? '') }}" onclick="" data-id="{{ $product->id }}"
                data-bs-toggle="modal" data-bs-target="#productQuickView"
                class="buy cursor-pointer products-cart-button productQuickViewbtn"><i class="fa fa-cart-plus"></i> Buy
                Now </a>


        </div>

    </div>
</div>






    <div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3 product_style_4">
        <div href="{{ url($view_page->slug) }}?slug={{ $product->slug }}" class="product" > 
            <img     src="{{ $product->image_url }}" alt="{{ $product->name ?? '' }}"
                alt="">
            <ul class="d-flex align-items-center justify-content-center list-unstyled icons">
                <li class="icon btn productQuickViewbtn" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $product->id }}">
                    <span class="fas fa-expand-arrows-alt " ></span></li>
                <li class="icon mx-3" onclick="add_to_compareList({{ $product->id }})"><span class="far fa-heart"></span></li>

        
            
                @if ($product->variant_on == 1)
                    <li class="icon btn productQuickViewbtn" ><span class="fas fa-shopping-bag" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $product->id }}"></span></li>
                @else
                    <li class="icon" ><span class="fas fa-shopping-bag"  onclick="add_to_cart(this)" data-id="{{ $product->id }}" ></span></li>
                @endif
                
            </ul>
        </div>
        <div class="tag bg-red">sale</div>
        <div class="title pt-4 pb-1">{{ Str::title($product->name ?? '') }}</div>
        <div class="d-flex align-content-center justify-content-center"> <span class="fas fa-star"></span> <span
                class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span
                class="fas fa-star"></span> </div>

            @if ($product->variant_on == 0)
                <div class="price">{{ $product->selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</div>
            @else
                <div class="price"> Variant Available</div>
            @endif

       
    </div>


<style>





.product_style_4.product-item {
    min-height: 450px;
    border: none;
    overflow: hidden;
    position: relative;
    border-radius: 0;
    background: white;
}

.product_style_4.product-item .product {
    width: 100%;
    height: 350px;
    position: relative;
    overflow: hidden;
    cursor: pointer
}

.product_style_4.product-item .product img {
    width: 100%;
    height: 100%;
    object-fit: cover
}

.product_style_4.product-item .product .icons .icon {
    width: 40px;
    height: 40px;
    background-color: #fff;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: transform 0.6s ease;
    transform: rotate(180deg);
    cursor: pointer
}

.product_style_4.product-item .product .icons .icon:hover {
    background-color: #b71c1c;
    color: #fff
}

.product_style_4.product-item .product .icons .icon:nth-last-of-type(3) {
    transition-delay: 0.2s
}

.product_style_4.product-item .product .icons .icon:nth-last-of-type(2) {
    transition-delay: 0.15s
}

.product_style_4.product-item .product .icons .icon:nth-last-of-type(1) {
    transition-delay: 0.1s
}

.product_style_4.product-item:hover .product .icons .icon {
    transform: translateY(-60px)
}

.product_style_4.product-item .tag {
    text-transform: uppercase;
    font-size: 0.75rem;
    font-weight: 500;
    position: absolute;
    top: 10px;
    left: 20px;
    padding: 0 0.4rem
}

.product_style_4.product-item .title {
    font-size: 0.95rem;
    letter-spacing: 0.5px
}

.product_style_4.product-item .fa-star {
    font-size: 0.65rem;
    color: goldenrod
}

.product_style_4.product-item .price {
    margin-top: 10px;
    margin-bottom: 10px;
    font-weight: 600
}

.fw-800 {
    font-weight: 800
}

.bg-green {
    background-color: #208f20 !important;
    color: #fff
}

.bg-black {
    background-color: #1f1d1d;
    color: #fff
}

.bg-red {
    background-color: #bb3535;
    color: #fff
}


</style>