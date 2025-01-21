@php
if($variant_info->is_details_page){
    $slider_list = \App\Models\slider::where('status', 1)->paginate($variant_info->items_show);

}else{
    $slider_list = \App\Models\slider::where('status', 1)->limit($variant_info->items_show)->get();
}
@endphp

@if(count($slider_list) > 2)
<x-frontend_section :items="$slider_list" :info="$variant_info" class="hero_hero_slider1" css="_hero_style/_hero_slider1.css">

<section class="hero-slider py-24">
    <div class="container-fluid">
          <div id="carouselExampleDark" class="carousel carousel-dark slide">

            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>

            <div class="carousel-inner">
                @foreach ($slider_list as $key => $items)
                <div class="carousel-item  @if($key == 0) active @endif" data-bs-interval="10000">
                    <img src="{{ dynamic_asset($items->upload_bg) }}" class="d-block w-100" alt="{{ $items->title }}">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>{{ $items->title }}</h5>
                        <p>{{ $items->short_description }}</p>
                        <p>{{ $items->sub_description }}</p>
                        @if ($items->button_link != '' && $items->button_title != '')
                            <a href="{{ $items->button_link }}" class="cus-btn-3 sec">{{ $items->button_title }}</a>
                        @endif
                    </div>
                </div>
                @endforeach
            </div>


            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>

            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>

          </div>
    </div>
</section>

</x-frontend_section>
@else
    <div class="text-danger p-2 bg-warni">Minimum 3 Items Require</div>
@endif


