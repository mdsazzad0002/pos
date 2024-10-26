@extends('frontend.protfilio_theme.layout.master')


@section('content')
<!-- Faq Section -->
<section id="faq" class="faq section">

  <!-- Section Title -->
  <div class="container section-title" data-aos="fade-up">
    <h2>{{ __('faq.fronted_heading') }}</h2>
    <p>{{ __('faq.fronted_sub_heading') }}</p>
  </div><!-- End Section Title -->

  <div class="container">

    <div class="row justify-content-center">

      <div class="col-lg-10" data-aos="fade-up" data-aos-delay="100">

        <div class="faq-container">



          @forelse($faqs as $key => $faq)
            <div class="faq-item @if($key == 0) faq-active @endif">
                <h3>{{ Str::title($faq->title) }}</h3>
                <div class="faq-content">
                     <p>{{ $faq->answer }}</p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
            </div><!-- End Faq item-->
        @empty
            <div class="p-4 bg-cyan">
                {{ __('faq.not_found') }}
            </div>
        @endforelse


      </div><!-- End Faq Column-->

    </div>

  </div>

</section><!-- /Faq Section -->

@endsection


