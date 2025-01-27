@if(isset($variant_info))
<x-frontend_section :info="$variant_info" title='none' class="hero_hero_slider1" css="">
<section class="title-banner" style="">
    <div class="container-fluid">
        <div class="banner-wrapper">
            {{-- {{ dd($variant_info->upload_id1) }} --}}
            <img src="{{ dynamic_asset($variant_info->upload_id1 ?? 0) }}" alt="" class="banner-image1">
            <h1 class="dark-black fw-600">{{ $variant_info->title ?? '' }}</h1>
            <img src="{{ dynamic_asset($variant_info->upload_id2 ?? 0) }}" alt="" class="banner-image2">
        </div>
    </div>
</section>
</x-frontend-section>
@endif
