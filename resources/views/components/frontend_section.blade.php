<!-- Clients Section -->
@isset($css)
<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/'.$css)}}">
@endisset

<section id="{{ $class ?? '' }}" class="{{ $class ?? '' }} section" style="{{ $info->background_type == 1 ? 'background-image:url('.dynamic_asset($info->background).')' : 'background:'.$info->background_color  }};    background-repeat: no-repeat; background-size: cover;">



    @if(isset($info))
    <!-- Section Title -->
        @if(!isset($title))
            @if($info->sub_title_status || $info->title_status)

                @if($info->title_style == 'title_style_5')

                    <div class=" section-title" data-aos="fade-up">
                        <div class="{{ $info->title_style }}">
                            @if($info->title_status)
                            <h2 class="title">{{ __($info->title) }}</h2>
                            @endif
                            @if($info->sub_title_status)
                            <p class="sub_title">{{ __($info->sub_title) }}</p>
                            @endif
                        </div>
                    </div>

                @else

                    <div class="container-fluid section-title pt-3" data-aos="fade-up">
                        <div class="{{ $info->title_style }}">
                            @if($info->title_status)
                            <h2 class="title">{{ __($info->title) }}</h2>
                            @endif
                            @if($info->sub_title_status)
                            <p class="sub_title">{{ __($info->sub_title) }}</p>
                            @endif
                        </div>
                    </div>

                @endif
                
            @endif
        @endif
    @endif

    <!-- End Section Title -->
    {{-- @dd($info) --}}

    {{ $slot }}


    @if(isset($info) && isset($items))
    <div class="container-fluid  text-center  d-flex align-items-center justify-content-center">
        @if($info->is_details_page && $items)
        <div class="links_nav mt-3">
            {{ $items->links()  }}
        </div>
        @endif

    </div>



    @if ($info->view_all_status)
    <div class="text-center py-4">
        <a href="{{ url($info->view_all_page_url ?? '') }}" class="btn_primary">{{ $info->view_all }}
            <i class="bi bi-arrow-right"></i></a>
    </div>
    @endif
    @endif

    @isset($js)

    @endisset

</section><!-- /Clients Section -->
