@php
    if($variant_info->is_details_page){
        $brand_list = \App\Models\brand::where('status', 1)->paginate($variant_info->items_show);
    }else{
        $brand_list = \App\Models\brand::where('status', 1)->limit($variant_info->items_show)->get();
    }
@endphp


<!-- Clients Section -->
@if (count($brand_list) > 0)
    <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_brand_style/_brand_style2.css') }}">
    <section id="clients_brand_style2" class="clients_brand_style2 section p-0" style="{{ $variant_info->background_type ? 'background-image:url('.dynamic_asset($variant_info->background).')' : 'background:'.$variant_info->background_color  }}">

        <div class="brand-sec">
            @include('frontend.protfilio_theme._variant_manage._title')

            <div class="brand-slider init-slick">
                <script type="application/json" class="slick-config d-none">
                    {
                        "autoplay": true,
                        "autoplaySpeed": 0,
                        "speed": 5000,
                        "arrows": false,
                        "swipe": false,
                        "slidesToShow": 5,
                        "cssEase": "linear",
                        "pauseOnFocus": false,
                        "pauseOnHover": false,
                        "responsive": [
                          {
                            "breakpoint": 1025,
                            "settings": {
                              "slidesToShow": 4
                            }
                          },
                          {
                            "breakpoint": 576,
                            "settings": {
                              "slidesToShow": 3
                            }
                          }
                        ]
                      }

                  </script>
                @foreach ($brand_list as $brand)
                    <a href="{{ route('client.view', $brand->slug) }}" class="brand-block">
                        <img src="{{ dynamic_asset($brand->upload_id) }}" alt="">
                    </a>
                @endforeach
            </div>
            @if($variant_info->is_details_page)
            <div class="links_nav mt-3">
                {{ $brand_list->links()  }}

            </div>
            @endif
            @if ($variant_info->view_all_status)
                <div class="text-center">
                    <a href="{{ url($variant_info->view_all_page_url ?? '') }}" class="btn_primary">{{ $variant_info->short_read_more }}
                        <i class="bi bi-arrow-right"></i></a>
                </div>
            @endif
        </div>


    </section><!-- /Clients Section -->


    @push('js')
    <link rel="stylesheet" href="{{ asset('vendor/slick-1.8.1/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/slick-1.8.1/slick-theme.css') }}">
    <script src="{{ asset('vendor/slick-1.8.1/slick.min.js') }}"></script>

    @endpush
@endif
