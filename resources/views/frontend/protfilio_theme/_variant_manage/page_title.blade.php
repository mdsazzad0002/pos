<section class="title-banner" style="background: url('{{ asset('uploads/banner/title-banner.png') }}') no-repeat;">
    <div class="container-fluid">
        <div class="banner-wrapper">
            <img src="{{ asset('uploads/banner/left-image.png') }}" alt="" class="banner-image1">
            <h1 class="dark-black fw-600">{{ $title ?? '' }}</h1>
            <img src="{{ asset('uploads/banner/right-image.png') }}" alt="" class="banner-image2">
        </div>
    </div>
</section>
