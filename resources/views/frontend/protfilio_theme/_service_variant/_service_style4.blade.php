<!-- Services Section -->
@php
    $service_items = \App\Models\Service::where('status', 1)->get();
    $service_page = \App\Models\Page::where('status', 1)->where('page_type', 'service_details')->first();
@endphp


@if (count($service_items) > 0)
    <x-frontend_section :items="$service_items" :info="$variant_info" shortbutton="true" id="services_service_style4"
        class="services_service_style4 section" css="_service_style/_service_style4.css">

        <div class="container-fluid">
            <div class="row gy-0">
                @foreach ($service_items as $item)
                    <div class="col-lg-{{ 12 / ($variant_info->items_per_row != 0 ? $variant_info->items_per_row : 1) }} col-md-6 mb-3"
                        data-aos="fade-up" data-aos-delay="100">
                        <div class="service-item  position-relative">
                            <div class="icon">
                               <img src="{{ dynamic_asset($item->upload_id) }}" alt="">
                            </div>
                            <a href="{{ url($service_page->slug) }}/{{ $item->slug }}" class="stretched-link">
                                <h3>{{ $item->title ?? '' }}</h3>
                            </a>
                            <p>
                                {{ $item->short_description ?? '' }}
                            </p>
                          
                        </div>
                    </div><!-- End Service Item -->
                @endforeach

            </div>

        </div>

    </x-frontend_section>
@endif
