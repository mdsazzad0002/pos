{{-- <x-frontend_section :items="null" :info="$variant_info" class="contact_contact_style1 py-24"
    css="_contact_style/_contact_style1.css"> --}}



    <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4">
            <div><h1>Bluk Upload</h1></div>
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <form action="{{ route('contact.store') }}" method="post" class="php-email-form" data-aos="fade-up"
                    data-aos-delay="200">
                    @csrf
                    <div class="row gy-4">
                        <div class="col-md-12">
                            <label for="name-field" class="pb-2">{{ __('contact.front_your_name') }}</label>
                            <input type="text" required name="name" id="name-field" class="form-control" required="">
                        </div>
                        <div class="col-md-6">
                            <label for="phone-field" class="pb-2">{{ __('contact.front_phone') }}</label>
                            <input type="text" required class="form-control" name="phone" id="phone-field" required="">
                        </div>

                        <div class="col-md-6">
                            <label for="email-field" class="pb-2">{{ __('contact.front_your_email') }}</label>
                            <input type="email" required class="form-control" name="email" id="email-field" required="">
                        </div>
                        <div class="col-md-12">
                            <label for="address-field" class="pb-2">{{ __('contact.front_address') }}</label>
                            <input type="text" class="form-control" name="address" id="address-field" required="">
                        </div>
                        <div class="col-md-12">
                            <label for="company-field" class="pb-2">Company</label>
                            <input type="text" class="form-control" name="company" id="company-field" required="">
                        </div>
                        <div class="col-md-12">
                            <label for="type-field" class="pb-2">Product Type</label>
                            <input type="text" class="form-control" name="type" id="type-field" required="">
                        </div>
                        <div class="col-md-6">
                            <label for="date-field" class="pb-2">Estimated Delivery Date</label>
                            <input type="date" required class="form-control" name="date" id="date-field" required="">
                        </div>

                        <div class="col-md-6">
                            <label for="quantity-field" class="pb-2">Approx Quantity</label>
                            <input type="text" required class="form-control" name="quantity" id="quantity-field" required="">
                        </div>
                        <div class="col-md-12">
                            <label for="message-field" class="pb-2">{{ __('contact.front_message') }}</label>
                            <textarea required class="form-control" name="message" rows="10" id="message-field"
                                required=""></textarea>
                        </div>

                        <div class="col-md-12 text-center">
                            <div class="loading">Loading</div>
                            <div class="error-message">Something weng wrong. Please try again later. Or contact our
                                support number</div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>

                            <button type="submit">Send Message</button>
                        </div>

                    </div>
                </form>
            </div><!-- End Contact Form -->
            <div class="col-lg-3"></div>
        </div>
    </div>
{{-- </x-frontend_section>

<script src="{{ asset('frontend/protfilio_theme/css/_contact_style/_contact_form.js') }}"></script> --}}
