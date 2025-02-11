{{-- <x-frontend_section :items="null" :info="$variant_info" class="contact_contact_style1 py-24"
    css="_contact_style/_contact_style1.css"> --}}

<?php

    $wholeSale = \App\Models\WholeSaleProductType::all();
?>
<style>
    button:hover{
        background: green;
    }
</style>

    <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4">
            <div><h1>Bluk Upload</h1></div>
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <form id="bulkOrderForm" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
                    @csrf
                    <div class="row gy-4">
                        <input type="hidden" name="order_type" value="0">
                        <div class="col-md-12">
                            <label for="name-field" class="pb-2">{{ __('contact.front_your_name') }}</label>
                            <input type="text" name="name" id="name-field" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label for="phone-field" class="pb-2">{{ __('contact.front_phone') }}</label>
                            <input type="text" class="form-control" name="phone" id="phone-field" required>
                        </div>
                        <div class="col-md-6">
                            <label for="email-field" class="pb-2">{{ __('contact.front_your_email') }}</label>
                            <input type="email" class="form-control" name="email" id="email-field" required>
                        </div>
                        <div class="col-md-12">
                            <label for="address-field" class="pb-2">{{ __('contact.front_address') }}</label>
                            <input type="text" class="form-control" name="address" id="address-field" required>
                        </div>
                        <div class="col-md-12">
                            <label for="company-field" class="pb-2">Company</label>
                            <input type="text" class="form-control" name="company" id="company-field" required>
                        </div>
                        <div class="col-md-12">
                            <label for="type-field" class="pb-2">Product Type (T-shirt, Polo T-shirt, Jacket, Gift Item etc.)</label>
                            <select name="type" id="" class="form-control">
                                @foreach ($wholeSale as $item)
                                    <option value="{{ $item->name }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="date-field" class="pb-2">Estimated Delivery Date</label>
                            <input type="date" class="form-control" name="date" id="date-field" required>
                        </div>
                        <div class="col-md-6">
                            <label for="quantity-field" class="pb-2">Approx Quantity</label>
                            <input type="text" class="form-control" name="quantity" id="quantity-field" required>
                        </div>
                        <div class="col-md-12">
                            <label for="message-field" class="pb-2">{{ __('contact.front_message') }}</label>
                            <textarea class="form-control" name="description" rows="10" id="message-field" required></textarea>
                        </div>

                        <div class="col-md-12 text-center">
                            <div class="loading" style="display: none;">Loading...</div>
                            <div class="error-message" style="display: none; color: red;">Something went wrong. Please try again later.</div>
                            <div class="sent-message" style="display: none; color: green;">Your message has been sent. Thank you!</div>

                            <button class="form-control" type="submit">Send Message</button>
                        </div>
                    </div>
                </form>
            </div><!-- End Contact Form -->
            <div class="col-lg-3"></div>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", (event) => {
            $("#bulkOrderForm").on("submit", function(e) {
                e.preventDefault(); // Prevent default form submission

                let formData = new FormData(this);
                console.log(formData);
                $(".loading").show();
                $(".error-message, .sent-message").hide();

                $.ajax({
                    url: "{{ route('bluk.order.store') }}", // Laravel route
                    type: "POST",
                    data: formData,
                    contentType: false, // Required for FormData
                    processData: false,

                    success: function(response) {
                        response = JSON.parse(response);
                        $(".loading").hide();
                        if (response.type == "success") {
                            $(".sent-message").show().text(response.title);
                            $("#bulkOrderForm")[0].reset(); // Reset form
                        } else {
                            $(".error-message").show().text(response.title);
                        }
                    },
                    error: function(xhr) {
                        $(".loading").hide();
                        $(".error-message").show().text("Something went wrong. Please try again.");
                    }
                });
            });
        });

    </script>
{{-- </x-frontend_section>

<script src="{{ asset('frontend/protfilio_theme/css/_contact_style/_contact_form.js') }}"></script> --}}
