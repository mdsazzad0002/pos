<!-- Services Section -->
@php
    $service_items = \App\Models\Service::where('status', 1)->get();
    $service_page = \App\Models\Page::where('status', 1)->where('page_type', 'service_details')->first();
@endphp


@if (count($service_items) > 0)
    <x-frontend_section :items="$service_items" :info="$variant_info" shortbutton="true" id="services_service_style5"
        class="services_service_style5 section" css="_service_style/_service_style5.css">

        <div class="container-fluid">
            <div class="row gy-4">
                @foreach ($service_items as $item)
                <a class="col-xl-2 col-md-4 col-6" href="{{ url($service_page->slug) }}/{{ $item->slug }}">
                    <div class="benefit-block">
                        <div class="image-box mb-12">
                            <i class="{{  $item->icon_class ?? '' }}"></i>
                        </div>
                        <div class="content-box">
                            <p class="fw-500 mb-4p">{{  $item->title ?? '' }}</p>
                            <p class="light-gray">{{  $item->short_description ?? '' }}</p>
                        </div>
                    </div>
                </a>
                @endforeach

            </div>

        </div>

    </x-frontend_section>
@endif
