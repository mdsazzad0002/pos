<!-- Services Section -->
@if(count($services) > 0)
<section id="services" class="services section">

  <div class="container">

    <div class="row gy-4">

        @foreach ($services as $item)
            
        
      <div class="col-lg-4 col-md-6 mb-3" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item  position-relative">
          <div class="icon">
            <i class="{{ $item->icon_class }}"></i>
          </div>
          <a href="{{ route('service.view', $item->slug )}}" class="stretched-link">
            <h3>{{ $item->title ?? '' }}</h3>
          </a>
          <p>
            {{ $item->short_description ?? '' }}
          </p>
        </div>
      </div><!-- End Service Item -->
      @endforeach

   
    </div>

  </div>

</section><!-- /Services Section -->
@endif