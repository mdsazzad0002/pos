@php
    if ($variant_info->is_details_page) {
        $client_list = \App\Models\Client::where('status', 1)->paginate($variant_info->items_show);
    } else {
        $client_list = \App\Models\Client::where('status', 1)->limit($variant_info->items_show)->get();
    }

@endphp


<!-- Clients Section -->
@if (count($client_list) > 0)
    <x-frontend_section :items="$client_list" :info="$variant_info" shortbutton="true" class="clients_client_style2 section p-0"
        css="_client_style/_client_style2.css">


        <div class="container-fluid">
            <div class="client-sec">


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
                    @foreach ($client_list as $client)
                        <a href="javascript:void(0)" class="client-block">
                            <img src="{{ dynamic_asset($client->upload_id) }}" alt="">
                        </a>
                    @endforeach
                </div>

            </div>
        </div>
    </x-frontend_section>

    {{-- </section><!-- /Clients Section --> --}}


    @push('js')
        <link rel="stylesheet" href="{{ asset('vendor/slick-1.8.1/slick.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/slick-1.8.1/slick-theme.css') }}">
        <script src="{{ asset('vendor/slick-1.8.1/slick.min.js') }}"></script>
    @endpush
@endif
