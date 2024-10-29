@php
    $testimonials_list = \App\Models\Testimonial::where('status', 1)->get();
@endphp

<!-- Testimonials Section -->
<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_testimonial_style/_tesstimonial_style1.css') }}">
<section id="testimonials_tesstimonial_style1" class="testimonials_tesstimonial_style1 section light-background">

    @include('frontend.protfilio_theme._variant_manage._title')
    <div class="container">

        <div class="row align-items-center">


            <div class="col-lg-12" data-aos="fade-up" data-aos-delay="200">

                <div class="swiper init-swiper">
                    <script type="application/json" class="swiper-config">
                        {
                            "loop": true
                            , "speed": 600
                            , "autoplay": {
                                "delay": 5000
                            }
                            , "slidesPerView": "auto"
                            , "pagination": {
                                "el": ".swiper-pagination"
                                , "type": "bullets"
                                , "clickable": true
                            }
                        }

                    </script>
                    <div class="swiper-wrapper">

                        @foreach ($testimonials_list as $items)
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <div class="d-flex">
                                    <img src="{{ dynamic_asset($items->upload_id) }}" class="testimonial-img flex-shrink-0" alt="">
                                    <div>
                                        <h3>{{ $items->name }}</h3>
                                        <h4>{{ $items->designation }}</h4>
                                        <div class="stars">
                                            @for($i = 0; $i < $items->rating; $i++)
                                                <i class="bi bi-star-fill"></i>

                                                @endfor

                                        </div>
                                    </div>
                                </div>
                                <p>
                                    <i class="bi bi-quote quote-icon-left"></i>
                                    <span>{{ $items->description }}</span>
                                    <i class="bi bi-quote quote-icon-right"></i>
                                </p>
                            </div>
                        </div><!-- End testimonial item -->

                        @endforeach

                    </div>
                    <div class="swiper-pagination"></div>
                </div>

            </div>

        </div>

    </div>

</section><!-- /Testimonials Section -->
