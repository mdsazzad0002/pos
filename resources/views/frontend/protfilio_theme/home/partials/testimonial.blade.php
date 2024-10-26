
<!-- Testimonials Section -->
<section id="testimonials" class="testimonials section light-background">

     <!-- Section Title -->
     <div class="container section-title" data-aos="fade-up">
        <h2>{{ __('testimonial.front_heading') }}</h2>
        <p>{{ __('testimonial.front_sub_heading') }}</p>
    </div><!-- End Section Title -->
  <div class="container">

    <div class="row align-items-center">


      <div class="col-lg-12" data-aos="fade-up" data-aos-delay="200">

        <div class="swiper init-swiper">
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
              }
            }
          </script>
          <div class="swiper-wrapper">

            @foreach ($testimonials as $items)
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
