@php
$slider_list = \App\Models\slider::where('status', 1)->get();
@endphp

@if(count($slider_list) > 0)


<x-frontend_section :items="$slider_list" :info="$variant_info" class="hero_hero_style1"
    css="_hero_style/_hero_style1.css">

    <div class=" py-24">
<div class="container-fluid">
        <div class="d-flex">
            <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel"
                data-bs-interval="3000">

                @foreach ($slider_list as $key => $item)
                <div class="carousel-item @if($key == 0) active @endif">
                    <img src="{{ dynamic_asset($item->upload_bg) }}" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>{{ $items->title }} {{ $key }}</h5>
                        <p>{{ $items->short_description }}</p>
                        <p>{{ $items->sub_description }}</p>
                        @if ($items->button_link != '' && $items->button_title != '')
                            <a href="{{ $items->button_link }}" class="cus-btn-3 sec">{{ $items->button_title }}</a>
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

                <div class="carousel-indicators">
                    @foreach ($slider_list as $key => $items)
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="{{ $key }}" class="@if ($key == 0) active  @endif" aria-current="true" aria-label="Slide {{ $key }}"></button>

                    @endforeach
                </div>

            </div>
            <a class="hero_image_style1_side_img" href="#">
                <img src="{{ dynamic_asset($slider_list[0]->upload_id) }}" class="img-fluid" alt="">
            </a>

        </div><!-- /Hero Section -->
    </div>
</div>
</x-frontend_section>
@endif


