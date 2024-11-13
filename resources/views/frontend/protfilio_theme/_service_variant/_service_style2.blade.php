@php
    $service_items = \App\Models\Service::where('status', 1)->get();
@endphp

@if(count($service_items) > 0)

<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_service_style/_service_style2.css') }}">
<!-- Services Section -->
<section id="services_service_style2" class="services_service_style2 section">


    @include('frontend.protfilio_theme._variant_manage._title')

  <div class="container">

    <div class="row g-5">

        @foreach ($service_items as $item)
            <div class="col-lg-{{ 12 / ($variant_info->items_per_row != 0 ? $variant_info->items_per_row : 1) }} " data-aos="fade-up" data-aos-delay="100">
                <div class="service-item item-cyan position-relative">
                <i class="{{ $item->icon_class }} icon"></i>
                <div>
                    <h3>{{ $item->title ?? '' }}</h3>
                    <p>{{ $item->short_description ?? '' }}</p>

                    @if($variant_info->short_read_more_status)
                    <a href="{{ route('service.view', $item->slug )}}" class="read-more stretched-link">{{ $variant_info->short_read_more }} <i class="bi bi-arrow-right"></i></a>
                   @endif

                </div>
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
