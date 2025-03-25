
@if ($request->has('slug'))

    @php
        if ($request->has('slug')) {
            $products = \App\Models\product::where('slug', $request->slug)->first();
            if ($products == null) {
                return redirect()->back();
            }
            // dd($products);
            if (is_numeric($products->views)) {
                $products->views += 1;
            } else {
                $products->views = 1;
            }
            $products->save();
        } else {
            echo 'product slug not found';
        }

        $filter_page = \App\Models\Page::where('status', 1)->where('page_type', 'filter')->first();

        if (!isset($cart_page)) {
            $cart_page = \App\Models\Page::where('status', 1)->where('page_type', 'cart')->first();
        }

    @endphp

    @section('title_p', $products->name)
    @if ($products->short_description != null)
        @section('description_p', $products->short_description)
    @endif
    @section('canonical', route('product_view_by_slug', ['slug' => $products->slug]))

    <main class="main-wrapper bg-lightest-gray">
        @if (isset($products))

            <!-- Shop Detail Start -->
            <section class="shop-detail py-40">
                <div class="container-fluid">
                    <div class="detail-wrapper">
                        <div class="row row-gap-3">
                            <div class="col-xl-6">
                                <div class="product-image-container container-2 bg-white">
                                    <div class="product-slider-asnav asnav-2">

                                        <div class="nav-image ">
                                            <img src="{{ dynamic_asset($products->upload_id) }}"
                                                alt="{{ $products->name }}">
                                        </div>
                                        @foreach (dynamic_assets($products->uploads_id) as $key => $item)
                                            <div class="nav-image ">
                                                <img src="{{ $item }}" alt="{{ $products->name }}">
                                            </div>
                                        @endforeach

                                    </div>
                                    <div class="product-slider slider-2 hover_image_container">
                                        <div class="detail-image">
                                            <img src="{{ dynamic_asset($products->upload_id) }}"
                                                alt="{{ $products->name }}">
                                        </div>
                                        @foreach (dynamic_assets($products->uploads_id) as $key => $item)
                                            <div class="detail-image hover_image_container">
                                                <img class="w-100 " src="{{ $item }}"
                                                    alt="{{ $products->name }}">
                                            </div>
                                        @endforeach

                                    </div>
                                </div>

                              

                            
                            
                            </div>


                            <div class="col-xl-6" >
                               
                                    <div class="position-relative">
                                        <div id="zoomBox"> </div>
                                    </div>
                             

                                <div class="product-text-container bg-white br-20">
                                    @include(
                                        'frontend.protfilio_theme._product_variant.partials.model_content',
                                        ['product' => $products, 'close_model' => false]
                                    )

                                    @include('frontend.protfilio_theme._share_style._share_style1', ['name'=>$products->name, 'url'=>url()->full(), 'short_description'=>$products->short_description])

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
                                    <button class="nav-link active" id="nav-desc-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-desc" type="button" role="tab"
                                        aria-controls="nav-desc" aria-selected="true">Description</button>

                                    <button class="nav-link " id="nav-info-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-info" type="button" role="tab"
                                        aria-controls="nav-info" aria-selected="true">Additional
                                        Information</button>

                                    <button class="nav-link" id="nav-review-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-review" type="button" role="tab"
                                        aria-controls="nav-review" aria-selected="false">Reviews
                                        ({{ $products->reviewCount() ?? 0 }})</button>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade  active show " id="nav-desc" role="tabpanel"
                                    aria-labelledby="nav-desc-tab">

                                    {!! $products->description ?? '' !!}
                                </div>
                                <div class="tab-pane fade" id="nav-info" role="tabpanel"
                                    aria-labelledby="nav-info-tab">
                                    {!! $products->additional_description ?? '' !!}

                                </div>
                                <div class="tab-pane fade show " id="nav-review" role="tabpanel"
                                    aria-labelledby="nav-review-tab">
                                    <div class="comments-sec mb-48">
                                        <h5 class="mb-48">({{ $products->reviewCount() ?? 0 }}) Reviews For
                                            {{ $products->name ?? '' }}</h5>


                                        @foreach ($products->reviews_info as $review)
                                            <div class="comment-box mb-24">
                                                <img src="{{ $review->review_image }}" alt="{{ $products->name }}"
                                                    class="br-5">
                                                <div class="block">
                                                    <div class="top-row mb-16">
                                                        <div class="info">
                                                            <h5 class="light-black">{{ $review->name ?? '' }}</h5>
                                                        </div>
                                                        <h5 class="color-sec">@include(
                                                            'frontend.protfilio_theme._filter_variant.partials.rating_core',
                                                            ['rating_star' => $review->rating]
                                                        ) </h5>
                                                    </div>
                                                    <p class="light-gray">{{ $review->comment ?? '' }}</p>
                                                </div>
                                            </div>
                                            <div class="hr-line mb-24"></div>
                                        @endforeach

                                    </div>


                                    <div class="review-form">
                                        <h5 class="fw-500 mb-8">Write a Review</h5>
                                        <p class="light-gray mb-32">Your email address will not be published. Required
                                            fields
                                            are marked.</p>

                                        <p class="mb-16 fw-500">Your Review</p>

                                        <form method="post" action="{{ route('review.store') }}"
                                            class="form-group contact-form">

                                            @csrf

                                            <input type="number" hidden value="{{ $products->id ?? 0 }}"
                                                name="product_id" id="">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="rating mb-3">
                                                        <input type="radio" id="star5" name="rating"
                                                            value="5" />
                                                        <label for="star5" class="star">&#9733;</label>
                                                        <input type="radio" id="star4" name="rating"
                                                            value="4" />
                                                        <label for="star4" class="star">&#9733;</label>
                                                        <input type="radio" id="star3" name="rating"
                                                            value="3" />
                                                        <label for="star3" class="star">&#9733;</label>
                                                        <input type="radio" id="star2" name="rating"
                                                            value="2" />
                                                        <label for="star2" class="star">&#9733;</label>
                                                        <input type="radio" id="star1" name="rating"
                                                            value="1" />
                                                        <label for="star1" class="star">&#9733;</label>
                                                    </div>

                                                    <div class="input-block mb-24">
                                                        <textarea class="form-control" name="message" id="comment" rows="4"
                                                            placeholder="Write Your Review here..."></textarea>

                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="input-block mb-24">
                                                        <input type="text" class="form-control" id="name"
                                                            name="name" required placeholder="Name Example">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 20 20" fill="none">
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
                                                                    <rect width="20" height="20"
                                                                        fill="white"
                                                                        transform="translate(0 0.00292969)" />
                                                                </clipPath>
                                                            </defs>
                                                        </svg>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="input-block mb-24">
                                                        <input type="email" class="form-control" id="mail"
                                                            name="email" required placeholder="Your Email">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 20 20" fill="none">
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
        .product-slider-asnav img {
            max-width: 80px;
            height: 65px;
            object-fit: scale-down;
        }
    </style>



    @push('css')
        <style>
            .shop-detail .detail-wrapper .product-image-container {
                height: 100%;
            }

            .shop-detail .detail-wrapper .product-image-container .product-slider .detail-image img {
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
            .rating label:hover~label {
                color: gold;
            }

            /* Style the selected stars */
            .rating input:checked~label {
                color: gold;
            }

            .comment-box img {
                width: 60px;
            }


            section.product-description table {
                max-width:100%
            }
        </style>
    @endpush
@else
    <div class="p-3">
        <div class="p-3 rounded bg-warning">
            Product Slug Not Found.
        </div>
    </div>
@endif




{{-- zooming image --}}
   <style>
                                
    div#zoomBox {

        width: 100%;
        min-height: 400px;
        overflow: hidden;
        border: 1px solid #000;
        background-color: #fff;
        display: none;
        position: absolute;
        z-index: 999;
        top:15px;    
}
</style>
<script>
// Zoom Image
let main_image_containers = document.querySelectorAll('.hover_image_container');
const zoomBox = document.getElementById('zoomBox');

main_image_containers.forEach(function (container) {
    const img = container.querySelector('img');

    container.addEventListener('mouseover', function () {
        zoomBox.style.display = 'block';
        zoomBox.style.backgroundImage = `url(${img.src})`;
        zoomBox.style.backgroundSize = '200% 200%'; // Zoom level
    });

    container.addEventListener('mouseleave', function () {
        zoomBox.style.display = 'none';
    });

    img.addEventListener('mousemove', function (event) {
        const { left, top, width, height } = img.getBoundingClientRect();
        const x = (event.clientX - left) / width;
        const y = (event.clientY - top) / height;

        zoomBox.style.backgroundPosition = `${x * 100}% ${y * 100}%`;
    });
});

</script>
{{-- end zooming --}}