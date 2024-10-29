@php
    $faq_list = \App\Models\Faq::where('status', 1)->get();
@endphp


<!-- Faq Section -->
<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_faq_style/_faq_style1.css') }}">
<section id="faq_faq_style1" class="faq_faq_style1 section">

    @include('frontend.protfilio_theme._variant_manage._title')

    <div class="container">

        <div class="row justify-content-center">
            <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
                <div class="faq-container row">
                    @forelse($faq_list as $key => $faq)
                    <div class="col-lg-{{ 12 / $variant_info->items_per_row }} mb-2">
                        
                    <div class="faq-item @if($key == 0) faq-active @endif">
                        <h3>{{ Str::title($faq->title) }}</h3>
                        <div class="faq-content">
                            <p>{{ $faq->answer }}</p>
                        </div>
                        <i class="faq-toggle bi bi-chevron-right"></i>
                    </div><!-- End Faq item-->
                    
                </div>
                    @empty
                    <div class="p-4 bg-cyan">
                        {{ __('faq.not_found') }}
                    </div>
                    @endforelse
                </div><!-- End Faq Column-->
            </div>
        </div>
        @if($variant_info->view_all_status)
        <div class="text-center">
            <a href="{{ route('faq.index') }}" class="btn_primary">{{ $variant_info->short_read_more }} <i class="bi bi-arrow-right"></i></a>
        </div>
    @endif
</section><!-- /Faq Section -->