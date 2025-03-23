<!-- Services Section -->
@php
    $service_items = \App\Models\Service::where('status', 1)->get();
    $service_page = \App\Models\Page::where('status', 1)->where('page_type', 'service_details')->first();
@endphp


@if (count($service_items) > 0)
    <x-frontend_section :items="$service_items" shortbutton="true" :info="$variant_info" id="services_service_style1"
        class="services_service_style1 section" css="_service_style/_service_style1.css">

        <div class="container-fluid">
            <div class="row gy-4">
                @foreach ($service_items as $item)
                    <div class="col-lg-{{ 12 / ($variant_info->items_per_row != 0 ? $variant_info->items_per_row : 1) }} col-md-6 mb-3"
                        data-aos="fade-up" data-aos-delay="100">
                        <div class="service-item  position-relative">
                            <div class="icon">
                                <i class="{{ $item->icon_class }}"></i>
                            </div>
                            <a href="{{ url($service_page->slug) }}/{{ $item->slug }}" class="stretched-link">
                                <h3>{{ $item->title ?? '' }}</h3>
                            </a>
                            <p>
                                {{ $item->short_description ?? '' }}
                            </p>
                            @if ($variant_info->short_read_more_status)
                                <a href="{{ url($service_page->slug) }}/{{ $item->slug }}"
                                    class="read-more mt-2 stretched-link">{{ $variant_info->short_read_more }} <i
                                        class="bi bi-arrow-right"></i></a>
                            @endif
                        </div>
                    </div><!-- End Service Item -->
                @endforeach

            </div>

        </div>

    </x-frontend_section>
@endif
