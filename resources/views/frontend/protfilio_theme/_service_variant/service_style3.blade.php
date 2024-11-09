@extends('frontend.protfilio_theme.layout.master')


@section('content')

{{-- Services  --}}
@include('frontend.protfilio_theme.home.partials.service', ['services' => $services])



@if (count($features) > 0)

<!-- Features Section -->
<section id="features" class="features section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
        <h2>{{ __('features.front_title') }}</h2>
        <p>{{ __('features.front_subtitle') }}</p>
    </div><!-- End Section Title -->

    <div class="container">
        <div class="row justify-content-between">

            <div class="col-lg-5 d-flex align-items-center">

                <ul class="nav nav-tabs" data-aos="fade-up" data-aos-delay="100">
                    @php
                        $i=  0;
                    @endphp
                    @foreach ($features as $item)
                    <li class="nav-item">
                        <a class="nav-link @if($i == 0)active show @endif" data-bs-toggle="tab" data-bs-target="#{{ $item->slug }}">
                            <i class="{{ $item->icon_class }}"></i>
                            @php
                                $i++;
                            @endphp
                            <div>
                                <h4 class="d-none d-lg-block">{{ $item->title }}</h4>
                                <p>
                                    {{ $item->short_description }}
                                </p>
                            </div>
                        </a>
                    </li>
                    @endforeach

                </ul><!-- End Tab Nav -->

            </div>

            <div class="col-lg-6">

                @php
                    $i = 0;
                @endphp
                <div class="tab-content" data-aos="fade-up" data-aos-delay="200">
                    @foreach ($features as $item)
                    <div class="tab-pane fade  @if($i == 0) active show @endif" id="{{ $item->slug }}">
                        @php
                        $i++;
                    @endphp
                        <img src="{{ dynamic_asset($item->upload_id) }}" alt="" class="img-fluid w-100">
                    </div><!-- End Tab Content Item -->
                    @endforeach


                </div>

            </div>

        </div>

</section><!-- /Features Section -->

@endif

@endsection
