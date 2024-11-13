@php
$team_items = \App\Models\User::where('status', 1)->get();
@endphp

@if(count($team_items) > 0)
<!-- Team Section -->
<link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_team_style/_team_style2.css') }}">
<section id="team_team_style2 " class="team_team_style2  section">

    @include('frontend.protfilio_theme._variant_manage._title')

    <div class="container">

        <div class="row gy-4">
            @foreach ($team_items as $item)


            <div class="col-xl{{ 12 / $variant_info->items_per_row != 0 ? $variant_info->items_per_row : 1 }} col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
                <div class="member">
                  <img  src="{{ dynamic_asset($item->upload_id) }}" class="img-fluid" alt="">
                  <div class="member-info">
                    <a href="{{ route('team.view', $item->slug) }}"  class="member-info-content">
                        <h4>{{ $item->name }}</h4>
                        <span>{{ $item->designation }}</span>
                    </a>
                    <div class="social">
                        <a href="{{ $item->twitter }}"><i class="bi bi-twitter-x"></i></a>
                        <a href="{{ $item->facebook }}"><i class="bi bi-facebook"></i></a>
                        <a href="{{ $item->instagram }}"><i class="bi bi-instagram"></i></a>
                        <a href="{{ $item->linkedin }}"><i class="bi bi-linkedin"></i></a>
                    </div>
                  </div>
                </div>
              </div><!-- End Team Member -->
            @endforeach


        </div>

        @if($variant_info->view_all_status)
        <div class="text-center">
            <a href="{{ route('team.index') }}" class="btn_primary">{{ $variant_info->short_read_more }} <i class="bi bi-arrow-right"></i></a>
        </div>
        @endif

    </div>

</section><!-- /Team Section -->

@endif

