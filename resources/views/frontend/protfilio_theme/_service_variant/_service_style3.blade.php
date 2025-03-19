@php
    $service = \App\Models\Service::where('status', 1)->get();
    $service_page = \App\Models\Page::where('status', 1)->where('page_type', 'service_details')->first();
@endphp


@if (count($service) > 0)

    <!-- Features Section -->
    <x-frontend_section :items="$service" :info="$variant_info" id="_service_style3" class="_service_style3 section"
        css="_service_style/_service_style3.css">

        <div class="container-fluid">
            <div class="row justify-content-between">

                <div class="col-lg-6 d-flex align-items-center mb-3">
                    <div class="items_service_container">
                        <ul class="nav nav-tabs" data-aos="fade-up" data-aos-delay="100">
                            @php
                                $i = 0;
                            @endphp
                            @foreach ($service as $item)
                                <li class="nav-item">
                                    <div class="nav-link @if ($i == 0) active show @endif"
                                        data-bs-toggle="tab" data-bs-target="#{{ $item->slug }}">
                                        <i class="{{ $item->icon_class }}"></i>
                                        @php
                                            $i++;
                                        @endphp
                                        <div>
                                            <h4 class="d-none d-lg-block">{{ $item->title }}</h4>
                                            <p>
                                                {{ $item->short_description }}
                                            </p>
                                        </div>
                                        <br>
                                        <a href="{{ url($service_page->slug) }}/{{ $item->slug }}" class="">
                                          <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </li>
                            @endforeach
    
                        </ul><!-- End Tab Nav -->

                    </div>


                </div>

                <div class="col-lg-6">

                    @php
                        $i = 0;
                    @endphp
                    <div class="tab-content" data-aos="fade-up" data-aos-delay="200">
                        @foreach ($service as $item)
                            <div class="tab-pane fade  @if ($i == 0) active show @endif"
                                id="{{ $item->slug }}">
                                @php
                                    $i++;
                                @endphp
                                <img src="{{ dynamic_asset($item->upload_id) }}" alt="" class="img-fluid w-100">
                            </div><!-- End Tab Content Item -->
                        @endforeach


                    </div>

                </div>

            </div>

        </div>
    </x-frontend_section>
@endif


