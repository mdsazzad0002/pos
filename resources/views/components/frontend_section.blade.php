<!-- Clients Section -->
@isset($css)
<link rel="stylesheet" href="{{asset('frontend/protfilio_theme/css/'.$css)}}">
@endisset

<section id="{{ $class ?? '' }}" class="{{ $class ?? '' }} section" style="{{ $info->background_type == 1 ? 'background-image:url('.dynamic_asset($info->background).')' : 'background:'.$info->background_color  }};    background-repeat: no-repeat; background-size: cover;">



    @if(isset($info))
    <!-- Section Title -->
        @if(!isset($title))
            @if($info->sub_title_status || $info->title_status)

            <div class="container-fluid mb-3">
            {{-- button short --}}
                @if (isset($shortbutton)   && $info->short_read_more_status == 1)
                    <div class="d-flex align-items-end justify-content-between">
                @endif
            {{-- button short --}}
             


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

                            <div class=" section-title pt-3" data-aos="fade-up">
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

        {{-- button short --}}
            @if (isset($shortbutton)   && $info->short_read_more_status == 1)
                    <div class="short_button_section">
                        <a href="{{ url($info->short_read_more_page_url) }}" class="btn btn-sm btn-outline-primary btn_primary" style="    white-space: nowrap;">{{ $info->short_read_more }}  <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
            @endif
        {{-- button short --}}
    </div>
                
            @endif
        @endif
    @endif

    <!-- End Section Title -->
    {{-- @dd($info) --}}

    {{ $slot }}


    <div class="container-fluid  text-center  d-flex align-items-center  justify-content-{{ $info->details_or_view_all_align ?? 'center' }}">
        @if(isset($info) && isset($items))
            @if($info->is_details_page && $items)
            <div class="links_nav mt-3">
                {{ $items->links()  }}
            </div>
            @endif


        @endif
    

        @if ($info->view_all_status == 1)
            <div class="text-center pb-4">
                <a href="{{ url($info->view_all_page_url ?? '') }}" class="btn btn-sm btn-outline-primary btn_primary">{{ $info->view_all }}
                    <i class="bi bi-arrow-right"></i></a>
            </div>
        @endif

    </div>



    @isset($js)

    @endisset

</section><!-- /Clients Section -->
