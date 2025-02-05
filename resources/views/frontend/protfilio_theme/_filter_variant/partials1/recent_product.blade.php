@php
    $resent_products = \App\Models\product::where('status', 1)->limit(15)->get();
    $details_page = \App\Models\Page::where('page_type', 'view')->first();
    // dd($details_page);
@endphp


<div class="container-fluid">
    <div class="row">

        @foreach ($resent_products as $key => $items)

            <div style="position:relative"
                class="product-grid-single col-sm-6 col-md-6 col-lg-3">
                <div class="card product-card">
                    <a class="no-style-link" href="{{ url($details_page->slug) }}?slug={{ $items->slug }}">
                        <div class="gallerythumbWrapper gallerythumbWrapperLoaded"
                            style="background: url('/img/product-loader.svg') no-repeat center, linear-gradient(135deg, #ffffff 0%, #e0e0e0 100%);">

                            <img class="gallerythumb gallerythumbLoaded" style="background-color:#ffffff; min-height: 13vw;"
                                src="{{ $items->image_url}}" width="100%" alt="Card image" />

                            <h6 style="text-align: center; color: #000; padding: 0px 15px;  height: 40px;" class="card-text truncate">{{ Str::title($items->name ?? '') }}</h6>

                            <div style="text-align: center; color: #000;font-size: 1.2rem; padding-bottom: 7px;" class="card-text price_card">
                                <span style="font-size:.8em; color: gray;"></span>
                                <br>
                                <span style="text-decoration: line-through;color: red;font-size: 1rem;">
                                    {{ settings('currency_symbol', 9). ' '.$items->old_price }}
                                </span>
                                {{ settings('currency_symbol', 9). ' '.$items->selling_price }}

                                @if($items->old_price > $items->selling_price && $items->variant_on == 0)
                                    <div style="display:block" class="discounted_amount">
                                        <span>Save Tk. {{ settings('currency_symbol', 9) . ' '. $items->old_price - $items->selling_price }}</span>
                                    </div>
                                @endif

                            </div>

                        </div>
                    </a>
                    {{-- <a href="#" class="btn productQuickViewbtn" data-id="8" data-bs-toggle="modal" data-bs-target="#productQuickView">
                        <img src="/pos/public/uploads/icons/eye.png" alt="">
                    </a> --}}

                    <div  data-title="{{ Str::title($items->name ?? '') }}" data-id="8" data-bs-toggle="modal"  data-bs-target="#productQuickView" class="products-cart-button productQuickViewbtn"><i class="fa fa-cart-plus"></i> Buy Now </div>


                            <div style="display:block" class="sale"><span>SALE</span></div>

                            <div style="display:block" class="free_delivery"><img
                                    src="https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-flash-photography-images-those-icons-lineal-color-those-icons.png"><span>FREE
                                    DELIVERY</span></div>
                </div>




            </div>
        @endforeach

    </div>
</div>

<style>
    .productQuickViewbtn{
        cursor: pointer;
    }
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
