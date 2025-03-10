@php
    $category_list = \App\Models\Category::where('status', 1)->get();
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
@endphp


<x-frontend_section :info="$variant_info" class="_category_style6" css="_category_style/_category_style6.css">
    <div class="container-fluid">
        <div class="row">
            @foreach ($category_list as  $key => $category)
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <a class="product-link" href="{{ url($filter_page->slug) . '?category=' . $category->slug }}">
                        <div>
                            <img src="{{ dynamic_asset($category->upload_id) }}">
                        </div>
                        <div class="hero-link">
                            {{ $category->name }}
                        </div>
                    </a>
                </div>
            @endforeach

        </div>
    </div>
</x-frontend_section>
