<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-lg-3 product_style_2">
    <div class="card product-card">
        <a class="no-style-link" href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">
            <div class="gallerythumbWrapper gallerythumbWrapperLoaded"
                style="background: url('/img/product-loader.svg') no-repeat center, linear-gradient(135deg, #ffffff 0%, #e0e0e0 100%);">

                <img class="gallerythumb gallerythumbLoaded"
                    style="background-color:{{ $product_style->background_color ?? '#fff' }}; min-height: 13vw;" src="{{ $product->image_url}}"
                    width="100%" alt="Card image" />

                <h6 style="text-align: center; color: #000; padding: 0px 15px;  height: 40px;"
                    class="card-text truncate">{{ Str::title($product->name ?? '') }}</h6>

                <div style="text-align: center; color: #000;font-size: 1.2rem; padding-bottom: 7px;"
                    class="card-text price_card">
                    <span style="font-size:.8em; color: gray;"></span>
                    <br>
                    @if($product->variant_on == 0)
                        @if($product->old_price > $product->selling_price)

                            <span style="text-decoration: line-through;color: red;font-size: 1rem;">
                                {{ settings('currency_symbol', 9). ' '.$product->old_price }}
                            </span>

                        @endif


                        {{ settings('currency_symbol', 9). ' '.$product->selling_price }}


                        @if($product->old_price > $product->selling_price)
                            <div style="display:block" class="discounted_amount">
                                <span>Save Tk. {{ settings('currency_symbol', 9) . ' '. $product->old_price -
                                    $product->selling_price }}</span>
                            </div>
                        @endif


                    @else
                        Variant Available
                    @endif

                </div>

            </div>
        </a>

        <div data-title="{{ Str::title($product->name ?? '') }}" data-id="{{$product->id}}" data-bs-toggle="modal"
            data-bs-target="#productQuickView" class="products-cart-button productQuickViewbtn"><i
                class="fa fa-cart-plus"></i> Buy Now </div>


        <div style="display:block" class="sale"><span>SALE</span></div>

        @if($product->free_delivery == 1)
        <div style="display:block" class="free_delivery"><img
                src="https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-flash-photography-images-those-icons-lineal-color-those-icons.png"><span>FREE
                DELIVERY</span></div>
        @endif
    </div>





</div>
