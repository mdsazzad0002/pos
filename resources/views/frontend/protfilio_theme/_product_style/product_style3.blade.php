<style>
    .product_style_3 .card::after {
        content: "{{ settings('app_name_short', 9) }}";
    }
    .product_style_3 .card::before {
        background: {{ $p_background_color ?? 'linear-gradient(rgb(207, 214, 230), rgb(231, 239, 249))' }};
    }
</style>



<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-lg-3 product_style_3">

    <div class="card">
        <a class="img-container" href="{{$p_url }}">
            <img class="phone" src="{{ $p_image }}" />
        </a>

        <div class="content-container">
            <a href="{{ $p_url }}">
                <h1>{{ $p_name }}</h1>
            </a>


            @if ($p_variant_on == 0)
                <h3 class="price">{{ $p_selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</h3>
            @else
                <h3 class="price"> Variant Available</h3>
            @endif


            @include('frontend.protfilio_theme._product_style._button.product_buttons', [
                'root_class'=> 'd-flex gap-16',
                'btn_class'=> 'buy cursor-pointer products-cart-button',

            ])


        </div>

    </div>
</div>


