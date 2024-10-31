@php
    $brand_list = \App\Models\brand::where('status', 1)->get();
@endphp

<!-- Clients Section -->
@if (count($brand_list) > 0)
    <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_brand_style/_brand_style2.css') }}">
    <section id="clients_brand_style2" class="clients_brand_style2 section">

        <div class="brand-sec">
            @include('frontend.protfilio_theme._variant_manage._title')

            <div class="brand-slider">
                @foreach ($brand_list as $brand)
                    <a href="{{ route('client.view', $brand->slug) }}" class="brand-block">
                        <img src="{{ dynamic_asset($brand->upload_id) }}" alt="">
                    </a>
                @endforeach
                @if ($variant_info->view_all_status)
                    <div class="text-center">
                        <a href="{{ route('client.index') }}" class="btn_primary">{{ $variant_info->short_read_more }}
                            <i class="bi bi-arrow-right"></i></a>
                    </div>
                @endif
            </div>
        </div>


    </section><!-- /Clients Section -->
@endif
