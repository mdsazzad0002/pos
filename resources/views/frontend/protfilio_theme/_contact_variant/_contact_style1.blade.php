

    <link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/_contact_style/_contact_style1.css')}}">

    <!-- Contact Section -->
    <section id="contact_contact_style1" class="contact_contact_style1 section">

    @include('frontend.protfilio_theme._variant_manage._title')

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