@php
if($variant_info->is_details_page){
    $slider_list = \App\Models\slider::where('status', 1)->paginate($variant_info->items_show);

}else{
    $slider_list = \App\Models\slider::where('status', 1)->limit($variant_info->items_show)->get();

}
@endphp

@if(count($slider_list) > 2)
<x-frontend_section :items="$slider_list" :info="$variant_info" class="hero_hero_style3" css="_hero_style/_hero_style3.css">

    <section class="hero-banner py-24">
        <div class="container-fluid">
            <div class="row row-gap-3">
                <div class="col-xl-8 col-lg-12">
                    <div class="banner-right">
                        <div class="banner-content-right"
                            style="background: url('{{ dynamic_asset( $slider_list[0]->upload_bg)}}') no-repeat; background-size: cover;">
                            <div class="text-box">
                                <h6 class="color-ter mb-32 d-sm-block d-none">{{ $slider_list[0]->title }}</h6>
                                <h2 class="white fw-600 mb-8">{{ $slider_list[0]->short_description }}</h2>
                                <h6 class="white mb-32">{{ $slider_list[0]->sub_description }}</h6>
                                <a href="{{ $slider_list[0]->button_link }}" class="cus-btn-3 sec">{{ $slider_list[0]->button_title }}</a>
                            </div>
                            <div class="image-area">
                                <img src="{{ dynamic_asset($slider_list[0]->upload_id) }}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12">
                    <div class="d-xl-block d-sm-flex gap-16">
                        <div class="banner-right mb-16">
                            <div class="banner-content-right v-2"
                                style="background: url('{{ dynamic_asset( $slider_list[1]->upload_bg)}}') no-repeat; background-size: cover;">
                                <div class="text-box">
                                    <h5 class="fw-500 mb-16"><a href="{{ $slider_list[1]->button_link }}" class="white">{{ $slider_list[1]->title }}</a>
                                    </h5>
                                    <p class="white fw-500">{{ $slider_list[1]->sub_description }}</p>
                                </div>

                                <div class="image-area">
                                    <img src="{{ dynamic_asset($slider_list[1]->upload_id) }}" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="banner-right">
                            <div class="banner-content-right v-3"
                                style="background: url('{{ dynamic_asset( $slider_list[2]->upload_bg)}}') no-repeat; background-size: cover;">
                                <div class="text-box">
                                    <h5 class="fw-500 mb-16"><a href="{{ $slider_list[2]->button_link }}" class="white">{{ $slider_list[1]->title }}</a>
                                    </h5>
                                    <p class="white fw-500">{{ $slider_list[2]->sub_description }}</p>
                                </div>
                                <div class="image-area">
                                    <img src="{{ dynamic_asset($slider_list[2]->upload_id) }}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</x-frontend_section>
@else
    <div class="text-danger p-2 bg-warni">Minimum 3 Items Require</div>
@endif

