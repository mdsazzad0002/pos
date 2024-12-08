@php
    $filter_page = \App\Models\page::where('status', 1)->where('page_type', 'filter')->first();
@endphp

<div class="close-content text-end">
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
@isset($product)

<h3 class="fw-600 mb-16">{{ $product->name ?? '' }}</h3>
<div class="d-flex align-items-center flex-wrap gap-16 mb-24">
    @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $product->review_count, 'rating_star' => $product->review_avg_rating])

    <div class="vr-line vr-line-2"></div>
    <p class="light-gray">Brand: <span class="color-primary">{{ $product->brands->name ?? '' }}</span></p>
</div>
<div class="d-flex align-items-center gap-16 mb-24">
    {{-- <p class="light-gray text-decoration-line-through">$450.00</p>
    <h5>$400.00</h5> --}}
    @include('frontend.protfilio_theme._filter_variant.partials.product_price', ['discount'=> true])

</div>
<p class="light-gray mb-24">
   {{ $product->short_description }}
</p>
<div class="hr-line mb-24"></div>
<div class="function-bar mb-16 quantity_parents">

    <div class="quantity quantity-wrap">
        <div class="input-area quantity-wrap">
            <input class="decrement" type="button" value="-">
            <input type="text" name="quantity" value="1" maxlength="2" size="1"
                class="number qunataty_number">
            <input class="increment" type="button" value="+">
        </div>
    </div>

    <div class="cart-btn w-100">
        <a href="javascript:void(0)" onclick="add_to_cart(this)" data-quantaty="true" data-id="{{ $product->id }}" class="cus-btn-2 w-100">Add to Cart</a>
    </div>

</div>
<div class="hr-line mb-24"></div>
<div class="d-flex  gap-16 mb-16">
    <h6>Category:</h6>

    <p class="light-gray">
        <a class="items_active" href="{{ url($filter_page->slug) }}?category={{  $product->category_info->slug  }}">{{ $product->category_info->name }}</a>

        @foreach ($product->category_info->subcategories_info as $items) ,
            <a @if($product->sub_category == $items->id) class="items_active" @endif  href="{{ url('filter') }}?subcategory={{   $items->slug  }}">{{  $items->name }}</a>
        @endforeach
    </p>
</div>

<div class="d-flex align-items-center gap-16 mb-16">
    <h6>Tags:</h6>
    <p class="light-gray">{{ $product->tags }}</p>
</div>

@endisset
