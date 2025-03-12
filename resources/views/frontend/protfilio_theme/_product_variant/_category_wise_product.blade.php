


@php
    $category_wise_details_page = \App\Models\Page::where('page_type', 'category_details_page')->first();

    $recommend_category = \App\Models\Category::where('status', 1);

    if(\request('category') ){
        $recommend_category = $recommend_category->where('slug', \request('category'));
    }elseif($variant_info->category != 0 && $variant_info->category != null && $variant_info->category != ''){
        $recommend_category = $recommend_category->where('id', $variant_info->category);
    }

    $recommend_category = $recommend_category->get();


@endphp



@foreach ($recommend_category as $category_item)
    <x-frontend_section  :info="$variant_info" class="recommend_product" css="_product_style/_product_recommend.css" >
        <div class="product_wise_cateogry-product-sec py-40">
            <div class="container-fluid">
                <a href="{{ url($category_wise_details_page->slug) }}?category={{ $category_item->slug }}" class="w-100">
                    <img src="{{ dynamic_asset($category_item->upload_bg) }}" alt="" class="w-100 mb-3">
                </a>
                <div class="row row-gap-3">


                    <div class="col-xl-12">
                     
                        <div class="items_data_category info_id_pro{{ $variant_info->id ?? 0 }}{{ $category_item->id ?? 0 }}">
                            {{-- load by ajax --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </x-frontend_section>



    @push('script')
    <script>
        function recommend_product{{ $category_item->id }}(){
            var recommends_sec =  document.querySelector('.product_wise_cateogry-product-sec .items_data_category.info_id_pro{{ $variant_info->id ?? 0 }}{{ $category_item->id ?? 0 }}');
            $.ajax({
                type:'get',
                data:{
                    // 'id' :id
                    'limit' :{{ $variant_info->items_show }},
                    'category_id': '{{ $category_item->id }}',
                        @if ($variant_info->is_details_page == 1)
                          'paginate_data': true,
                          'page' : {{ request('page') ?? 1 }},
                          'category' : '{{ request('category') }}',
                        @endif
                        @if (\request('p'))
                            'p' : '{{ request('p') }}',
                        @endif
                      'details_page_slug' : '{{ $category_wise_details_page->slug }}',
                    
                },
                url:'{{ route('product.category_wise') }}',
                success: function(data) {
                    recommends_sec.innerHTML = data;
                    quick_view();
                }
            })
        }

        recommend_product{{ $category_item->id }}();

    </script>
    @endpush


@endforeach


