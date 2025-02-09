@php
    if($variant_info->is_details_page){
        $category_list = \App\Models\Category::where('status', 1)->paginate($variant_info->items_show);
    }else{
        $category_list = \App\Models\Category::where('status', 1)->limit($variant_info->items_show)->get();
    }
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
@endphp


<!-- Clients Section -->
@if (count($category_list) > 0 && $filter_page)

    <x-frontend_section :items="$category_list" :info="$variant_info" class="clients_category_style5 section p-0" css="_category_style/_category_style5.css" id="clients_category_style5">

        <div class="category-sec">

            <div class="categories-sec py-24">
                <div class="container-fluid">
                    <div class="row">
                        <div class="categories-wrapper">
                            @foreach ($category_list as $category)
                            <a  href="{{ url($filter_page->slug)}}?category={{ $category->slug }}" class="category-block">
                                <div class="image-box mb-12">
                                    <img src="{{ dynamic_asset($category->upload_id) }}" alt="">
                                </div>
                                <div class="text-center">{{ $category->name }}</div>
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


    </x-frontend_section>
@endif
