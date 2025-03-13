
<div class="col-lg-3 col-sm-6 d-flex product-item my-3 product_style_4" style="background-color:{{ $p_background_color }}">

    <div class=" d-flex flex-column align-items-center justify-content-center product-item my-3" style="background-color:{{ $p_background_color }}">
        <div href="{{$p_url }}" class="product" >
                <img     src="{{ $p_image }}" alt="{{ $p_name ?? '' }}" alt="" onclick="window.location.href='{{ url($p_url) }}'">
                @include('frontend.protfilio_theme._product_style._button.product_buttons_icon',[
                    'btn_class'=>'icon mx-2',
                    'root_class'=>'d-flex align-items-center justify-content-center list-unstyled icons',
                ])
           </div>
        <div class="tag bg-red">sale</div>
        <div class="title pt-4 pb-1" onclick="window.location.href='{{ url($p_url) }}">{{ $p_name }}</div>
        <div class="d-flex align-content-center justify-content-center">


                @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $p_rat_count, 'rating_star' => $p_avg_rat, 'rating_count' => false])
            </div>

            @if ($p_variant_on == 0)
                <div class="price">{{ $p_selling_price ?? '' }}{{ settings('currency_symbol', 9) }}</div>
            @else
                <div class="price"> Variant Available</div>
            @endif


    </div>
</div>


