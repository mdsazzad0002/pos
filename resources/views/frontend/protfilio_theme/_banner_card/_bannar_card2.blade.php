

@php
    $offer_event = \App\Models\offerbanner::where('type', 3)->first();
@endphp
<section class="inner-banner"  style="background: url('{{ asset("uploads/bg/inner-banner.png")}}')  no-repeat">
    <div class="container-fluid">
        <div class="inner-content v-2">
            <div class="inner-text">
                <h2 class="white">{{ $offer_event->title ?? '' }}</h2>
            </div>
            <div class="coming-soon-cd">
                <ul class="unstyled countdown" data-date="{{ $offer_event->offer_end_data }}">
                    <li>
                        <h2 class="h5">365</h2>
                        <h6 class="fw-500">Days</h6>
                    </li>
                    <li>
                        <h2 class="h5">24</h2>
                        <h6 class="fw-500">Hrs</h6>
                    </li>
                    <li>
                        <h2 class="h5">60</h2>
                        <h6 class="fw-500">Min</h6>
                    </li>
                    <li>
                        <h2 class="h5">60</h2>
                        <h6 class="fw-500">Secs</h6>
                    </li>
                </ul>
            </div>
            <div class="inner-image-2">
                <img src="{{ dynamic_asset($offer_event->image1) }}" alt="">
            </div>
        </div>
    </div>
</section>

@push('js')
<script>
      countdownInit(".countdown", "2024/12/01");
</script>

@endpush
