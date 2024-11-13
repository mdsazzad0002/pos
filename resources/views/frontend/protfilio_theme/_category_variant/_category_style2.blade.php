@php
    if($variant_info->is_details_page){
        $category_list = \App\Models\category::where('status', 1)->paginate($variant_info->items_show);
    }else{
        $category_list = \App\Models\category::where('status', 1)->limit($variant_info->items_show)->get();
    }
    $filter_page = \App\Models\page::where('page_type', 'filter')->first();
@endphp


<!-- Clients Section -->
@if (count($category_list) > 0)
    <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_category_style/_category_style2.css') }}">
    <section id="clients_category_style2" class="clients_category_style2 section p-0" style="{{ $variant_info->background_type ? 'background-image:url('.dynamic_asset($variant_info->background).')' : 'background:'.$variant_info->background_color  }}">

        <div class="category-sec">
            @include('frontend.protfilio_theme._variant_manage._title')

            <div class="categories-sec py-24">
                <div class="container-fluid">
                    <div class="row">
                        <div class="categories-wrapper">
                            @foreach ($category_list as $category)
                            <a  href="{{ url($filter_page->slug)}}?category={{ $category->slug }}" class="category-block">
                                <div class="image-box mb-12">
                                    <img src="{{ dynamic_asset($category->upload_id) }}" alt="">
                                </div>
                                <p class="fw-500 mb-4p">{{ $category->name }}</p>
                                <p class="dark-gray">{{ $category->productCount() }} Product</p>
                            </a>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>


            @if($variant_info->is_details_page)
            <div class="links_nav mt-3">
                {{ $category_list->links()  }}

            </div>
            @endif
            @if ($variant_info->view_all_status)
                <div class="text-center">
                    <a href="{{ url($variant_info->view_all_page_url ?? '') }}" class="btn_primary">{{ $variant_info->short_read_more }}
                        <i class="bi bi-arrow-right"></i></a>
                </div>
            @endif
        </div>


    </section><!-- /Clients Section -->


    @push('js')
    <link rel="stylesheet" href="{{ asset('vendor/slick-1.8.1/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/slick-1.8.1/slick-theme.css') }}">
    <script src="{{ asset('vendor/slick-1.8.1/slick.min.js') }}"></script>

    @endpush
@endif
