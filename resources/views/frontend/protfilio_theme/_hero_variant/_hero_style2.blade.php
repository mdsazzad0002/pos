@php
    $slider_list = \App\Models\slider::where('status', 1)->get();
@endphp

@if(count($slider_list) > 0)

<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_hero_style/_hero_style2.css') }}">
<!-- Hero Section -->
<section id="hero_hero_style2" class="hero_hero_style2 section dark-background">
<div class="container-fluid">
  <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="3000">

    @foreach ($slider_list as $key => $item)
    <div class="carousel-item  @if($key == 0) active @endif">
      <img src="{{ dynamic_asset($item->upload_bg) }}" alt="">
      <div class="container">
        <h2>{{ $item->title }}</h2>
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

    <div class="carousel-indicators">
        @foreach ($slider_list as $key => $items)
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="{{ $key }}" class="@if ($key == 0) active  @endif" aria-current="true" aria-label="Slide {{ $key }}"></button>
        @endforeach
    </div>


  </div>

</div>
</section><!-- /Hero Section -->
@endif
