@php
if($request->has('slug')){
    $products = \App\Models\product::where('slug', $request->slug)->first();

}else{
    echo 'product slug not found';
}

$filter_page = \App\Models\page::where('status', 1)->where('page_type', 'filter')->first();
$cart_page = \App\Models\page::where('status', 1)->where('page_type', 'cart')->first();
@endphp

<main class="main-wrapper bg-lightest-gray">
    @if(isset($products))

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
                            @include('frontend.protfilio_theme._product_variant.partials.model_content', ['product'=>$products])





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
                                aria-selected="false">Reviews ({{$products->reviewCount() ??  0 }})</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade " id="nav-desc" role="tabpanel"
                            aria-labelledby="nav-desc-tab">

                            {!! $products->description ?? '' !!}
                        </div>
                        <div class="tab-pane fade active show" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
                           {!! $products->additional_description ?? '' !!}

                        </div>
                        <div class="tab-pane fade show " id="nav-review" role="tabpanel"
                            aria-labelledby="nav-review-tab">
                            <div class="comments-sec mb-48">
                                <h5 class="mb-48">({{$products->reviewCount() ??  0 }}) Reviews For {{ $products->name ?? '' }}</h5>


                                @foreach ($products->reviews_info as $review)
                                    <div class="comment-box mb-24">
                                        <img src="{{ $review->review_image }}" alt="" class="br-5">
                                        <div class="block">
                                            <div class="top-row mb-16">
                                                <div class="info">
                                                    <h5 class="light-black">{{ $review->name ?? ''}}</h5>
                                                </div>
                                                <h5 class="color-sec">@include('frontend.protfilio_theme._filter_variant.partials.rating_core', [ 'rating_star' => $review->rating]) </h5>
                                            </div>
                                            <p class="light-gray">{{ $review->comment ?? ''}}</p>
                                        </div>
                                    </div>
                                    <div class="hr-line mb-24"></div>
                                @endforeach

                            </div>


                            <div class="review-form">
                                <h5 class="fw-500 mb-8">Write a Review</h5>
                                <p class="light-gray mb-32">Your email address will not be published. Required fields
                                    are marked.</p>

                                <p class="mb-16 fw-500">Your Review</p>

                                <form method="post" action="{{ route('review.store') }}"  class="form-group contact-form">

                                    @csrf

                                    <input type="number" hidden value="{{ $products->id ?? 0 }}" name="product_id" id="">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="rating mb-3">
                                                <input type="radio" id="star5" name="rating" value="5" />
                                                <label for="star5" class="star">&#9733;</label>
                                                <input type="radio" id="star4" name="rating" value="4" />
                                                <label for="star4" class="star">&#9733;</label>
                                                <input type="radio" id="star3" name="rating" value="3" />
                                                <label for="star3" class="star">&#9733;</label>
                                                <input type="radio" id="star2" name="rating" value="2" />
                                                <label for="star2" class="star">&#9733;</label>
                                                <input type="radio" id="star1" name="rating" value="1" />
                                                <label for="star1" class="star">&#9733;</label>
                                            </div>

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
                                    <div class="mb-3 mt-1" id="message"></div>
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

    @include('frontend.protfilio_theme._product_details.partials.remommened_product')

    @endif


</main>


<style>
    .product-slider-asnav img{
        max-width: 80px;
    }
</style>


@push('js')

<script>

    // document.querySelectorAll('.quantity_price').forEach(element => {
    //     element.addEventListener(function (item) {
    //         this.
    //     })
    // });

</script>

@endpush

@push('css')
    <style>
        .shop-detail .detail-wrapper .product-image-container {
            height: 100%;
        }
        .shop-detail .detail-wrapper .product-image-container .product-slider .detail-image img{
            width: 100%;

        }

        /* Hide the radio buttons */
        .rating {
            flex-direction: row-reverse;
            display: inline-flex;
            text-align: right;
        }
        .rating input {
            display: none;
        }

        /* Style the stars */
        .rating label {
            font-size: 30px;
            color: gray;
            cursor: pointer;
        }

        /* Change the color of the stars on hover */
        .rating label:hover,
        .rating label:hover ~ label {
            color: gold;
        }

        /* Style the selected stars */
        .rating input:checked ~ label {
            color: gold;
        }

        .comment-box img {
             width: 60px;
        }

        

    </style>
@endpush
