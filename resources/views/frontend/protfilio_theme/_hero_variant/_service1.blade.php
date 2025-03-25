@php
    $slider_list = \App\Models\slider::where('status', 1)->get();

    if (!isset($filter_page)) {
        $filter_page = \App\Models\Page::where('status', 1)->where('page_type', 'filter')->first();
    }
@endphp

@if (count($slider_list) > 0)

    <script>
        function modal_category_open(category_id, modal_id) {
            $(modal_id).modal('show');
            document.querySelector(category_id).click();
            // console.log(category_id);

        }
    </script>


    @if(isMobile())
         <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_hero_style/_hero_service1_mobile.css') }}">
    @else
        <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_hero_style/_hero_service1.css') }}">
    @endif
    <!-- Hero Section -->
    <section id="hero_hero_style2_service" class="hero_hero_style2_service section dark-background">
        <div class="">
            <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="3000">

                @foreach ($slider_list as $key => $item)
                    <div class="carousel-item  @if ($key == 0) active @endif">
                        <img src="{{ dynamic_asset($item->upload_bg) }}" alt="">
                        <div class="container">
                            <h2>{{ $item->title }}</h2>
                            <p>{{ $item->short_description }}</p>
                            @if ($items->button_link != '' && $items->button_title != '')
                                <a href="{{ $item->button_link }}" class="btn-get-started">{{ $item->button_title }}</a>
                            @endif
                        </div>
                    </div><!-- End Carousel Item -->
                @endforeach



                <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
                </a>

                <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
                </a>

                
                @if (settings('location_wise_filter_page_status', 'hero') == 1)
                {{-- Filter --}}
                <div class="filter_form">
                    <form action="{{ url($filter_page->slug) }}" method="get" class="d-flex flex-nowrap">
                        <div class="location">
                            <input type="location_id" name="location_id" placeholder="Location" class="location_id">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#locationSelectModal"><i
                                    class="bi bi-geo-alt"></i> <span class="location_name">Location</span></button>
                        </div>
                        <div class="search">
                            <input type="text" name="q" placeholder="Enter your Service" class="form-control">
                            <button type="submit" class="btn-search btn-primary"><i class="bi bi-search"></i></button>
                        </div>
                    </form>
                </div>
                {{-- End Filter --}}
                @endif


            </div>

        </div>

        {{-- Category --}}
        <div class="category_container">
            <button class="scroll-left">&lt;</button>
            <div class="row_grid">
                @foreach (category() as $category)
                    <a class="cat-link"
                        onclick="modal_category_open('#v-pills-{{ $category->slug }}-tab', '#locationSelectModal_category')">
                        <img class="cat-img img-fluid" src="{{ dynamic_asset($category->upload_id) }}" />
                        <div class="hero-name"> {{ $category->name }}</div>

                    </a>
                @endforeach

                {{-- <a class="cat-link" href="{{ url($filter_page->slug) }}">
                    <i class="fas fa-th-large" style="    font-size: 44px;"></i>
                    <div class="hero-name"> All Services <i class="fas fa-arrow-right"></i></div>
                </a> --}}

            </div>
            <button class="scroll-right">&gt;</button>
        </div>
        {{-- End Category --}}

    </section><!-- /Hero Section -->

    @if ($variant_info->background_type == 1)
        <div style="background: url('{{ dynamic_asset($variant_info->background) }}')">
        @else
            <div style="background: {{ $variant_info->background_color }}">
    @endif

    @if (!isMobile())
        
    <br>
    <br>
    <br>
    <br>
    @endif
    </div>
@endif



@if (settings('location_wise_filter_page_status', 'hero') == 1)
    @php
        $area_list = \App\Models\area::where('status', 1)->get();
    @endphp
    <!-- Location Area select Modal -->
    <div class="modal fade" id="locationSelectModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Select your Area</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <div class="row">
                        @foreach ($area_list as $area)
                            <div class="col-md-6 col-xl-4 single_area"
                                onclick="change_area({{ $area->id }}, '{{ $area->name }}')">
                                {{ $area->name }}
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    {{-- End Location Area select Modal --}}
@endif

{{-- Category Sub Category --}}
<div class="modal fade" id="locationSelectModal_category" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content rounded-0">

            <div class="modal-body p-0">


                <div class="d-flex align-items-start">
                    <div class="nav flex-column nav-pills " id="v-pills-tab" role="tablist"
                        aria-orientation="vertical">
                        @foreach (category() as $key => $category)
                            <button class="nav-link category_btn @if ($key == 0) active @endif "
                                id="v-pills-{{ $category->slug }}-tab" data-bs-toggle="pill"
                                data-bs-target="#v-pills-{{ $category->slug }}" type="button" role="tab"
                                aria-controls="v-pills-{{ $category->slug }}" aria-selected="true">
                                <img src="{{ dynamic_asset($category->upload_id) }}" alt="">
                                {{ $category->name ?? '' }}</button>
                        @endforeach

                    </div>
                    <div class="tab-content" id="v-pills-tabContent">
                        @foreach (category() as $key => $category)
                            <div class="tab-pane fade  @if ($key == 0) show active @endif "
                                id="v-pills-{{ $category->slug }}" role="tabpanel"
                                aria-labelledby="v-pills-{{ $category->slug }}-tab">
                                {{-- <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">...</div> --}}


                                @foreach ($category->subcategories_info as $sub_category)
                                    <a class="csingle_area_sub"
                                        href="{{ url($filter_page->slug) }}?subcategory_ids[]={{ $sub_category->id }}&category={{ $category->slug }}">
                                        <img src="{{ dynamic_asset($sub_category->upload_id) }}"
                                            alt="" />{{ $sub_category->name }}
                                    </a>
                                @endforeach

                            </div>
                        @endforeach

                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
{{-- End Category Sub Category --}}
<script>
    // Location Area
    function change_area(area_id, area_name) {
        $('.location_name').text(area_name);
        $('input[name=location_id]').val(area_id);
        $('#locationSelectModal').modal('hide');
    }
    // End Location Area


    // Category Scroll
    document.addEventListener("DOMContentLoaded", function() {
        const container = document.querySelector(".row_grid");
        const leftButton = document.querySelector(".scroll-left");
        const rightButton = document.querySelector(".scroll-right");

        const scrollAmount = 200; // Adjust scroll amount

        function updateButtons() {
            leftButton.style.opacity = container.scrollLeft > 0 ? 1 : 0;
            rightButton.style.opacity = (container.scrollLeft + container.clientWidth < container.scrollWidth) ?
                1 : 0;
        }

        leftButton.addEventListener("click", () => {
            container.scrollBy({
                left: -scrollAmount,
                behavior: "smooth"
            });
        });

        rightButton.addEventListener("click", () => {
            container.scrollBy({
                left: scrollAmount,
                behavior: "smooth"
            });
        });

        // Update button visibility on scroll
        container.addEventListener("scroll", updateButtons);

        // Initial check on page load
        updateButtons();
        // End Category Scroll

    });
</script>

<style>



</style>
