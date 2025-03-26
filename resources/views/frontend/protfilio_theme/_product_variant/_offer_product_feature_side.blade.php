@php
    $offer_event = \App\Models\OfferBanner::where('type', 4)->first();

@endphp
@if($offer_event)

<a href="{{ url($offer_event->link ?? '#') }}" class="main-card text-center"
    style="background: url('{{ dynamic_asset($offer_event->image3) }}') no-repeat; background-size: cover;">
    <h4 class="fw-500 white mb-32">{{ $offer_event->title ?? '' }}</h4>
    <div class="image mb-32">
        <img src="{{ dynamic_asset($offer_event->image1) }}" style="max-width: 100%;" alt="">
    </div>
    <h5 class="fw-500 white mb-20 text-center">{!! $offer_event->subtitle ?? '' !!}</h5>
</a>
@endif
