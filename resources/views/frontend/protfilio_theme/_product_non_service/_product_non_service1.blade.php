


@php
   $details_page = \App\Models\Page::where('status', 1)->where('page_type', 'view')->first();

    if($variant_info->is_details_page){
        $products = \App\Models\Product::where('status', 1)->where('service', 0)->paginate($variant_info->items_show);
    }else{
        $products = \App\Models\Product::where('status', 1)->where('service', 0)->limit($variant_info->items_show)->get();
    }



@endphp




    <x-frontend_section  :info="$variant_info" shortbutton="true"  class="recommend_product" css="_product_style/_product_recommend.css" >
        <div class="product_wise_cateogry-product-sec pb-4">
            <div class="container-fluid">
              
                <div class="row row-gap-3">
                    @include('frontend.protfilio_theme._filter_variant.partials.product_items', ['product'=> $products])

                </div>
            </div>
        </div>
    </x-frontend_section>



