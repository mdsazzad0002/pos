@php
    $testimonials_list = \App\Models\Testimonial::where('status', 1)->get();
@endphp

<!-- Testimonials Section -->
<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_testimonial_style/_tesstimonial_style2.css') }}">


<section id="testimonials_tesstimonial_style2" class="testimonials_tesstimonial_style2 section light-background">

    @include('frontend.protfilio_theme._variant_manage._title')

  <div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="swiper init-swiper" data-speed="600" data-delay="5000" data-breakpoints="{ &quot;320&quot;: { &quot;slidesPerView&quot;: 1, &quot;spaceBetween&quot;: 40 }, &quot;1200&quot;: { &quot;slidesPerView&quot;: 3, &quot;spaceBetween&quot;: 40 } }">
      <script type="application/json" class="swiper-config">
        {
          "loop": true,
          "speed": 600,
          "autoplay": {
            "delay": 5000
          },
          "slidesPerView": "auto",
          "pagination": {
            "el": ".swiper-pagination",
            "type": "bullets",
            "clickable": true
          },
          "breakpoints": {
            "320": {
              "slidesPerView": 1,
              "spaceBetween": 40
            },
            "1200": {
              "slidesPerView": 3,
              "spaceBetween": 20
            }
          }
        }
      </script>
      <div class="swiper-wrapper">
        @foreach ($testimonials_list as $items)
        <div class="swiper-slide">
          <div class="testimonial-item">
        <p>
          <i class=" bi bi-quote quote-icon-left"></i>
            <span>{{ $items->description }}</span>
            <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <img  src="{{ dynamic_asset($items->upload_id) }}"  class="testimonial-img" alt="">
            <h3>{{ $items->name }}</h3>
            <h4>{{ $items->designation }}</h4>
          </div>
        </div><!-- End testimonial item -->
        @endforeach

        
      </div>
      <div class="swiper-pagination"></div>
    </div>

  </div>

</section><!-- /Testimonials Section -->