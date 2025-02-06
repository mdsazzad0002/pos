<main class="main-wrapper bg-lightest-gray">
<section class="error-section py-40">
    <div class="container-fluid">
        <div class="error-wrapper text-center py-40 bg-white br-10">
            <h1 class="mb-32">404</h1>
            @if(isset($variant_info))
                @if($variant_info->title_status == 1)
                    <h5 class="mb-16">{{  $variant_info->title ?? '<span class="color-primary">Opps!</span> Something is wrong' }} </h5>
                @endif
                @if($variant_info->sub_title_status == 1)
                    <p class="light-gray mb-32">{{ $variant_info->sub_title ?? 'This page is temporarily unavailable or has been moved.' }}</p>
                @endif
            @elseif($title == 1)
                <h5 class="mb-16">{{  $title ?? '<span class="color-primary">Opps!</span> Something is wrong' }} </h5>
                <p class="light-gray mb-32">{{ $details ?? 'This page is temporarily unavailable or has been moved.' }}</p>
            @endif
            <a href="{{ url('/') }}" class="cus-btn">Back to Home Page</a>
        </div>
    </div>
</section>
</main>

