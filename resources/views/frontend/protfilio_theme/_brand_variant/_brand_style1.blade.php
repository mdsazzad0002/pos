@php
if($variant_info->is_details_page){
$brand_list = \App\Models\brand::where('status', 1)->paginate($variant_info->items_show);
}else{
$brand_list = \App\Models\brand::where('status', 1)->limit($variant_info->items_show)->get();
}
if(!isset($filter_page)){
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
}
@endphp

@if(count($brand_list) > 0)
<x-frontend_section :items="$brand_list" :info="$variant_info" class="clients_brand_style1" css="_brand_style/_brand_style1.css" >

        <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
            <div class=" clients-wrap">
                @foreach ($brand_list as $brand)
                <a href="{{ url($filter_page->slug) }}?brand={{  $brand->slug }}" class="client-logo ">
                    <img src="{{ dynamic_asset($brand->upload_id) }}" class="img-fluid" alt="">
                </a><!-- End Client Item -->
                @endforeach
            </div>

        </div>

</x-frontend_section>
@endif
