<?php

    $wholeSale = \App\Models\WholeSaleProductType::all();
?>
<x-frontend_section :items="null" :info="$variant_info" class="contact_contact_style1 py-24"
    css="_contact_style/_contact_style1.css">

<style>
    button:hover{
        background: green;
    }
</style>
<!-- Include jQuery & Select2 -->


<br>
    <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4">
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
                        {{-- <div class="col-md-12">
                            <label for="type-field" class="pb-2">
                                Product Type (T-shirt, Polo T-shirt, Jacket, Gift Item etc.)
                            </label>
                            <select name="type[]" id="type-field" class="form-control select2" multiple>
                                @foreach ($wholeSale as $item)
                                    <option value="{{ $item->name }}"
                                        {{ in_array($item->name, old('type', [])) ? 'selected' : '' }}>
                                        {{ $item->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div> --}}
                        <div class="col-md-12">
                            <label for="type-field" class="pb-2">Product Type</label>
                            <div class="items_check">
                                @foreach ($wholeSale as $item)
                                <div class="items_single">
                                    <input  {{ in_array($item->name, old('type', [])) ? 'checked' : '' }} type="checkbox" id="type-field{{ $item->id }}" name="type[]" value="{{ $item->name }}">
                                    <label for="type-field{{ $item->id }}" class="pb-2" >
                                        {{ $item->name }}
                                    </label>
                                </div>
                                @endforeach
                            </div>
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
    <style>
        .items_check{
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            border: 1px solid black;
            padding: 4px;
            border-radius: 5px;
        }
        .items_single{
            flex: 0 0 150px;

        }
        .items_single input{
            display: none;

        }
        .items_single input ~ label{
            cursor: pointer;
            border: 1px solid rgb(221, 221, 221);
            padding: 5px 10px;
            border-radius: 5px;
            width: 100%;
        }
        .items_single input:checked ~ label{
            cursor: pointer;
            border: 1px solid rgb(5, 77, 119);
        }
    </style>

</x-frontend_section>
