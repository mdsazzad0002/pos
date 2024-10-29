@php
    $brand_list = \App\Models\brand::where('status', 1)->get();
@endphp

<!-- Clients Section -->
@if(count($brand_list) > 0)
    <link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/_brand_style/_brand_style1.css')}}">
    <section id="clients_brand_style1" class="clients_brand_style1 section">

    @include('frontend.protfilio_theme._variant_manage._title')

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class=" clients-wrap">
                @foreach ($brand_list as $brand)
                <a href="{{ route('client.view', $brand->slug) }}" class="client-logo ">
                    <img src="{{ dynamic_asset($brand->upload_id) }}" class="img-fluid" alt="">
                </a><!-- End Client Item -->
                @endforeach
            </div>
            @if($variant_info->view_all_status)
            <div class="text-center">
                <a href="{{ route('client.index') }}" class="btn_primary">{{ $variant_info->short_read_more }} <i class="bi bi-arrow-right"></i></a>
            </div>
        @endif
        </div>
    </section><!-- /Clients Section -->
@endif
