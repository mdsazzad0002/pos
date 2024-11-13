<!-- Services Section -->
@php
    $service_items = \App\Models\Service::where('status', 1)->get();
@endphp

@if(count($service_items) > 0)

<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_service_style/_service_style1.css') }}">

<section id="services_service_style1" class="services_service_style1 section">

    @include('frontend.protfilio_theme._variant_manage._title')

    <div class="container">

        <div class="row gy-4">

            @foreach ($service_items as $item)


            <div class="col-lg-{{ 12 / ($variant_info->items_per_row != 0 ? $variant_info->items_per_row : 1) }} col-md-6 mb-3" data-aos="fade-up" data-aos-delay="100">
                <div class="service-item  position-relative">
                    <div class="icon">
                        <i class="{{ $item->icon_class }}"></i>
                    </div>
                    <a href="{{ route('service.view', $item->slug )}}" class="stretched-link">
                        <h3>{{ $item->title ?? '' }}</h3>
                    </a>
                    <p>
                        {{ $item->short_description ?? '' }}
                    </p>
                    @if($variant_info->short_read_more_status)
                     <a href="{{ route('service.view', $item->slug )}}" class="read-more mt-2 stretched-link">{{ $variant_info->short_read_more }} <i class="bi bi-arrow-right"></i></a>
                    @endif
                </div>
            </div><!-- End Service Item -->
            @endforeach

        </div>
        @if($variant_info->view_all_status)
            <div class="text-center">
                <a href="{{ route('service.index') }}" class="btn_primary">{{ $variant_info->short_read_more }} <i class="bi bi-arrow-right"></i></a>
            </div>
        @endif
    </div>

</section><!-- /Services Section -->
@endif
