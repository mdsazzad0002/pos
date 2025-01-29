@if(isset($variant_info))
<x-frontend_section :info="$variant_info" title='none' class="hero_hero_slider1" css="">
<section class="title-banner" style="">
    <div class="container-fluid">
        <div class="banner-wrapper">
            
            <h1 class="dark-black fw-600">{{ $variant_info->title ?? '' }}</h1>

        </div>
    </div>
</section>
</x-frontend-section>
@endif
