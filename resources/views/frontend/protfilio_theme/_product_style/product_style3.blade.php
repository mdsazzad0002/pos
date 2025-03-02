<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Raleway:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=SUSE:wght@100..800&display=swap');


    .phone {
        height: 350px;
        width: auto;
    }

    .card {
        position: relative;
        height: 520px;
        background: #191919;
        border-radius: 20px;
        overflow: hidden;
    }

    .card::before {
        content: "";
        position: absolute;
        top: -50%;
        width: 100%;
        height: 100%;
        background: linear-gradient(rgb(207, 214, 230), rgb(231, 239, 249));
        transform: skewY(345deg);
        transition: 0.5s;
    }

    .card:hover::before {
        top: -70%;
        transform: skewY(390deg);
    }

    .card::after {
        content: "Samsung Galaxy S23 Ultra";
        position: absolute;
        bottom: 0;
        left: 0;
        font-weight: 600;
        font-size: 4em;
        color: rgba(0, 0, 0, 0.1);
    }

    .card .img-container {
        position: relative;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        padding-top: 20px;
        z-inder: 1;
    }

    .card .container {
        position: relative;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        z-index: 2;
    }

    .card .container h1 {
        font-size: 18px;

        font-family: 'Montserrat';
        color: #f5f5f5;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    .card .container .price {
        font-size: 24px;
        color: white;
        font-weight: 700;
        letter-spacing: 1px;
    }

    .card .container .buy {
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

    .card:hover .container .buy {
        top: 0;
        opacity: 1;
    }
</style>





<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-lg-3 product_style_2">

    <a class="card" href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">
        <div class="img-container">
            <img class="phone" src="{{ $product->image_url }}" alt="{{ $product->name ?? '' }}">
        </div>

        <div class="container">
            <h1>{{ Str::title($product->name ?? '') }}</h1>


            @if ($product->variant_on == 0)
                @if ($product->old_price > $product->selling_price)
                    <span style="text-decoration: line-through;color: red;font-size: 1rem;">
                        {{ settings('currency_symbol', 9) . ' ' . $product->old_price }}
                    </span>
                @endif


                {{ settings('currency_symbol', 9) . ' ' . $product->selling_price }}


                @if ($product->old_price > $product->selling_price)
                    <div style="display:block" class="discounted_amount">
                        <span>Save Tk.
                            {{ settings('currency_symbol', 9) . ' ' . $product->old_price - $product->selling_price }}</span>
                    </div>
                @endif
            @else
                Variant Available
            @endif


            <h3 class="price">{{ $product->price ?? '' }}<small>00</small>&euro;</h3>

            <a href="#" class="buy">Buy Now</a>

            <a data-title="{{ Str::title($product->name ?? '') }}" data-id="{{ $product->id }}" data-bs-toggle="modal"
                data-bs-target="#productQuickView" class="buy"><i class="fa fa-cart-plus"></i> Buy Now </a>
        </div>

    </a>
</div>
