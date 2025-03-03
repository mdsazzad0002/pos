
<style>
    .product_style_3 .phone {
        aspect-ratio:10/11;
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
        content: "{{ settings('app_name_short',9) }}";
        position: absolute;
        bottom: 25px;
        left: 25px;
        font-weight: 600;
        font-size:4rem;
        line-height:2.5rem;
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
            <img class="phone" src="{{ $product->image_url }}" alt="{{ $product->name ?? '' }}">
        </a>

        <div class="content-container">
            <h1>{{ Str::title($product->name ?? '') }}</h1>


            @if ($product->variant_on == 0)
                <h3 class="price">{{ $product->selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</h3>
            @else
              
                <h3 class="price"> Variant Available</h3>
            @endif


            <a data-title="{{ Str::title($product->name ?? '') }}" onclick="" data-id="{{ $product->id }}" data-bs-toggle="modal"
                data-bs-target="#productQuickView" class="buy cursor-pointer products-cart-button productQuickViewbtn"><i class="fa fa-cart-plus"></i> Buy Now </a>

              
        </div>

    </div>
</div>
