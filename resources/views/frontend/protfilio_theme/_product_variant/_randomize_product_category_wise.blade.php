
@php
    if(!isset($category_wise_details_page)){
        $category_wise_details_page = \App\Models\Page::where('page_type', 'category_details_page')->first();
    }
@endphp

    <x-frontend_section  :info="$variant_info" class="recommend_product" css="_product_style/_product_recommend.css" >
        <div class="product_wise_cateogry-product-sec py-2">
            <div class="container-fluid">
                <div class="row row-gap-3">
                    <div class="col-xl-12">
                        <div class="items_data_category info_id_pro">
                            {{-- load by ajax --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </x-frontend_section>



    @push('script')
    <script>
        function recommend_product(){
            var recommends_sec =  document.querySelector('.product_wise_cateogry-product-sec .items_data_category.info_id_pro');
            $.ajax({
                type:'get',
                url:'{{ route('product.random_wise_product_category_wise') }}',
                data:{
                    // 'id' :id
                        @if ($variant_info->is_details_page)
                          'paginate_data': true,
                          'page' : {{ request('page') ?? 1 }},
                          'category' : '{{ request('category') }}',
                          
                          @endif
                        
                      'details_page_slug' : '{{ $category_wise_details_page->slug }}',
                      'limit' :{{ $variant_info->items_show }},
                },
                success: function(data) {
                    recommends_sec.innerHTML = data;
                    quick_view();
                }
            })
        }

        recommend_product();

    </script>
    @endpush



