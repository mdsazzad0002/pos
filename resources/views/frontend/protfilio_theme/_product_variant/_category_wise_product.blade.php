


@php
    $category_wise_details_page = \App\Models\Page::where('page_type', 'category_details_page')->first();

    if($variant_info->is_details_page){
        if(\request('category')){
            $recommend_category = \App\Models\category::where('status', 1)->where('slug', \request('category'))->paginate($variant_info->items_show);
        }else{
            $recommend_category = \App\Models\category::where('status', 1)->paginate($variant_info->items_show);
        }
    }else{
        $recommend_category = \App\Models\category::where('status', 1)->limit($variant_info->items_show)->get();
    }


@endphp

@foreach ($recommend_category as $category_item)


    <x-frontend_section :items="$recommend_category" :info="$variant_info" class="recommend_product" css="_product_style/_product_recommend.css" >
        <div class="product_wise_cateogry-product-sec py-40">
            <div class="container-fluid">
                <a href="{{ $category_wise_details_page->slug }}?category={{ $category_item->slug }}">
                    <img src="{{ dynamic_asset($category_item->upload_id) }}" alt="" class="w-100 mb-3">
                </a>
                <div class="row row-gap-3">


                    <div class="col-xl-12">
                        <div class="items_data_category info_id_pro{{ $category_item->id ?? 0 }}">
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
            var recommends_sec =  document.querySelector('.product_wise_cateogry-product-sec .items_data_category.info_id_pro{{ $category_item->id ?? 0 }}');
            $.ajax({
                type:'get',
                data:{
                    // 'id' :id
                    'category_id': '{{ $category_item->id }}',
                    @if (!\request()->is($category_wise_details_page->slug))
                        'details_page_slug' : '{{ $category_wise_details_page->slug }}',
                        'paginate_data': false,
                    @else
                        'paginate_data': true,
                    @endif
                    'limit' :{{ $variant_info->items_show }},
                },
                url:'{{ route('product.category_wise') }}',
                success: function(data) {
                    recommends_sec.innerHTML = data;
                }
            })
        }

        recommend_product{{ $category_item->id }}();

    </script>
    @endpush


@endforeach


