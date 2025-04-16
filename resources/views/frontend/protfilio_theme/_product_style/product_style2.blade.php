<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-xxl-{{ 12/$v_per_row }} product_style_2">
    <div class="card product-card" style="background-color:{{ $p_background_color }}">
        <a class="no-style-link" href="{{ $p_url }}">
            <div class="gallerythumbWrapper gallerythumbWrapperLoaded"
                style="background: url('/img/product-loader.svg') no-repeat center, linear-gradient(135deg, #ffffff 0%, #e0e0e0 100%);">

                <img class="gallerythumb gallerythumbLoaded"
                    style="background-color:{{ $p_background_color }}; min-height: 13vw;" src="{{ $p_image }}"
                    width="100%" alt="Card image" />

                <h6 style="text-align: center; color: #000; padding: 0px 15px;  height: 40px;"
                    class="card-text truncate">{{$p_name }}</h6>

                <div style="text-align: center; color: #000;font-size: 1.2rem; padding-bottom: 7px;"
                    class="card-text price_card">
                    <span style="font-size:.8em; color: gray;"></span>
                    <br>
                    @if($p_variant_on == 0)
                        @if($p_old_price > $p_selling_price)

                            <span style="text-decoration: line-through;color: red;font-size: 1rem;">
                                {{ settings('currency_symbol', 9). ' '.$p_old_price }}
                            </span>

                        @endif


                        {{ settings('currency_symbol', 9). ' '.$p_selling_price }}


                        @if($p_old_price > $p_selling_price)
                            <div style="display:block" class="discounted_amount">
                                <span>Save Tk. {{ settings('currency_symbol', 9) . ' '. $p_old_price -
                                    $p_selling_price }}</span>
                            </div>
                        @endif


                    @else
                        Variant Available
                    @endif

                </div>

            </div>
        </a>


                @include('frontend.protfilio_theme._product_style._button.product_buttons', [
                    'root_class'=> 'd-flex',
                    'btn_class'=> 'products-cart-button border border-white',
                ])




        <div style="display:block" class="sale"><span>SALE</span></div>

        @if($product->free_delivery == 1)
        <div style="display:block" class="free_delivery"><img
                src="https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-flash-photography-images-those-icons-lineal-color-those-icons.png"><span>FREE
                DELIVERY</span></div>
        @endif
    </div>





</div>
