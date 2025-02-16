@php
    if(!isset($filter_page)){
        $filter_page = \App\Models\Page::where('status', 1)->where('page_type', 'filter')->first();
    }

    if(!isset($cart_page)){
        $cart_page = \App\Models\Page::where('status', 1)->where('page_type', 'cart')->first();
    }
@endphp
<div class="product_description_parents">


@if(!isset($close_model))
    <div class="close-content text-end">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
@endif

@isset($product)

<h3 class="fw-600 mb-16">{{ $product->name ?? '' }}</h3>
<div class="d-flex align-items-center flex-wrap gap-16 mb-24">
    @include('frontend.protfilio_theme._filter_variant.partials.rating_star', ['rating'=> $product->review_count, 'rating_star' => $product->review_avg_rating])

    {{-- <div class="vr-line vr-line-2"></div> --}}

</div>
<div class="hr-line mb-24"></div>
<div class="d-flex  gap-16 mb-16">
    <h6>Brand:</h6>
    <p class="light-gray"><span class="color-primary">
        <a href="{{ url($filter_page->slug) }}?brand={{  $product->brand_info->slug ?? '' }}">
            {{ $product->brand_info->name ?? '' }}
        </a>
    </span></p>
</div>
<div class="d-flex  gap-16 mb-16">
    <h6>Category:</h6>
    <p class="light-gray">
        @if (isset($filter_page))
            <a class="items_active" href="{{ url($filter_page->slug) }}?category={{  $product->category_info->slug ?? '' }}">{{ $product->category_info->name ?? '' }}</a>
        @endif

        @foreach ($product->category_info->subcategories_info as $items) ,
            <a @if($product->sub_category == $items->id) class="items_active" @endif  href="{{ url('filter') }}?subcategory={{   $items->slug  }}">{{  $items->name }}</a>
        @endforeach
    </p>
</div>

<div class="d-flex align-items-center gap-16 mb-16">
    <h6>Tags:</h6>
    <p class="light-gray">{{ $product->tags }}</p>
</div>

<div class="d-flex align-items-center gap-16 mb-24">
    {{-- <p class="light-gray text-decoration-line-through">$450.00</p> --}}
    <h6>Price:</h6>

        <h6 >
            <span class=" light-gray">

                <span class="name_price_old text-decoration-line-through" style="margin-right:8px;">
                    {{ settings('currency_symbol', 9) }}<input type="text" value="{{ $product->old_price }}" hidden>
                    <span class="text-decoration-line-through">{{ $product->old_price }}</span>
                </span>

                <span class="name_price">
                    {{ settings('currency_symbol', 9) }} <input type="text" value="{{ $product->selling_price }}" hidden>
                    <span>{{ $product->selling_price }}</span>
                </span>
            </span>

        </h6>
        @if( $product->old_price > $product->selling_price || $product->variant_on == 1)
            <span class="label white price_discount"> <span>{{  number_format((($product->old_price - $product->selling_price ) *  100 ) / $product->old_price ,2) }}</span>%</span>
        @endif



        <div class="fs-3 fw-bold mb-3 unit_change"> <input type="text" value="1" hidden> </div>



</div>



<div class="d-flex  gap-16 mb-16">
    <h6>Short Description:</h6>
    <div class="light-gray d-flex flex-column">{{ $product->short_description }}</div>
</div>
<div class="d-flex  gap-16 mb-16">
    <h6>Description:</h6>

    <div class="light-gray d-flex flex-column">{!! $product->description !!}</div>
</div>
<div class="hr-line mb-24"></div>


{{-- Product Variant --}}
    @if(settings('product_variant_style1_status', 99) == 1)
        @include('frontend.protfilio_theme._product_variant.partials.partials_variant.variant_style1', ['product' => $product])
    @elseif (settings('product_variant_style2_status', 99) == 1)
        @include('frontend.protfilio_theme._product_variant.partials.partials_variant.variant_style2', ['product' => $product])
    @elseif (settings('product_variant_style3_status', 99) == 1)
        @include('frontend.protfilio_theme._product_variant.partials.partials_variant.variant_style3', ['product' => $product])
    @endif
{{-- Product Variant --}}



