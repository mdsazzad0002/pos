@php
    $service_items = \App\Models\Service::where('status', 1)->get();
    $service_page = \App\Models\Page::where('status', 1)->where('page_type', 'service_details')->first();
    $array_color =  ['item-orange', 'item-cyan', 'item-teal', 'item-red', 'item-indigo', 'item-pink'] ;
@endphp

@if (count($service_items) > 0)

    <x-frontend_section :items="$service_items" shortbutton="true" :info="$variant_info" id="services_service_style2"
        class="services_service_style2 section" css="_service_style/_service_style2.css">



        <div class="container-fluid">
            <div class="row g-5">
                @foreach ($service_items as $item)
                    <div class="col-lg-{{ 12 / ($variant_info->items_per_row != 0 ? $variant_info->items_per_row : 1) }} "
                        data-aos="fade-up" data-aos-delay="100">
                        <div class="service-item {{ $array_color[array_rand($array_color)] }} position-relative">
                            <i class="{{ $item->icon_class }} icon"></i>
                            <div>
                                <a href="{{ url($service_page->slug) }}/{{ $item->slug }}" class="stretched-link">
                                    <h3>{{ $item->title ?? '' }}</h3>
                                    <p>{{ $item->short_description ?? '' }}</p>
                                </a>
                                @if ($variant_info->short_read_more_status)
                                    <a href="{{ url($service_page->slug) }}/{{ $item->slug }}"
                                        class="read-more stretched-link">{{ $variant_info->short_read_more }} <i
                                            class="bi bi-arrow-right"></i></a>
                                @endif

                            </div>
                        </div>
                    </div><!-- End Service Item -->
                @endforeach
            </div>
        </div>

    </x-frontend_section>
@endif
