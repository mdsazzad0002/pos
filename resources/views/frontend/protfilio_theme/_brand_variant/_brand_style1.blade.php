@php
if($variant_info->is_details_page){
$brand_list = \App\Models\brand::where('status', 1)->paginate($variant_info->items_show);
}else{
$brand_list = \App\Models\brand::where('status', 1)->limit($variant_info->items_show)->get();
}
@endphp

@if(count($brand_list) > 0)
<x-frontend_section :items="$brand_list" :info="$variant_info" class="clients_brand_style1" css="_brand_style/_brand_style1.css" >

        <div class="container-fulid" data-aos="fade-up" data-aos-delay="100">
            <div class=" clients-wrap">
                @foreach ($brand_list as $brand)
                <a href="{{ route('client.view', $brand->slug) }}" class="client-logo ">
                    <img src="{{ dynamic_asset($brand->upload_id) }}" class="img-fluid" alt="">
                </a><!-- End Client Item -->
                @endforeach
            </div>

        </div>

</x-frontend_section>
@endif
