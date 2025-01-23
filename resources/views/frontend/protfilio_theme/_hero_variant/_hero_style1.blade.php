@php
$slider_list = \App\Models\slider::where('status', 1)->get();
@endphp

@if(count($slider_list) > 0)


<x-frontend_section :items="$slider_list" :info="$variant_info" class="hero_hero_style1"
    css="_hero_style/_hero_style1.css">

    <div class=" py-24">

        <div>

            <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel"
                data-bs-interval="3000">

                @foreach ($slider_list as $key => $item)
                <div class="carousel-item @if($key == 0) active @endif">
                    <img src="{{ dynamic_asset($item->upload_id) }}" alt="">
                    <div class="container">
                        <h2>{{ $item->title }} </h2>
                        <p>{{ $item->short_description }}</p>
                        @if ($items->button_link != '' && $items->button_title != '')
                        <a href="{{ $item->button_link }}" class="btn-get-started">{{ $item->button_title }}</a>
                        @endif
                    </div>
                </div><!-- End Carousel Item -->
                @endforeach



                <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
                </a>

                <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
                </a>

                <ol class="carousel-indicators"></ol>

            </div>

        </div><!-- /Hero Section -->
    </div>
</x-frontend_section>
@endif

  
        