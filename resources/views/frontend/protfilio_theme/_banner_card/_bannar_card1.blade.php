@php
$offer_event = \App\Models\offerbanner::where('type', 2)->first();
@endphp

<section class="inner-banner" style="background: url('{{ asset("uploads/bg/inner-banner.png")}}') no-repeat">
    <div class="container-fluid">
        <div class="inner-content">
            <div class="inner-text">
                <h2 class="white">{{ $offer_event->title ?? '' }} <br> <a class="color-ter"
                        href="{{  $offer_event->link ?? '#' }}">Shop Now</a>&nbsp;{!! $offer_event->subtitle ?? '' !!}
                </h2>
            </div>
            <div class="inner-image">
                <img src="{{ dynamic_asset($offer_event->image1) }}" alt="">
            </div>
            <div class="inner-image-2">
                <img src="{{ dynamic_asset($offer_event->image2) }}" alt="">
            </div>
        </div>
    </div>
</section>
