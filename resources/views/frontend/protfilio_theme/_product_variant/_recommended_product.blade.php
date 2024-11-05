@php
if($variant_info->is_details_page){
    $recommend_category = \App\Models\category::where('status', 1)->paginate($variant_info->items_show);
}else{
    $recommend_category = \App\Models\category::where('status', 1)->limit($variant_info->items_show)->get();
}




@endphp

@if(count($recommend_category) > 0)
<x-frontend_section :items="$recommend_category" :info="$variant_info" class="recommend_product" css="_product_style/_product_recommend.css" >


    <section class="recommended-product-sec py-40 bg-lightest-gray">
        <div class="container-fluid">
            <div class="row row-gap-3">


                <div class="col-xl-12">
                    @include('frontend.protfilio_theme._product_variant._common_product_deasign',  ['title_data'=> 'Recommended Product','category'=> $recommend_category])
                </div>
            </div>
        </div>
    </section>


</x-frontend_section>




@push('script')
<script>
    function recommend_product(){
        var i = 0;
        var recommends_sec =  document.querySelector('.recommended-product-sec');
        recommends_items = recommends_sec.querySelectorAll('button.nav-link')
        recommends_items.forEach(element => {
            var id_current_target = element.getAttribute('data-bs-target');


            element.addEventListener('click', function(){
                var id = $(this).data('id');
                $.ajax({
                    type:'get',
                    data:{
                        'id' :id
                    },
                    url:'{{ route('product.recommend_view') }}',
                    success: function(data) {
                        recommends_sec.querySelector(id_current_target).innerHTML = data;
                        quick_view();
                    }
                })
            })
        });
        if(i == 0){
            i++
            recommends_items[0].click();
        }
    }
    recommend_product();

</script>
@endpush

@endif

