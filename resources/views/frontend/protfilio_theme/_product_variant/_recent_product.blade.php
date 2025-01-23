@php
if($variant_info->is_details_page){
    $feature_category = \App\Models\category::where('status', 1)->paginate($variant_info->items_show);
}else{
    $feature_category = \App\Models\category::where('status', 1)->limit($variant_info->items_show)->get();
}



@endphp

@if(count($feature_category) > 0)
<x-frontend_section :items="$feature_category" :info="$variant_info" class="recent_product" css="_product_style/_product_feature.css" >


    <div class="recent-product-sec py-40">
        <div class="container-fluid">
            <div class="row row-gap-3">


                <div class="col-xl-12">
                    @include('frontend.protfilio_theme._product_variant._common_product_deasign', ['title_data'=> 'Recent Product', 'category'=> $feature_category])
                </div>
            </div>
        </div>
    </div>


</x-frontend_section>




@push('script')
<script>
    function recent_product(){
        var i = 0;
        var features_sec =  document.querySelector('.recent-product-sec');
        features_items = features_sec.querySelectorAll('button.nav-link')
        features_items.forEach(element => {
            var id_current_target = element.getAttribute('data-bs-target');


            element.addEventListener('click', function(){
                var id = $(this).data('id');
                $.ajax({
                    type:'get',
                    data:{
                        'id' :id
                    },
                    url:'{{ route('product.recent_view') }}',
                    success: function(data) {
                        features_sec.querySelector(id_current_target).innerHTML = data;
                        quick_view();
                    }
                })
            })
        });
        if(i == 0){
            i++
            features_items[0].click();
        }
    }
    recent_product();

</script>
@endpush

@endif

