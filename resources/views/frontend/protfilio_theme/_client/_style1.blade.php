@php
if($variant_info->is_details_page){
$clients_list = \App\Models\Client::where('status', 1)->paginate($variant_info->items_show);
}else{
$clients_list = \App\Models\Client::where('status', 1)->limit($variant_info->items_show)->get();
}
if(!isset($filter_page)){
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
}
@endphp

@if(count($clients_list) > 0)
<x-frontend_section :items="$clients_list" :info="$variant_info" shortbutton="true" class="clients_clients_style1" css="_client_style/_client_style1.css" >

        <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
            <div class=" clients-wrap">
                @foreach ($clients_list as $clients)
                <a href="javascript:void(0)" class="client-logo ">
                    <img src="{{ dynamic_asset($clients->upload_id) }}" class="img-fluid" alt="">
                </a><!-- End Client Item -->
                @endforeach
            </div>

        </div>

</x-frontend_section>
@endif
