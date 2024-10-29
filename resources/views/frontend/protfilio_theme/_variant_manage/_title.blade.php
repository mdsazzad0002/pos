

<!-- Section Title -->
@if($variant_info->sub_title_status || $variant_info->title_status)
<div class="container section-title" data-aos="fade-up">
    @if($variant_info->title_status)
    <h2>{{ __($variant_info->title) }}</h2>
    @endif
    @if($variant_info->sub_title_status)
    <p>{{ __($variant_info->sub_title) }}</p>
    @endif
</div><!-- End Section Title -->
@endif
