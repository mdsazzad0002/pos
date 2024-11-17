@php
if($request->has('slug')){
    $products = \App\Models\product::where('slug', $request->slug)->first();

}else{
    echo 'product slug not found';
}
@endphp

<main class="main-wrapper bg-lightest-gray">
    @if($products)


    <!-- Shop Detail Start -->
    <section class="shop-detail py-40">
        <div class="container-fluid">
            <div class="detail-wrapper">
                <div class="row row-gap-3">
                    <div class="col-xl-6">
                        <div class="product-image-container container-2 bg-white">
                            <div class="product-slider-asnav asnav-2">

                                <div class="nav-image">
                                    <img src="{{ dynamic_asset($products->upload_id) }}" alt="">
                                </div>
                                @foreach(dynamic_assets($products->uploads_id) as $key => $item)
                                    <div class="nav-image">
                                        <img  src="{{ $item }}" alt="">
                                    </div>
                                @endforeach

                            </div>
                            <div class="product-slider slider-2">
                                <div class="detail-image">
                                    <img src="{{ dynamic_asset($products->upload_id) }}" alt="">
                                </div>
                                @foreach(dynamic_assets($products->uploads_id) as $key => $item)
                                <div class="detail-image">
                                    <img class="w-100 " src="{{ $item }}" alt="">
                                </div>
                                @endforeach

                            </div>
                        </div>
                    </div>


                    <div class="col-xl-6">


                        <div class="product-text-container bg-white br-20">

                            <h3 class="fw-600 mb-16">{{ $products->name ?? '' }}</h3>
                            <div class="d-flex align-items-center flex-wrap gap-16 mb-24">
                                @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $products->review_count, 'rating_star' => $products->review_avg_rating])

                                <div class="vr-line vr-line-2"></div>
                                <p class="light-gray">Brand: <span class="color-primary">{{ $products->brands->name ?? '' }}</span></p>
                                <p class="light-gray">SKU: <span class="light-black">{{ $products->sku }}</span></p>
                            </div>

                            <div class="d-flex align-items-center gap-16 mb-24">
                                {{-- <p class="light-gray text-decoration-line-through">$450.00</p>
                                <h5>$400.00</h5> --}}
                                @include('frontend.protfilio_theme._filter_variant.partials.product_price', ['product'=> $products, 'discount'=> true])

                            </div>

                           <p class="light-gray mb-24">
                                {{ $products->short_description }}
                            </p>

                            <div class="d-flex align-items-center gap-24 mb-24">
                                <h6>Size:</h6>
                                <div class="drop-container bg-lightest-gray p-8-12 br-5">
                                    <div class="wrapper-dropdown black" id="dropdown02">
                                        <span class="selected-display" id="destination_02">256GB</span>
                                        <svg id="drp-arrow-2" width="16" height="16" viewBox="0 0 16 16" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <g clip-path="url(#clip0_7951_48322)">
                                                <g clip-path="url(#clip1_7951_48322)">
                                                    <path
                                                        d="M0.0742188 4.01306L8.07424 11.987L16.0742 4.01306H0.0742188Z"
                                                        fill="#141516" />
                                                </g>
                                            </g>
                                            <defs>
                                                <clipPath id="clip0_7951_48322">
                                                    <rect width="16" height="16" fill="white" />
                                                </clipPath>
                                                <clipPath id="clip1_7951_48322">
                                                    <rect width="16" height="16" fill="white"
                                                        transform="translate(0.0742188)" />
                                                </clipPath>
                                            </defs>
                                        </svg>

                                        <ul class="topbar-dropdown bg-lightest-gray">
                                            <li class="item dark-black">512GB</li>
                                            <li class="item dark-black">256GB</li>
                                            <li class="item dark-black">128GB</li>
                                            <li class="item dark-black">64GB</li>
                                            <li class="item dark-black">32GB</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="content-block mb-24">
                                <h6 class="mb-24">Color:</h6>
                                <div class="product-color">
                                    <ul class="unstyled list">
                                        <li>
                                            <label for="muhRadio1"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio1" name="muhRadio" class="radio-1"
                                                    value="muhRadio1">
                                            </label>
                                        </li>
                                        <li>
                                            <label for="muhRadio2"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio2" name="muhRadio" class="radio-2"
                                                    value="muhRadio2">
                                            </label>
                                        </li>
                                        <li>
                                            <label for="muhRadio3"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio3" name="muhRadio" class="radio-3"
                                                    value="muhRadio3">
                                            </label>
                                        </li>
                                        <li>
                                            <label for="muhRadio4"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio4" name="muhRadio" class="radio-4"
                                                    value="muhRadio4">
                                            </label>
                                        </li>
                                        <li>
                                            <label for="muhRadio5"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio5" name="muhRadio" class="radio-5"
                                                    value="muhRadio5">
                                            </label>
                                        </li>
                                        <li>
                                            <label for="muhRadio6"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio6" name="muhRadio" class="radio-6"
                                                    value="muhRadio6">
                                            </label>
                                        </li>
                                        <li>
                                            <label for="muhRadio7"
                                                class="d-flex align-items-center h-21 light-black font-sec fw-500">
                                                <input type="radio" id="muhRadio7" name="muhRadio" class="radio-7"
                                                    value="muhRadio7">
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="hr-line mb-24"></div>
                            <div class="function-bar mb-16">
                                <div class="quantity quantity-wrap">
                                    <div class="input-area quantity-wrap">
                                        <input class="decrement" type="button" value="-">
                                        <input type="text" name="quantity" value="1" maxlength="2" size="1"
                                            class="number">
                                        <input class="increment" type="button" value="+">
                                    </div>
                                </div>
                                <div class="cart-btn w-100">
                                    <a href="cart.html" class="cus-btn-2 w-100">ADD TO CART</a>
                                </div>
                                <div class="side-icons">
                                    <ul class="list-unstyled m-0">
                                        <li>
                                            <a href="wishlist.html">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="22"
                                                    viewBox="0 0 24 22" fill="none">
                                                    <path
                                                        d="M12 21.6648C11.6583 21.6648 11.3289 21.541 11.0722 21.3162C10.1026 20.4684 9.16789 19.6717 8.34318 18.9689L8.33897 18.9653C5.92107 16.9048 3.83312 15.1254 2.38037 13.3725C0.756407 11.4129 0 9.55493 0 7.52521C0 5.55316 0.676207 3.73383 1.90393 2.4021C3.1463 1.05463 4.851 0.3125 6.70458 0.3125C8.08995 0.3125 9.35869 0.750488 10.4754 1.6142C11.039 2.05017 11.5499 2.58374 12 3.20612C12.4502 2.58374 12.9609 2.05017 13.5247 1.6142C14.6415 0.750488 15.9102 0.3125 17.2956 0.3125C19.149 0.3125 20.8538 1.05463 22.0962 2.4021C23.3239 3.73383 24 5.55316 24 7.52521C24 9.55493 23.2437 11.4129 21.6198 13.3723C20.167 15.1254 18.0793 16.9046 15.6617 18.9649C14.8355 19.6688 13.8993 20.4667 12.9276 21.3165C12.6711 21.541 12.3415 21.6648 12 21.6648ZM6.70458 1.71838C5.24834 1.71838 3.91058 2.29956 2.93737 3.35498C1.9497 4.42633 1.4057 5.90729 1.4057 7.52521C1.4057 9.2323 2.04016 10.759 3.4627 12.4755C4.83764 14.1346 6.88274 15.8774 9.25065 17.8954L9.25505 17.899C10.0829 18.6046 11.0213 19.4044 11.998 20.2584C12.9805 19.4027 13.9204 18.6016 14.7498 17.895C17.1176 15.877 19.1625 14.1346 20.5374 12.4755C21.9598 10.759 22.5943 9.2323 22.5943 7.52521C22.5943 5.90729 22.0503 4.42633 21.0626 3.35498C20.0896 2.29956 18.7516 1.71838 17.2956 1.71838C16.2288 1.71838 15.2494 2.0575 14.3846 2.7262C13.6139 3.32239 13.077 4.07605 12.7622 4.60339C12.6004 4.87457 12.3155 5.03644 12 5.03644C11.6845 5.03644 11.3996 4.87457 11.2377 4.60339C10.9231 4.07605 10.3863 3.32239 9.6154 2.7262C8.75059 2.0575 7.77116 1.71838 6.70458 1.71838Z"
                                                        fill="#141516" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                                <svg width="25" height="25" viewBox="0 0 25 25" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0_7951_48348)">
                                                        <g clip-path="url(#clip1_7951_48348)">
                                                            <path
                                                                d="M19.5508 24.4844C19.3083 24.4844 19.0659 24.3908 18.8823 24.2042C18.5193 23.835 18.5243 23.2414 18.8935 22.8784L22.0446 19.7799C22.2199 19.6043 22.3164 19.3715 22.3164 19.1241C22.3164 18.8774 22.2205 18.6454 22.0462 18.4699L18.897 15.4064C18.0386 14.5069 19.2826 13.2294 20.2045 14.0624L23.3587 17.1309C23.3614 17.1336 23.3642 17.1362 23.3668 17.1389C23.8986 17.6691 24.1914 18.3741 24.1914 19.1242C24.1914 19.8742 23.8985 20.5792 23.3668 21.1093C23.3653 21.1108 23.3637 21.1123 23.3622 21.1139L20.208 24.2154C20.0255 24.3949 19.7881 24.4844 19.5508 24.4844ZM19.5508 19.9844H5.81641C2.71478 19.9844 0.191406 17.461 0.191406 14.3594V11.9688C0.237484 10.7262 2.02075 10.7271 2.06641 11.9688V14.3594C2.06641 16.4271 3.74866 18.1094 5.81641 18.1094H19.5508C20.7933 18.1555 20.7924 19.9387 19.5508 19.9844ZM23.2539 13.9375C22.7361 13.9375 22.3164 13.5178 22.3164 13V10.6094C22.3164 8.54164 20.6342 6.85939 18.5664 6.85939H4.83203C3.58947 6.81331 3.59041 5.03004 4.83203 4.98439H18.5664C21.668 4.98439 24.1914 7.50776 24.1914 10.6094V13C24.1914 13.5178 23.7717 13.9375 23.2539 13.9375ZM4.83194 11.1719C4.59634 11.1719 4.36052 11.0837 4.17831 10.9063L1.02409 7.83785C1.02133 7.83518 1.01861 7.83251 1.01594 7.82979C0.484234 7.29968 0.191406 6.59468 0.191406 5.84464C0.191406 5.09459 0.484234 4.38954 1.01594 3.85948C1.01748 3.85793 1.01898 3.85643 1.02053 3.85493L4.17475 0.7534C4.54394 0.3904 5.13752 0.395369 5.50052 0.764557C5.86352 1.13374 5.85855 1.72732 5.48936 2.09032L2.33823 5.18885C1.97884 5.53432 1.97809 6.15242 2.33655 6.49878L5.48575 9.56239C5.85686 9.92342 5.86502 10.5169 5.50398 10.8881C5.32028 11.077 5.07616 11.1719 4.83194 11.1719Z"
                                                                fill="#141516" />
                                                        </g>
                                                    </g>
                                                    <defs>
                                                        <clipPath id="clip0_7951_48348">
                                                            <rect width="24" height="24" fill="white"
                                                                transform="translate(0.0820312 0.484375)" />
                                                        </clipPath>
                                                        <clipPath id="clip1_7951_48348">
                                                            <rect width="24" height="24" fill="white"
                                                                transform="translate(0.191406 0.484375)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                            <a href="checkout.html" class="cus-btn-3 w-100 mb-24">Buy Now</a>
                            <div class="hr-line mb-24"></div>

                            <div class="d-flex  gap-16 mb-16">
                                <h6>Category:</h6>

                                <p class="light-gray">
                                    <a class="items_active" href="{{ url('filter') }}?category={{  $products->categorys->slug  }}">{{ $products->categorys->name }}</a>

                                    @foreach ($products->categorys->subcategory as $items) ,
                                        <a @if($products->sub_category == $items->id) class="items_active" @endif  href="{{ url('filter') }}?subcategory={{   $items->slug  }}">{{  $items->name }}</a>
                                    @endforeach
                                </p>
                            </div>


                            <div class="d-flex align-items-center gap-16 mb-16">
                                <h6>Tags:</h6>
                                <p class="light-gray">{{ $products->tags }}</p>
                            </div>

                            <div class="hr-line mb-24"></div>
                            <div class="d-flex align-items-center gap-16 mb-24">
                                <h6>Share:</h6>
                                <ul class="list-unstyled social-link m-0">
                                    <li>

                                        <a href="https://www.facebook.com/sharer/sharer.php?u={{ url()->full() }}"  target="_blank">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 16 16" fill="none">
                                                <g clip-path="url(#clip0_7951_48369)">
                                                    <path
                                                        d="M11.75 3.75018C12.0087 3.75018 12.2188 3.54018 12.2188 3.28143V0.468933C12.2188 0.210183 12.0087 0.000183105 11.75 0.000183105H8.9375C7.12812 0.000183105 5.65625 1.47206 5.65625 3.28143V5.62518H4.25C3.99125 5.62518 3.78125 5.83518 3.78125 6.09393V8.90643C3.78125 9.16518 3.99125 9.37518 4.25 9.37518H5.65625V15.5314C5.65625 15.7902 5.86625 16.0002 6.125 16.0002H8.9375C9.19625 16.0002 9.40625 15.7902 9.40625 15.5314V9.37518H11.2812C11.5103 9.37518 11.7059 9.20956 11.7438 8.98362L12.2125 6.17112C12.235 6.03518 12.1969 5.89612 12.1078 5.79081C12.0188 5.68581 11.8878 5.62518 11.75 5.62518H9.40625V3.75018H11.75ZM8.9375 6.56268H11.1966L10.8841 8.43768H8.9375C8.67875 8.43768 8.46875 8.64768 8.46875 8.90643V15.0627H6.59375V8.90643C6.59375 8.64768 6.38375 8.43768 6.125 8.43768H4.71875V6.56268H6.125C6.38375 6.56268 6.59375 6.35268 6.59375 6.09393V3.28143C6.59375 1.98925 7.64531 0.937683 8.9375 0.937683H11.2812V2.81268H8.9375C8.67875 2.81268 8.46875 3.02268 8.46875 3.28143V6.09393C8.46875 6.35268 8.67875 6.56268 8.9375 6.56268Z"
                                                        fill="#FAFAFA" />
                                                </g>
                                                <defs>
                                                    <clipPath id="clip0_7951_48369">
                                                        <rect width="16" height="16" fill="white" />
                                                    </clipPath>
                                                </defs>
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://twitter.com/intent/tweet?text={{ $products->name }}&url={{ url()->full() }}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 16 16" fill="none">
                                                <g clip-path="url(#clip0_7951_48371)">
                                                    <path
                                                        d="M9.4932 6.77509L15.3215 0.000183105H13.9404L8.87967 5.88274L4.83771 0.000183105H0.175781L6.28802 8.89565L0.175781 16.0002H1.55698L6.9012 9.788L11.1698 16.0002H15.8317L9.49287 6.77509H9.4932ZM7.60147 8.97402L6.98217 8.08823L2.05464 1.03992H4.17607L8.15265 6.72814L8.77195 7.61392L13.941 15.0077H11.8196L7.60147 8.97436V8.97402Z"
                                                        fill="#006937" />
                                                </g>
                                                <defs>
                                                    <clipPath id="clip0_7951_48371">
                                                        <rect width="16" height="16" fill="white" />
                                                    </clipPath>
                                                </defs>
                                            </svg>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="https://www.linkedin.com/shareArticle?mini=true&url={{ url()->full() }}&title={{ $products->name }}&summary={{ $products->description }}&source={{ url()->full() }}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 16 16" fill="none">
                                                <g clip-path="url(#clip0_7951_48375)">
                                                    <path
                                                        d="M3.76245 5.02094H0.75C0.491089 5.02094 0.28125 5.2309 0.28125 5.48969V15.5314C0.28125 15.7903 0.491089 16.0002 0.75 16.0002H3.76245C4.02136 16.0002 4.2312 15.7903 4.2312 15.5314V5.48969C4.2312 5.2309 4.02136 5.02094 3.76245 5.02094ZM3.2937 15.0627H1.21875V5.95844H3.2937V15.0627Z"
                                                        fill="#006937" />
                                                    <path
                                                        d="M2.25635 0.000183105C1.16724 0.000183105 0.28125 0.886169 0.28125 1.97504C0.28125 3.06415 1.16724 3.95001 2.25635 3.95001C3.34534 3.95001 4.2312 3.06403 4.2312 1.97504C4.2312 0.886169 3.34534 0.000183105 2.25635 0.000183105ZM2.25635 3.01251C1.6842 3.01251 1.21875 2.54718 1.21875 1.97504C1.21875 1.40302 1.6842 0.937683 2.25635 0.937683C2.82837 0.937683 3.2937 1.40302 3.2937 1.97504C3.2937 2.54718 2.82837 3.01251 2.25635 3.01251Z"
                                                        fill="#006937" />
                                                    <path
                                                        d="M11.2941 4.95465C10.5815 4.95465 9.87927 5.1264 9.25037 5.44769C9.229 5.20856 9.0282 5.02094 8.78345 5.02094H5.77075C5.51196 5.02094 5.302 5.2309 5.302 5.48969V15.5314C5.302 15.7903 5.51196 16.0002 5.77075 16.0002H8.78345C9.04236 16.0002 9.2522 15.7903 9.2522 15.5314V10.0085C9.2522 9.29803 9.83032 8.72003 10.5408 8.72003C11.2512 8.72003 11.8291 9.29803 11.8291 10.0085V15.5314C11.8291 15.7903 12.0391 16.0002 12.2979 16.0002H15.3104C15.5693 16.0002 15.7792 15.7903 15.7792 15.5314V9.43976C15.7792 6.96661 13.7672 4.95465 11.2941 4.95465ZM14.8417 15.0627H12.7667V10.0085C12.7667 8.78107 11.7682 7.78253 10.5409 7.78253C9.31335 7.78253 8.3147 8.78107 8.3147 10.0085V15.0627H6.23962V5.95844H8.3147V6.30475C8.3147 6.48505 8.41809 6.64935 8.58069 6.72736C8.74316 6.80536 8.93604 6.78314 9.07678 6.67047C9.71155 6.16132 10.4784 5.89215 11.2941 5.89215C13.2502 5.89215 14.8417 7.48358 14.8417 9.43976V15.0627Z"
                                                        fill="#006937" />
                                                </g>
                                                <defs>
                                                    <clipPath id="clip0_7951_48375">
                                                        <rect width="16" height="16" fill="white" />
                                                    </clipPath>
                                                </defs>
                                            </svg>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="hr-line"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Detail End -->

    <!-- Product Description Start -->
    <section class="product-description pb-40">
        <div class="container-fluid">
            <div class="row">
                <div class="description-wrapper bg-white br-20">
                    <nav class="mb-32">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link " id="nav-desc-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-desc" type="button" role="tab" aria-controls="nav-desc"
                                aria-selected="true">Description</button>

                            <button class="nav-link active" id="nav-info-tab" data-bs-toggle="tab" data-bs-target="#nav-info"
                                type="button" role="tab" aria-controls="nav-info" aria-selected="true">Additional
                                Information</button>

                            <button class="nav-link" id="nav-review-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-review" type="button" role="tab" aria-controls="nav-review"
                                aria-selected="false">Reviews (02)</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade " id="nav-desc" role="tabpanel"
                            aria-labelledby="nav-desc-tab">
                            <h5 class="mb-24">Product Supreme Quality</h5>
                            <p class="light-gray mb-16">
                                Lorem ipsum dolor sit amet consectetur. Est morbi cum bibendum id eleifend ultrices enim
                                nec. Vitae morbi mus
                                imperdiet tincidunt ultrices hendrerit. Lobortis donec massa fermentum aliquet sapien.
                                Magna risus donec aliquam
                                diam aliquet consectetur. Etiam accumsan ipsum augue sed vitae. Tortor volutpat et dui
                                in malesuada euismod. Sociis
                                aenean porttitor aliquet sit amet.
                            </p>
                            <p class="light-gray mb-32">
                                Lorem ipsum dolor sit amet consectetur. Est morbi cum bibendum id eleifend ultrices enim
                                nec. Vitae morbi mus
                                imperdiet tincidunt ultrices hendrerit. Lobortis donec massa fermentum aliquet sapien.
                                Magna risus donec aliquam
                                diam aliquet consectetur. Etiam accumsan ipsum augue sed vitae.
                            </p>
                            <div class="py-40">
                                <div class="row row-gap-4">
                                    <div class="col-lg-6">
                                        <img src="assets/media/products/product-detail-1.png" alt="">
                                    </div>
                                    <div class="col-lg-6">
                                        <img src="assets/media/products/product-detail-2.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <p class="light-gray mb-16">
                                Lorem ipsum dolor sit amet consectetur. Est morbi cum bibendum id eleifend ultrices enim
                                nec. Vitae morbi mus
                                imperdiet tincidunt ultrices hendrerit. Lobortis donec massa fermentum aliquet sapien.
                                Magna risus donec aliquam
                                diam aliquet consectetur. Etiam accumsan ipsum augue sed vitae. Tortor volutpat et dui
                                in malesuada euismod. Sociis
                                aenean porttitor aliquet sit amet.
                            </p>
                            <p class="light-gray">
                                Lorem ipsum dolor sit amet consectetur. Est morbi cum bibendum id eleifend ultrices enim
                                nec. Vitae morbi mus
                                imperdiet tincidunt ultrices hendrerit. Lobortis donec massa fermentum aliquet sapien.
                                Magna risus donec aliquam
                                diam aliquet consectetur. Etiam accumsan ipsum augue sed vitae.
                            </p>
                        </div>
                        <div class="tab-pane fade active show" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
                            <h5 class="mb-32">Technical Specifications</h5>
                            <div class="specs-chart mb-32">
                                <h6 class="color-primary mb-16">Network</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Brand
                                            </p>
                                            <p class="category light-gray">
                                                Apple
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Model
                                            </p>
                                            <p class="category light-gray">
                                                13 Pro
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Relaease Date
                                            </p>
                                            <p class="category light-gray">
                                                13-05-2020
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="specs-chart mb-32">
                                <h6 class="color-primary mb-16">Display</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Type
                                            </p>
                                            <p class="category light-gray">
                                                AMOLED/LCD/IPS
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Size
                                            </p>
                                            <p class="category light-gray">
                                                5.6 Inches
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Resolution
                                            </p>
                                            <p class="category light-gray">
                                                1920 Pixels
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="specs-chart mb-32">
                                <h6 class="color-primary mb-16">Body</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Dimensions
                                            </p>
                                            <p class="category light-gray">
                                                Height x Width x Depth mm
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Weight

                                            </p>
                                            <p class="category light-gray">
                                                12.5 Grams
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                SIM
                                            </p>
                                            <p class="category light-gray">
                                                Dual SIM
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="specs-chart mb-32">
                                <h6 class="color-primary mb-16">Performance</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                OS
                                            </p>
                                            <p class="category light-gray">
                                                IOS
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Chipset
                                            </p>
                                            <p class="category light-gray">
                                                6 Gen 1
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Relaease Date
                                            </p>
                                            <p class="category light-gray">
                                                13-05-2020
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="specs-chart">
                                <h6 class="color-primary mb-16">Features</h6>
                                <ul class="list-unstyled">
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Water Resistance
                                            </p>
                                            <p class="category light-gray">
                                                Rating
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Audio
                                            </p>
                                            <p class="category light-gray">
                                                Stereo/3.5mm Jack
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="brand-block">
                                            <p class="item fw-500">
                                                Colors
                                            </p>
                                            <p class="category light-gray">
                                                Black
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>
                        <div class="tab-pane fade show " id="nav-review" role="tabpanel"
                            aria-labelledby="nav-review-tab">
                            <div class="comments-sec mb-48">
                                <h5 class="mb-48">(02) Reviews For Mobile Phone</h5>
                                <div class="comment-box mb-24">
                                    <img src="assets/media/users/user-4.png" alt="" class="br-5">
                                    <div class="block">
                                        <div class="top-row mb-16">
                                            <div class="info">
                                                <h5 class="light-black">Ethan Clarke</h5>
                                            </div>
                                            <h5 class="color-sec">★★★★<span class="light-gray">★</span></h5>
                                        </div>
                                        <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Pharetra luctus in
                                            dignissim amet.
                                            Dignissim adipiscing amet praesent nec libero ultrices ac ullamcorper. Enim
                                            mattis faucibus
                                            viverra integer vestibulum in proin. Imperdiet pellentesque nisl cursus arcu
                                            nulla massa pharetra.
                                            Tristique.</p>
                                    </div>
                                </div>
                                <div class="hr-line mb-24"></div>
                                <div class="comment-box">
                                    <img src="assets/media/users/user-5.png" alt="" class="br-5">
                                    <div class="block">
                                        <div class="top-row mb-16">
                                            <div class="info">
                                                <h5 class="light-black">Sophia Reynolds</h5>
                                            </div>
                                            <h5 class="color-sec">★★★★<span class="light-gray">★</span></h5>
                                        </div>
                                        <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Pharetra luctus in
                                            dignissim amet.
                                            Dignissim adipiscing amet praesent nec libero ultrices ac ullamcorper. Enim
                                            mattis faucibus
                                            viverra
                                            integer vestibulum in proin. Imperdiet pellentesque nisl cursus arcu nulla
                                            massa pharetra.
                                            Tristique.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="review-form">
                                <h5 class="fw-500 mb-8">Write a Review</h5>
                                <p class="light-gray mb-32">Your email address will not be published. Required fields
                                    are marked.</p>

                                <p class="mb-16 fw-500">Your Review</p>
                                <form method="post" action="shop-detail.html" class="form-group contact-form">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="input-block mb-24">
                                                <textarea class="form-control" name="message" id="comment"
                                                    rows="4" placeholder="Write Your Review here..."></textarea>

                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="input-block mb-24">
                                                <input type="text" class="form-control" id="name" name="name"
                                                    required placeholder="Name Example">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                    viewBox="0 0 20 20" fill="none">
                                                    <g clip-path="url(#clip0_7949_46233)">
                                                        <path
                                                            d="M10 0.00292969C7.09223 0.00292969 4.72656 2.36859 4.72656 5.27637C4.72656 8.18414 7.09223 10.5498 10 10.5498C12.9078 10.5498 15.2734 8.18414 15.2734 5.27637C15.2734 2.36859 12.9078 0.00292969 10 0.00292969ZM10 9.37793C7.7384 9.37793 5.89844 7.53797 5.89844 5.27637C5.89844 3.01477 7.7384 1.1748 10 1.1748C12.2616 1.1748 14.1016 3.01477 14.1016 5.27637C14.1016 7.53797 12.2616 9.37793 10 9.37793Z"
                                                            fill="#141516" />
                                                        <path
                                                            d="M16.5612 13.9949C15.1174 12.529 13.2035 11.7217 11.1719 11.7217H8.82812C6.79656 11.7217 4.88258 12.529 3.43883 13.9949C2.00215 15.4537 1.21094 17.3792 1.21094 19.417C1.21094 19.7406 1.47328 20.0029 1.79688 20.0029H18.2031C18.5267 20.0029 18.7891 19.7406 18.7891 19.417C18.7891 17.3792 17.9979 15.4537 16.5612 13.9949ZM2.40859 18.8311C2.70215 15.5074 5.46918 12.8936 8.82812 12.8936H11.1719C14.5308 12.8936 17.2979 15.5074 17.5914 18.8311H2.40859Z"
                                                            fill="#141516" />
                                                    </g>
                                                    <defs>
                                                        <clipPath id="clip0_7949_46233">
                                                            <rect width="20" height="20" fill="white"
                                                                transform="translate(0 0.00292969)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="input-block mb-24">
                                                <input type="email" class="form-control" id="mail" name="email"
                                                    required placeholder="Your Email">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                    viewBox="0 0 20 20" fill="none">
                                                    <path
                                                        d="M18.2422 2.97168H1.75781C0.786602 2.97168 0 3.76316 0 4.72949V15.2764C0 16.2484 0.792383 17.0342 1.75781 17.0342H18.2422C19.2053 17.0342 20 16.2518 20 15.2764V4.72949C20 3.76488 19.2165 2.97168 18.2422 2.97168ZM17.996 4.14355C17.6369 4.50078 11.4564 10.6488 11.243 10.861C10.9109 11.193 10.4695 11.3759 10 11.3759C9.53047 11.3759 9.08906 11.193 8.75594 10.8599C8.61242 10.7171 2.50012 4.63707 2.00398 4.14355H17.996ZM1.17188 15.0379V4.96875L6.23586 10.0061L1.17188 15.0379ZM2.00473 15.8623L7.06672 10.8325L7.9284 11.6896C8.48176 12.243 9.21746 12.5477 10 12.5477C10.7825 12.5477 11.5182 12.243 12.0705 11.6907L12.9333 10.8325L17.9953 15.8623H2.00473ZM18.8281 15.0379L13.7641 10.0061L18.8281 4.96875V15.0379Z"
                                                        fill="#141516" />
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="cus-btn-3 w-25">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- Product Description End -->

    <!-- Recommended Product Start -->
    <section class="recommended-product bg-lightest-gray pb-40">
        <div class="container-fluid">
            <div class="top-bar mb-16">
                <h5>Recommended Products</h5>
                <a href="shop-grid-sidebar-1.html" class="cus-btn-arrow"> Show All
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="15" viewBox="0 0 20 15" fill="none">
                        <path
                            d="M13.3545 14.7476C13.3545 11.7476 16.1545 7.74756 19.3545 7.74756M19.3545 7.74756C17.5212 7.74756 13.3545 6.74756 13.3545 0.747559M19.3545 7.74756H0.354492"
                            stroke="#0C0C0D" stroke-width="2" />
                    </svg>
                </a>
            </div>
            <div class="row row-gap-4">
                <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                    <div class="featured-product-card bg-white br-10">
                        <div class="image-box mb-16">
                            <span class="sale-label">-12%</span>
                            <a href="shop-detail.html"><img src="assets/media/products/product-1.png"  class="product-image" alt=""></a>
                            <div class="side-icons">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="wishlist.html">
                                            <img src="assets/media/icons/heart.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView">
                                            <img src="assets/media/icons/eye.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                            <img src="assets/media/icons/compare.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-desc">
                            <h6 class="product-title mb-8"><a href="shop-detail.html">Elite Audio Gear</a></h6>
                            <div class="text mb-16">
                                <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                            </div>
                            <div class="rating-star mb-16 bg-white">
                                <h5 class="color-sec mb-24">★★★★<span class="light-gray">★</span>&nbsp;&nbsp;<span class="text-16 fw-400 dark-black">(80)</span></h5>
                                <h6 ><span class="text-decoration-line-through light-gray"> $12.00</span>&nbsp;&nbsp;$10.00</h6>
                            </div>
                            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                    <div class="featured-product-card bg-white br-10">
                        <div class="image-box mb-16">
                            <span class="sale-label">-12%</span>
                            <a href="shop-detail.html"><img src="assets/media/products/product-2.png"  class="product-image" alt=""></a>
                            <div class="side-icons">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="wishlist.html">
                                            <img src="assets/media/icons/heart.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView">
                                            <img src="assets/media/icons/eye.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                            <img src="assets/media/icons/compare.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-desc">
                            <h6 class="product-title mb-8"><a href="shop-detail.html">Ultra Bright LCD</a></h6>
                            <div class="text mb-16">
                                <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                            </div>
                            <div class="rating-star mb-16 bg-white">
                                <h5 class="color-sec mb-24">★★★★<span class="light-gray">★</span>&nbsp;&nbsp;<span class="text-16 fw-400 dark-black">(80)</span></h5>
                                <h6 ><span class="text-decoration-line-through light-gray"> $12.00</span>&nbsp;&nbsp;$10.00</h6>
                            </div>
                            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                    <div class="featured-product-card bg-white br-10">
                        <div class="image-box mb-16">
                            <span class="sale-label">-12%</span>
                            <a href="shop-detail.html"><img src="assets/media/products/product-4.png"  class="product-image" alt=""></a>
                            <div class="side-icons">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="wishlist.html">
                                            <img src="assets/media/icons/heart.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView">
                                            <img src="assets/media/icons/eye.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                            <img src="assets/media/icons/compare.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-desc">
                            <h6 class="product-title mb-8"><a href="shop-detail.html">Nexus Mobile Pro</a></h6>
                            <div class="text mb-16">
                                <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                            </div>
                            <div class="rating-star mb-16 bg-white">
                                <h5 class="color-sec mb-24">★★★★<span class="light-gray">★</span>&nbsp;&nbsp;<span class="text-16 fw-400 dark-black">(80)</span></h5>
                                <h6 ><span class="text-decoration-line-through light-gray"> $12.00</span>&nbsp;&nbsp;$10.00</h6>
                            </div>
                            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                    <div class="featured-product-card bg-white br-10">
                        <div class="image-box mb-16">
                            <span class="sale-label">-12%</span>
                            <a href="shop-detail.html"><img src="assets/media/products/product-10.png" class="product-image"  alt=""></a>
                            <div class="side-icons">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="wishlist.html">
                                            <img src="assets/media/icons/heart.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView">
                                            <img src="assets/media/icons/eye.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                            <img src="assets/media/icons/compare.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-desc">
                            <h6 class="product-title mb-8"><a href="shop-detail.html">Aero Pro Joysticks</a></h6>
                            <div class="text mb-16">
                                <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                            </div>
                            <div class="rating-star mb-16 bg-white">
                                <h5 class="color-sec mb-24">★★★★<span class="light-gray">★</span>&nbsp;&nbsp;<span class="text-16 fw-400 dark-black">(80)</span></h5>
                                <h6 ><span class="text-decoration-line-through light-gray"> $12.00</span>&nbsp;&nbsp;$10.00</h6>
                            </div>
                            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                    <div class="featured-product-card bg-white br-10">
                        <div class="image-box mb-16">
                            <span class="sale-label">-12%</span>
                            <a href="shop-detail.html"><img src="assets/media/products/product-3.png"  class="product-image" alt=""></a>
                            <div class="side-icons">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="wishlist.html">
                                            <img src="assets/media/icons/heart.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView">
                                            <img src="assets/media/icons/eye.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                            <img src="assets/media/icons/compare.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-desc">
                            <h6 class="product-title mb-8"><a href="shop-detail.html">Hyper Glide Mouse</a></h6>
                            <div class="text mb-16">
                                <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                            </div>
                            <div class="rating-star mb-16 bg-white">
                                <h5 class="color-sec mb-24">★★★★<span class="light-gray">★</span>&nbsp;&nbsp;<span class="text-16 fw-400 dark-black">(80)</span></h5>
                                <h6 ><span class="text-decoration-line-through light-gray"> $12.00</span>&nbsp;&nbsp;$10.00</h6>
                            </div>
                            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-3 col-lg-4 col-md-6">
                    <div class="featured-product-card bg-white br-10">
                        <div class="image-box mb-16">
                            <span class="sale-label">-12%</span>
                            <a href="shop-detail.html"><img src="assets/media/products/product-5.png" class="product-image"  alt=""></a>
                            <div class="side-icons">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="wishlist.html">
                                            <img src="assets/media/icons/heart.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView">
                                            <img src="assets/media/icons/eye.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="zui-wrapper-button" data-bs-toggle="modal" data-bs-target="#comparepopup">
                                            <img src="assets/media/icons/compare.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-desc">
                            <h6 class="product-title mb-8"><a href="shop-detail.html">Silent Touch Pro</a></h6>
                            <div class="text mb-16">
                                <p class="light-gray">Lorem ipsum dolor sit amet consectetur. Id viverra cursus enim risus mattis urnanullam quis magna. Ligula maecenas integer diam risus rhoncus at. Viverra a consectetur ac lobortis.</p>
                            </div>
                            <div class="rating-star mb-16 bg-white">
                                <h5 class="color-sec mb-24">★★★★<span class="light-gray">★</span>&nbsp;&nbsp;<span class="text-16 fw-400 dark-black">(80)</span></h5>
                                <h6 ><span class="text-decoration-line-through light-gray"> $12.00</span>&nbsp;&nbsp;$10.00</h6>
                            </div>
                            <a href="cart.html" class="cus-btn-2 w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Recommended Product End -->

    <!-- Benefits Start -->
    <footer class="bg-white">
        <div class="container-fluid">
            <div class="benefits">
                <div class="row justify-content-center  benefits-wrapper">
                    <div class="col-xxl-10 col-xl-12">
                        <div class="row row-gap-4">
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="benefit-block">
                                    <div class="image-box mb-12">
                                        <img src="assets/media/icons/icon-1-sm.png" alt="">
                                    </div>
                                    <div class="content-box">
                                        <p class="fw-500 mb-4p">Easy Returns</p>
                                        <p class="light-gray">From handpicked sellers</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="benefit-block">
                                    <div class="image-box mb-12">
                                        <img src="assets/media/icons/icon-2-sm.png" alt="">
                                    </div>
                                    <div class="content-box">
                                        <p class="fw-500 mb-4p">Fast Delivery</p>
                                        <p class="light-gray">Delivery in 24 hours max!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="benefit-block">
                                    <div class="image-box mb-12">
                                        <img src="assets/media/icons/icon-3-sm.png" alt="">
                                    </div>
                                    <div class="content-box">
                                        <p class="fw-500 mb-4p">Safe Payment</p>
                                        <p class="light-gray">100% secure payment</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="benefit-block">
                                    <div class="image-box mb-12">
                                        <img src="assets/media/icons/icon-4-sm.png" alt="">
                                    </div>
                                    <div class="content-box">
                                        <p class="fw-500 mb-4p">Online Discount</p>
                                        <p class="light-gray">Add multi-buy discount</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="benefit-block">
                                    <div class="image-box mb-12">
                                        <img src="assets/media/icons/icon-5-sm.png" alt="">
                                    </div>
                                    <div class="content-box">
                                        <p class="fw-500 mb-4p">Need Help</p>
                                        <p class="light-gray">Dedicated 24/7 Support</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="benefit-block">
                                    <div class="image-box mb-12">
                                        <img src="assets/media/icons/icon-6-sm.png" alt="">
                                    </div>
                                    <div class="content-box">
                                        <p class="fw-500 mb-4p">Curated Items</p>
                                        <p class="light-gray">From handpciked sellers</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="hr-line"></div>
            <div class="footer-wrapper pt-40 mb-32">
                <div class="store-desc">
                    <a href="index.html"><img src="assets/media/logo.png" alt="" class="mb-16"></a>
                    <p class="light-gray mb-xl-32 mb-lg-0 mb-32">
                        Lorem ipsum dolor sit amet consectetur. Eu dolor faucibus <br>
                        sit fames elit ac. Hendrerit ultrices morbi faucibus.
                    </p>
                    <p class="d-xl-none d-lg-block d-none light-gray mb-32">
                        amet consectetur. Eu dolor faucibus <br>
                        sit fames elit ac ultrices morbi faucibus.
                    </p>
                    <a href="tel:123456789" class="d-flex align-items-center gap-3">
                        <div class="icon-box">
                            <img src="assets/media/icons/user-icon.png" alt="">
                        </div>
                        <div>
                            <p class="light-gray mb-4p">
                                Call us 24/7
                            </p>
                            <h5 class="color-primary">+001 123 456 789</h5>
                        </div>
                    </a>
                </div>
                <div class="footer-link-block">
                    <h6 class="fw-600 mb-24">Find It Fast</h6>
                    <ul class="list-unstyled m-0">
                        <li class="mb-8"><a href="" class="light-gray">Laptop & Computer</a></li>
                        <li class="mb-8"><a href="" class="light-gray">Camera & Photo</a></li>
                        <li class="mb-8"><a href="" class="light-gray">Smartphone & Tablet</a></li>
                        <li class="mb-8"><a href="" class="light-gray">TV & Audio</a></li>
                        <li class="mb-8"><a href="" class="light-gray">Home & Electronic</a></li>
                        <li class="mb-8"><a href="" class="light-gray">Headphone & Speakers</a></li>
                    </ul>
                </div>
                <div class="footer-link-block">
                    <h6 class="fw-600 mb-24">Quick Link</h6>
                    <ul class="list-unstyled m-0">
                        <li class="mb-8"><a href="index.html" class="light-gray">Home Page</a></li>
                        <li class="mb-8"><a href="about.html" class="light-gray">About Us</a></li>
                        <li class="mb-8"><a href="shop-grid-1.html" class="light-gray">Shop Now</a></li>
                        <li class="mb-8"><a href="register.html" class="light-gray">Signup</a></li>
                        <li class="mb-8"><a href="register.html" class="light-gray">Login</a></li>
                        <li class="mb-8"><a href="contact.html" class="light-gray">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-link-block">
                    <h6 class="fw-600 mb-24">Customer Care</h6>
                    <ul class="list-unstyled m-0">
                        <li class="mb-8"><a href="register.html" class="light-gray">My Account</a></li>
                        <li class="mb-8"><a href="tracking.html" class="light-gray">Track Your Order</a></li>
                        <li class="mb-8"><a href="shop-grid-3.html" class="light-gray">Customer Service</a></li>
                        <li class="mb-8"><a href="blog-grid.html" class="light-gray">Blogs</a></li>
                        <li class="mb-8"><a href="about.html" class="light-gray">FAQs</a></li>
                        <li class="mb-8"><a href="coming-soon.html" class="light-gray">Coming Soon</a></li>
                    </ul>
                </div>
                <div class="footer-link-block">
                    <ul class="list-unstyled mb-16">
                        <li class="mb-12 footer-link">
                            <a href="" class="d-flex align-items-center gap-2">
                                <div class="img-box">
                                    <img src="assets/media/icons/location.png" alt="">
                                </div>
                                <p class="light-gray">26 South Street, New York, NY 98, USA.</p>
                            </a>
                        </li>
                        <li class="mb-12 footer-link">
                            <a href="mailto:info@example.com" class="d-flex align-items-center gap-2">
                                <div class="img-box">
                                    <img src="assets/media/icons/mail-sm.png" alt="">
                                </div>
                                <p class="color-primary">exampleinfo@gmail.com</p>
                            </a>
                        </li>
                    </ul>
                    <p class="fw-500 mb-16">Follow Us!</p>
                    <ul class="list-unstyled social-link">
                        <li>
                            <a href="">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                                    <path
                                        d="M12.5696 24.5995C12.4901 24.5995 12.4106 24.5995 12.3306 24.5992C10.4494 24.6038 8.71118 24.556 7.02075 24.4531C5.47095 24.3588 4.05627 23.8232 2.92944 22.9043C1.84216 22.0178 1.09967 20.819 0.722656 19.3417C0.394531 18.0555 0.377136 16.793 0.360474 15.5719C0.348389 14.6957 0.335937 13.6575 0.333374 12.6017C0.335937 11.5416 0.348389 10.5033 0.360474 9.62719C0.377136 8.40624 0.394531 7.14373 0.722656 5.85742C1.09967 4.38012 1.84216 3.18133 2.92944 2.29473C4.05627 1.37591 5.47095 0.840326 7.02093 0.746026C8.71136 0.643304 10.4499 0.595331 12.3352 0.599908C14.217 0.59588 15.9546 0.643304 17.6451 0.746026C19.1949 0.840326 20.6096 1.37591 21.7364 2.29473C22.8238 3.18133 23.5662 4.38012 23.9432 5.85742C24.2713 7.14355 24.2887 8.40624 24.3054 9.62719C24.3174 10.5033 24.3301 11.5416 24.3325 12.5973V12.6017C24.3301 13.6575 24.3174 14.6957 24.3054 15.5719C24.2887 16.7928 24.2715 18.0553 23.9432 19.3417C23.5662 20.819 22.8238 22.0178 21.7364 22.9043C20.6096 23.8232 19.1949 24.3588 17.6451 24.4531C16.0262 24.5516 14.3633 24.5995 12.5696 24.5995ZM12.3306 23.1127C14.1813 23.1171 15.8805 23.0702 17.5312 22.9699C18.7031 22.8987 20.0854 22.13 20.9178 21.4512C21.6872 20.8237 22.2171 19.958 22.4927 18.878C22.7658 17.8074 22.7816 16.6579 22.7968 15.5463C22.8087 14.676 22.8211 13.6451 22.8237 12.5995C22.8211 11.5538 22.8087 10.5231 22.7968 9.65282C22.7816 8.54119 22.7658 7.39166 22.4927 6.32086C22.2171 5.2409 21.6872 4.37518 20.9178 3.74767C20.0854 3.06909 18.7031 2.32292 17.5312 2.2517C15.8805 2.15117 14.1813 2.10485 12.335 2.10887C10.4847 2.10448 8.78534 2.15667 7.13464 2.2572C5.96277 2.32843 4.70864 2.83101 3.87624 3.50959C3.10683 4.1371 2.43443 5.2409 2.15885 6.32086C1.88566 7.39166 1.86991 8.54101 1.85472 9.65282C1.84281 10.5239 1.83036 11.5553 1.8278 12.6017C1.83036 13.6436 1.84281 14.6752 1.85472 15.5463C1.86991 16.6579 1.88566 17.8074 2.15885 18.878C2.43443 19.958 2.96434 20.8237 3.73374 21.4512C4.56614 22.1298 5.96277 22.8987 7.13464 22.9699C8.78534 23.0704 10.4851 23.1173 12.3306 23.1127ZM12.2859 18.4589C9.05523 18.4589 6.42657 15.8304 6.42657 12.5995C6.42657 9.36864 9.05523 6.74017 12.2859 6.74017C15.5168 6.74017 18.1453 9.36864 18.1453 12.5995C18.1453 15.8304 15.5168 18.4589 12.2859 18.4589ZM12.335 8.1045C9.70055 8.1045 7.84651 9.95854 7.84651 12.5973C7.84651 14.7942 9.50773 17.1126 12.3091 17.1126C14.5062 17.1126 16.7904 15.0312 16.7904 12.5973C16.7904 10.4004 15.1143 8.1045 12.335 8.1045ZM18.8016 4.86517C18.025 4.86517 17.3953 5.49468 17.3953 6.27142C17.3953 7.04815 18.025 7.67767 18.8016 7.67767C19.5783 7.67767 20.2078 7.04815 20.2078 6.27142C20.2078 5.49468 19.5783 4.86517 18.8016 4.86517Z"
                                        fill="#0C0C0D" />
                                </svg>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                                    <g clip-path="url(#clip0_5950_10656)">
                                        <path
                                            d="M17.9584 6.22461C18.3465 6.22461 18.6615 5.90961 18.6615 5.52148V1.30273C18.6615 0.914609 18.3465 0.599609 17.9584 0.599609H13.7396C11.0256 0.599609 8.81775 2.80742 8.81775 5.52148V9.03711H6.70837C6.32025 9.03711 6.00525 9.35211 6.00525 9.74023V13.959C6.00525 14.3471 6.32025 14.6621 6.70837 14.6621H8.81775V23.8965C8.81775 24.2846 9.13275 24.5996 9.52087 24.5996H13.7396C14.1277 24.5996 14.4427 24.2846 14.4427 23.8965V14.6621H17.2552C17.5988 14.6621 17.8923 14.4137 17.949 14.0748L18.6521 9.85602C18.6859 9.65211 18.6287 9.44352 18.4951 9.28555C18.3615 9.12805 18.1651 9.03711 17.9584 9.03711H14.4427V6.22461H17.9584ZM13.7396 10.4434H17.1282L16.6595 13.2559H13.7396C13.3515 13.2559 13.0365 13.5709 13.0365 13.959V23.1934H10.224V13.959C10.224 13.5709 9.909 13.2559 9.52087 13.2559H7.4115V10.4434H9.52087C9.909 10.4434 10.224 10.1284 10.224 9.74023V5.52148C10.224 3.5832 11.8013 2.00586 13.7396 2.00586H17.2552V4.81836H13.7396C13.3515 4.81836 13.0365 5.13336 13.0365 5.52148V9.74023C13.0365 10.1284 13.3515 10.4434 13.7396 10.4434Z"
                                            fill="#0C0C0D" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_5950_10656">
                                            <rect width="24" height="24" fill="white" transform="translate(0.333374 0.599609)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                                    <g clip-path="url(#clip0_5950_10659)">
                                        <path
                                            d="M14.5746 10.762L23.3171 0.599609H21.2454L13.6543 9.42345L7.5914 0.599609H0.598511L9.76688 13.9428L0.598511 24.5996H2.6703L10.6866 15.2813L17.0896 24.5996H24.0825L14.5741 10.762H14.5746ZM11.737 14.0604L10.8081 12.7317L3.4168 2.15922H6.59895L12.5638 10.6915L13.4928 12.0202L21.2464 23.1109H18.0642L11.737 14.0609V14.0604Z"
                                            fill="#0C0C0D" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_5950_10659">
                                            <rect width="24" height="24" fill="white" transform="translate(0.333374 0.599609)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                                    <g clip-path="url(#clip0_5950_10662)">
                                        <path
                                            d="M5.97705 8.13074H1.45837C1.07001 8.13074 0.755249 8.44568 0.755249 8.83386V23.8965C0.755249 24.2849 1.07001 24.5996 1.45837 24.5996H5.97705C6.36542 24.5996 6.68018 24.2849 6.68018 23.8965V8.83386C6.68018 8.44568 6.36542 8.13074 5.97705 8.13074ZM5.27393 23.1934H2.1615V9.53699H5.27393V23.1934Z"
                                            fill="#0C0C0D" />
                                        <path
                                            d="M3.7179 0.599609C2.08423 0.599609 0.755249 1.92859 0.755249 3.56189C0.755249 5.19556 2.08423 6.52435 3.7179 6.52435C5.35138 6.52435 6.68018 5.19537 6.68018 3.56189C6.68018 1.92859 5.35138 0.599609 3.7179 0.599609ZM3.7179 5.1181C2.85968 5.1181 2.1615 4.4201 2.1615 3.56189C2.1615 2.70386 2.85968 2.00586 3.7179 2.00586C4.57593 2.00586 5.27393 2.70386 5.27393 3.56189C5.27393 4.4201 4.57593 5.1181 3.7179 5.1181Z"
                                            fill="#0C0C0D" />
                                        <path
                                            d="M17.2745 8.03131C16.2057 8.03131 15.1523 8.28894 14.2089 8.77087C14.1769 8.41217 13.8757 8.13074 13.5085 8.13074H8.9895C8.60132 8.13074 8.28638 8.44568 8.28638 8.83386V23.8965C8.28638 24.2849 8.60132 24.5996 8.9895 24.5996H13.5085C13.8969 24.5996 14.2117 24.2849 14.2117 23.8965V15.6121C14.2117 14.5464 15.0789 13.6794 16.1445 13.6794C17.2102 13.6794 18.077 14.5464 18.077 15.6121V23.8965C18.077 24.2849 18.392 24.5996 18.7802 24.5996H23.299C23.6874 24.5996 24.0021 24.2849 24.0021 23.8965V14.759C24.0021 11.0493 20.9842 8.03131 17.2745 8.03131ZM22.5959 23.1934H19.4835V15.6121C19.4835 13.7709 17.9857 12.2731 16.1447 12.2731C14.3034 12.2731 12.8054 13.7709 12.8054 15.6121V23.1934H9.69281V9.53699H12.8054V10.0565C12.8054 10.3269 12.9605 10.5734 13.2044 10.6904C13.4481 10.8074 13.7374 10.774 13.9485 10.605C14.9007 9.84131 16.051 9.43756 17.2745 9.43756C20.2087 9.43756 22.5959 11.8247 22.5959 14.759V23.1934Z"
                                            fill="#0C0C0D" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_5950_10662">
                                            <rect width="24" height="24" fill="white" transform="translate(0.333374 0.599609)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="hr-line"></div>
            <div class="footer-bottom-bar py-24">
                <p class="light-gray text-sm-left text-center">@2024 All Rights Copyright <a href="" class="color-primary"> echonenergy</a>. Design & Developed By <span class="color-primary"> BD Soft TEchnology</span></p>
                <div class="payment-cards d-flex align-items-center gap-16">
                    <p class="fw-500 light-gray d-sm-flex d-none">Payment Mathods:</p>
                    <div class="card-block">
                        <img src="assets/media/icons/card-1.png" alt="">
                    </div>
                    <div class="card-block">
                        <img src="assets/media/icons/card-2.png" alt="">
                    </div>
                    <div class="card-block">
                        <img src="assets/media/icons/card-3.png" alt="">
                    </div>
                    <div class="card-block">
                        <img src="assets/media/icons/card-4.png" alt="">
                    </div>
                    <div class="card-block">
                        <img src="assets/media/icons/card-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Benefits End -->

    @endif
</main>


<style>
    .product-slider-asnav img{
        max-width: 80px;
    }
</style>


@push('js')

<script>


</script>

@endpush