@can('product edit')
    <a href="{{ route('admin.product.edit', $product->id) }}?#variant_on" target="_blank" class="btn btn-sm btn-warning"><i class="fa-solid fa-pen-to-square"></i> Edit Variant</a>
@endcan





@can('product edit')
    <a href="{{ route('admin.product.edit', $product->id) }}?#unit" target="_blank" class="btn btn-sm btn-warning"><i class="fa-solid fa-pen-to-square"></i> Edit Unit</a>
@endcan



<div class="function-bar mb-16 quantity_parents mt-2">
    <div class="quantity quantity-wrap">
        <div class="input-area quantity-wrap quantity_parents">
            <input class="decrement" type="button" value="-" onclick="product_counterUP(this, '-')">
            <input type="text" name="quantity" value="1" maxlength="2" size="1"
                class="number qunataty_number input_quantity">
            <input class="increment" type="button" value="+" onclick="product_counterUP(this, '+')">
        </div>
    </div>
    <div class="cart-btn w-100">
        <a href="javascript:void(0)" onclick="add_to_cart(this)" data-quantaty="true" data-id="{{ $product->id }}" class="cus-btn-2 w-100">ADD TO CART</a>
    </div>
    <div class="side-icons">
        <ul class="list-unstyled m-0">
            <li>
                <a href="javascript:void(0)" onclick="add_to_compareList({{ $product->id }})">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="22"
                        viewBox="0 0 24 22" fill="none">
                        <path
                            d="M12 21.6648C11.6583 21.6648 11.3289 21.541 11.0722 21.3162C10.1026 20.4684 9.16789 19.6717 8.34318 18.9689L8.33897 18.9653C5.92107 16.9048 3.83312 15.1254 2.38037 13.3725C0.756407 11.4129 0 9.55493 0 7.52521C0 5.55316 0.676207 3.73383 1.90393 2.4021C3.1463 1.05463 4.851 0.3125 6.70458 0.3125C8.08995 0.3125 9.35869 0.750488 10.4754 1.6142C11.039 2.05017 11.5499 2.58374 12 3.20612C12.4502 2.58374 12.9609 2.05017 13.5247 1.6142C14.6415 0.750488 15.9102 0.3125 17.2956 0.3125C19.149 0.3125 20.8538 1.05463 22.0962 2.4021C23.3239 3.73383 24 5.55316 24 7.52521C24 9.55493 23.2437 11.4129 21.6198 13.3723C20.167 15.1254 18.0793 16.9046 15.6617 18.9649C14.8355 19.6688 13.8993 20.4667 12.9276 21.3165C12.6711 21.541 12.3415 21.6648 12 21.6648ZM6.70458 1.71838C5.24834 1.71838 3.91058 2.29956 2.93737 3.35498C1.9497 4.42633 1.4057 5.90729 1.4057 7.52521C1.4057 9.2323 2.04016 10.759 3.4627 12.4755C4.83764 14.1346 6.88274 15.8774 9.25065 17.8954L9.25505 17.899C10.0829 18.6046 11.0213 19.4044 11.998 20.2584C12.9805 19.4027 13.9204 18.6016 14.7498 17.895C17.1176 15.877 19.1625 14.1346 20.5374 12.4755C21.9598 10.759 22.5943 9.2323 22.5943 7.52521C22.5943 5.90729 22.0503 4.42633 21.0626 3.35498C20.0896 2.29956 18.7516 1.71838 17.2956 1.71838C16.2288 1.71838 15.2494 2.0575 14.3846 2.7262C13.6139 3.32239 13.077 4.07605 12.7622 4.60339C12.6004 4.87457 12.3155 5.03644 12 5.03644C11.6845 5.03644 11.3996 4.87457 11.2377 4.60339C10.9231 4.07605 10.3863 3.32239 9.6154 2.7262C8.75059 2.0575 7.77116 1.71838 6.70458 1.71838Z"
                            fill="#141516" />
                    </svg>
                </a>
            </li>

        </ul>
    </div>
</div>

@if(isset($cart_page))
    <a data-href="{{ url($cart_page->slug) }}" onclick="add_to_cart(this)" data-id="{{ $product->id }}"  data-quantaty="true" class="cus-btn-3 w-100 cursor-pointer mb-24">Buy Now</a>
@endif

</div>
@endisset
