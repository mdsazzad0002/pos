@if(isset($product))
    @php
        if(!isset($view_page)){
            $view_page = \App\Models\Page::where('page_type', 'view')->first();
        }
        if(!isset($product_style)){
            $product_style = \App\Models\ProductStyle::where('status',1)->first();
        }
    @endphp

    @if($product_style)
        @include('frontend.protfilio_theme.'.$product_style->key)
    @endif
@endif
