<!-- Clients Section -->
@if(count($brands) > 0)
    <section id="clients" class="clients section">

        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>{{ __('brand.front_heading') }}</h2>
            <p>{{ __('brand.front_sub_heading') }}</p>
        </div><!-- End Section Title -->

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class=" clients-wrap">
                @foreach ($brands as $brand)
                <div class="client-logo ">
                    <img src="{{ dynamic_asset($brand->upload_id) }}" class="img-fluid" alt="">
                </div><!-- End Client Item -->
                @endforeach
            </div>
        </div>
    </section><!-- /Clients Section -->
@endif
