
<h5 class="color-sec">
@include('frontend.protfilio_theme._filter_variant.partials.rating_core', [ 'rating_star' => $rating_star])
@if (!isset($rating_count) || $rating_count != false)
    &nbsp;&nbsp;<span class="text-16 fw-400 dark-black">({{ $rating ?? 0 }}) Reviews</span></h5>
    
@endif

