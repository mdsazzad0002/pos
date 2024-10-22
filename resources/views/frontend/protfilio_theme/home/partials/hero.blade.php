@if(count($sliders) > 0)


<!-- Hero Section -->
<section id="hero" class="hero section dark-background">

  <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="3000">

    @foreach ($sliders as $item)
    <div class="carousel-item active">
      <img src="{{ dynamic_asset($item->upload_id) }}" alt="">
      <div class="container">
        <h2>{{ $item->title }}</h2>
        <p>{{ $item->short_description }}</p>
        <a href="{{ $item->button_link }}" class="btn-get-started">{{ $item->button_title }}</a>
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

</section><!-- /Hero Section -->
@endif
