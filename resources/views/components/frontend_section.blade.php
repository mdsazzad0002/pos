<!-- Clients Section -->
@isset($css)
<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/'.$css)}}">
@endisset
<section id="{{ $class ?? '' }}" class="{{ $class ?? '' }} section" style="{{ $info->background_type ? 'background-image:url('.dynamic_asset($info->background).')' : 'background:'.$info->background_color  }}">

    <!-- Section Title -->
    @if($info->sub_title_status || $info->title_status)
    <div class="container section-title" data-aos="fade-up">
        @if($info->title_status)
        <h2>{{ __($info->title) }}</h2>
        @endif
        @if($info->sub_title_status)
        <p>{{ __($info->sub_title) }}</p>
        @endif
    </div>
    @endif
    <!-- End Section Title -->

    {{ $slot }}


    @if($info->is_details_page)
    <div class="links_nav mt-3">
        {{ $items->links()  }}

    </div>
    @endif


    @if ($info->view_all_status)
    <div class="text-center">
        <a href="{{ url($info->view_all_page_url ?? '') }}" class="btn_primary">{{ $info->short_read_more }}
            <i class="bi bi-arrow-right"></i></a>
    </div>
    @endif

    @isset($js)

    @endisset

</section><!-- /Clients Section -->
