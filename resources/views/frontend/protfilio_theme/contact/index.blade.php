@extends('frontend.protfilio_theme.layout.master')


@section('content')
<!-- About Section -->
<section id="about" class="about section">

  <div class="container">

    <div class="row gy-4">
      <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
        <h3>Voluptatem dignissimos provident laboris nisi ut aliquip ex ea commodo</h3>
        <img src="{{ dynamic_asset(0) }}" class="img-fluid rounded-4 mb-4 w-100" alt="">
        <p>Ut fugiat ut sunt quia veniam. Voluptate perferendis perspiciatis quod nisi et. Placeat debitis quia recusandae odit et consequatur voluptatem. Dignissimos pariatur consectetur fugiat voluptas ea.</p>
        <p>Temporibus nihil enim deserunt sed ea. Provident sit expedita aut cupiditate nihil vitae quo officia vel. Blanditiis eligendi possimus et in cum. Quidem eos ut sint rem veniam qui. Ut ut repellendus nobis tempore doloribus debitis explicabo similique sit. Accusantium sed ut omnis beatae neque deleniti repellendus.</p>
      </div>
      <div class="col-lg-6" data-aos="fade-up" data-aos-delay="250">
        <div class="content ps-0 ps-lg-5">
          <p class="fst-italic">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
            magna aliqua.
          </p>
          <ul>
            <li><i class="bi bi-check-circle-fill"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
            <li><i class="bi bi-check-circle-fill"></i> <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
            <li><i class="bi bi-check-circle-fill"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</span></li>
          </ul>
          <p>
            Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
            velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident
          </p>

          <div class="position-relative mt-4">
            <img src="{{ dynamic_asset(0) }}" class="img-fluid rounded-4 w-100" alt="">
            <a href="{{ dynamic_asset(0) }}" class="glightbox pulsating-play-btn"></a>
          </div>
        </div>
      </div>
    </div>

  </div>

</section><!-- /About Section -->



<!-- Contact Section -->
<section id="contact" class="contact section">

  <!-- Section Title -->
  <div class="container section-title" data-aos="fade-up">
    <h2>{{ __('contact.front_title') }}</h2>
    <p>{{ __('contact.front_sub_title') }}</p>
  </div><!-- End Section Title -->

  <div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="row gy-4">

      <div class="col-lg-5">

        <div class="info-wrap">
          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="200">
            <i class="bi bi-geo-alt flex-shrink-0"></i>
            <div>
              <h3>{{ __('contact.front_address') }}</h3>
              <p>{{ settings('app_address', 9) }}</p>
            </div>
          </div><!-- End Info Item -->

          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
            <i class="bi bi-telephone flex-shrink-0"></i>
            <div>
              <h3>{{ __('contact.fornt_call_us') }}</h3>
              <p>{{ settings('app_email', 9) }}</p>
            </div>
          </div><!-- End Info Item -->

          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
            <i class="bi bi-envelope flex-shrink-0"></i>
            <div>
              <h3>{{ __('contact.front_email_us') }}</h3>
              <p>{{ settings('app_email', 9) }}</p>
            </div>
          </div><!-- End Info Item -->

          <iframe src="{{ settings('app_maps', 9) }}" frameborder="0" style="border:0; width: 100%; height: 270px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>

      <div class="col-lg-7">
        <form action="{{ route('contact.store') }}" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
            @csrf
          <div class="row gy-4">

            <div class="col-md-6">
              <label for="name-field" class="pb-2">{{ __('contact.front_your_name') }}</label>
              <input type="text" required name="name" id="name-field" class="form-control" required="">
            </div>


            <div class="col-md-6">
              <label for="email-field" class="pb-2">{{ __('contact.front_your_email') }}</label>
              <input type="email" required class="form-control" name="email" id="email-field" required="">
            </div>

            <div class="col-md-6">
              <label for="phone-field" class="pb-2">{{ __('contact.front_phone') }}</label>
              <input type="text" required class="form-control" name="phone" id="phone-field" required="">
            </div>

            <div class="col-md-6">
              <label for="address-field" class="pb-2">{{ __('contact.front_address') }}</label>
              <input type="text" class="form-control" name="address" id="address-field" required="">
            </div>



            <div class="col-md-12">
              <label for="message-field" class="pb-2">{{ __('contact.front_message') }}</label>
              <textarea required class="form-control" name="message" rows="10" id="message-field" required=""></textarea>
            </div>

            <div class="col-md-12 text-center">
              <div class="loading">Loading</div>
              <div class="error-message">Something weng wrong. Please try again later. Or contact our support number</div>
              <div class="sent-message">Your message has been sent. Thank you!</div>

              <button type="submit">Send Message</button>
            </div>

          </div>
        </form>
      </div><!-- End Contact Form -->

    </div>

  </div>

</section><!-- /Contact Section -->
@endsection

@push('js')
<script>
    document.querySelector('.php-email-form').addEventListener('submit', function(e) {
        e.preventDefault();
        this.querySelector('.loading').style.display = 'block';
var form_element =  this;
        // Create a new FormData object from the form
        const formData = new FormData(this);

        $.ajax({
            type: 'post',
            url: this.action,
            data: formData,
            processData: false, // Note: should be processData, not processType
            contentType: false, // Set to false to allow jQuery to automatically set the correct content type
            success: function(data) {
                // console.log(data);
                // data = JSON.parse(data)
                // console.log(data.type)
                data = JSON.parse(data);

                if(data.type == 'success'){

                    form_element.reset();
                    
                    form_element.querySelector('.loading').style.display = 'none';
                    form_element.querySelector('.sent-message').style.display = 'block';
                    setTimeout(() => {
                        form_element.querySelector('.sent-message').style.display = 'none';
                    }, 4500);

                }else{

                    form_element.querySelector('.loading').style.display = 'none';
                    form_element.querySelector('.error-message').style.display = 'block';
                    setTimeout(() => {
                        form_element.querySelector('.error-message').style.display = 'none';
                    }, 4500);
                }
                // You can add additional success handling here
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error('Error:', textStatus, errorThrown);
                // Handle errors here
                form_element.querySelector('.loading').style.display = 'none';
                form_element.querySelector('.error-message').style.display = 'block';
                form_element.querySelector('.error-message').innerHTML = errorThrown;
                setTimeout(() => {
                    form_element.querySelector('.error-message').style.display = 'none';
                }, 4500);
        }
        });
    });
</script>
@endpush

