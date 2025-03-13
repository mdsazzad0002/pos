
<div style="position:relative" class="product-grid-single col-12 col-sm-6 col-md-4 col-lg-3 product_style_5" style="background: {{ $p_background_color  }}">
    <div
        class="product type-product post-4704 status-publish first instock product_cat-fuji-hd product_cat-passenger-lift has-post-thumbnail sold-individually shipping-taxable purchasable product-type-simple product-item grid hover-fade">
        <div class="product-img-wrap">
            <div class="nasa-sc-pdeal-countdown hidden-tag"></div>
            <div class="nasa-product-grid nasa-group-btns nasa-btns-product-item">
                <a href="javascript:void(0);"
                    class="quick-view btn-link quick-view-icon nasa-tip nasa-tip-left productQuickViewbtn" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $p_id }}"><svg class="nasa-icon" width="20" height="36" viewBox="0 0 32 32"
                        fill="currentColor">

                        <path
                            d="M16 6.404c-5.847 0-10.404 3.66-15.994 9.593 4.816 5.073 8.857 9.6 15.994 9.6s12.382-5.73 15.994-9.492c-3.697-4.407-8.943-9.7-15.994-9.7zM16 24.53c-6.336 0-10.16-3.929-14.524-8.532 5.192-5.414 9.32-8.527 14.524-8.527 6.161 0 10.975 4.443 14.558 8.591-3.523 3.674-8.293 8.469-14.558 8.469z">
                        </path>
                        <path
                            d="M16 9.603c-3.528 0-6.398 2.87-6.398 6.397s2.87 6.397 6.398 6.397 6.398-2.87 6.398-6.397-2.87-6.397-6.398-6.397zM16 21.331c-2.939 0-5.331-2.391-5.331-5.331s2.392-5.331 5.331-5.331 5.331 2.391 5.331 5.331c0 2.939-2.392 5.331-5.331 5.331z">
                        </path>
                        <path
                            d="M16 12.268c-2.058 0-3.732 1.674-3.732 3.732s1.674 3.732 3.732 3.732c2.058 0 3.732-1.674 3.732-3.732s-1.674-3.732-3.732-3.732zM16 18.666c-1.47 0-2.666-1.196-2.666-2.666s1.196-2.666 2.666-2.666 2.666 1.196 2.666 2.666c0 1.47-1.196 2.666-2.666 2.666z">
                        </path>
                    </svg></a></div>
                    <a class="product-img"
                          href="{{ url($p_url) }}">
                <div class="main-img">
                    <img loading="lazy" decoding="async" width="450" height="383"
                        src="{{ $p_image }}"
                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                        alt="{{ $p_name }}"
                        sizes="(max-width: 450px) 100vw, 450px">
                </div>
             
            </a>
        </div>
        <div class="product-info-wrap info">
            <a class="name nasa-bold woocommerce-loop-product__title nasa-show-one-line"
                href="{{ url($p_url) }}">
                {{ $p_name }} </a>
            <span class="price"><span class="woocommerce-Price-amount amount"><bdi><span
                            class="woocommerce-Price-currencySymbol">{{ settings('currency_symbol', 9) }}&nbsp;</span>{{ $p_selling_price }}</bdi></span></span>
        </div>

        @include('frontend.protfilio_theme._product_style._button.product_buttons', [
            'root_class'=> 'd-flex gap-16',
            'btn_class'=> 'buy cursor-pointer color-full-boutton',

        ])
      
    </div>
</div>
