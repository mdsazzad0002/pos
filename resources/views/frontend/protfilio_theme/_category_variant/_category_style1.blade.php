@php
if($variant_info->is_details_page){
$category_list = \App\Models\category::withCount(['products' => function ($query) {
$query->where('status', 1);
}])->where('status', 1)->paginate($variant_info->items_show);

}else{
$category_list = \App\Models\category::withCount(['products' => function ($query) {
$query->where('status', 1);
}])->where('status', 1)->limit($variant_info->items_show)->get();

}
@endphp

@if(count($category_list) > 0)
<x-frontend_section :items="$category_list" :info="$variant_info" class="category_style1" css="_category_style/_category_style1.css">


<div class="categories-sec py-24">
    <div class="container-fluid">
        <div class="row">
            <div class="categories-wrapper">
                @foreach ($category_list as $items)
                    <a href="{{ url('filter') }}?category={{ $items->slug }}" class="category-block">
                        <div class="image-box mb-12">
                            <img class="rounded-circle" src="{{ dynamic_asset($items->upload_id) }}" alt="">
                        </div>
                        <p class="fw-500 mb-4p">{{ $items->name }}</p>
                        <p class="dark-gray">{{ $items->products_count }} Product</p>
                    </a>
                @endforeach
            </div>
        </div>
    </div>
</div>
</x-frontend_section>
@endif
