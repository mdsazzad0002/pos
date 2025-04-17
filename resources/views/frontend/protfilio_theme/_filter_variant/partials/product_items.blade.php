<div class="row row-gap-3">
    @forelse($products as $product)

    {{-- Product --}}
        @if (isset($product))
            @php
                if (!isset($view_page)) {
                    $view_page = \App\Models\Page::where('page_type', 'view')->first();
                }
                if (!isset($product_style)) {
                    $product_style = \App\Models\ProductStyle::where('status', 1)->first();
                }


                $p_background_color = $product_style->background_color ?? '#ffffff';
                $p_selling_price = $product->selling_price;
                $p_old_price = $product->old_price;
                $p_variant_on = $product->variant_on;
                $p_discount = ($product->old_price > 0) 
                    ? number_format((($product->old_price - $product->selling_price) * 100) / $product->old_price, 2) 
                    : 0;


                if(isset($details_page_slug) && $details_page_slug && !$request->has('paginate_data')){
                    $p_url = url($details_page_slug) . '?category=' . $product->category_info?->slug . '&p=' . $product->id;
                    $p_next_page_status = true;
                }else {
                    $p_next_page_status = false;
                    $p_url = url($view_page->slug) . '?slug=' . $product->slug;
                }

                $p_service = $product->service;

                $p_image = dynamic_asset($product->upload_id);
                $p_id = $product->id;
                $p_name = $product->name;
                $p_short_description = $product->short_description;
                $p_avg_rat = $product->avg_rat;
                $p_rat_count = $product->rat_count;

                $v_cart_page_slug = \App\Models\Page::where('page_type', 'cart')->first()->slug ?? '';

                $v_per_row = 'col-xxl-' . (12/($request->has('items_per_row_xxl') ? $request->items_per_row_xxl : 4) );
                $v_per_row .= ' col-xl-' . (12/($request->has('items_per_row_xl') ? $request->items_per_row_xl : 4) );
                $v_per_row .= ' col-lg-' . (12/($request->has('items_per_row_lg') ? $request->items_per_row_lg : 3) );
                $v_per_row .= ' col-md-' . (12/($request->has('items_per_row_md') ? $request->items_per_row_md : 2) );
                $v_per_row .= ' col-sm-' . (12/($request->has('items_per_row_sm') ? $request->items_per_row_sm : 2) );
                $v_per_row .= ' col-' . (12/($request->has('items_per_row') ? $request->items_per_row : 1) );

// =========================================================================
// Next Page button
                $v_next_page_name = settings('next_page_button_name', 77);

                $btn_next_bg = settings('next_page_button_background_color', 77);
                $btn_next_color = settings('next_page_button_text_color', 77);

                $p_next_page_not_service = settings('p_next_page_not_service_status', 77);
                $p_next_page_service = settings('p_next_page_service_status', 77);

// =========================================================================
// Details Button
                $v_details_name = settings('detail_button_name', 77);
                $v_details_status = settings('detail_button_status', 77);

                $btn_details_bg = settings('detail_button_background_color', 77);
                $btn_details_color = settings('detail_button_text_color', 77);

                $v_details_not_service = settings('v_details_not_service_status', 77);
                $v_details_service = settings('v_details_service_status', 77);

// =========================================================================
// CART Button
                $v_cart_name = settings('cart_button_name', 77);
                $v_cart_status = settings('cart_button_status', 77);

                $btn_cart_bg = settings('cart_button_background_color', 77);
                $btn_cart_color = settings('cart_button_text_color', 77);

                $v_cart_not_service = settings('v_cart_not_service_status', 77);
                $v_cart_service = settings('v_cart_service_status', 77);

// =========================================================================
// Buy Now
                $v_buy_now_name = settings('buy_now_button_name', 77);
                $v_buy_now_status = settings('buy_now_button_status', 77);

                $btn_buy_now_bg = settings('buy_now_button_background_color', 77);
                $btn_buy_now_color = settings('buy_now_button_text_color', 77);

                $v_buy_now_not_service = settings('v_buy_now_not_service_status', 77);
                $v_buynow_service = settings('v_buynow_service_status', 77);

// =========================================================================
// Whatsapp button
                $v_whatsapp_name = settings('whatsapp_button_name', 77);
                $v_whatsapp_status = settings('whatsapp_button_status', 77);

                $btn_whatsapp_bg = settings('whatsapp_button_background_color', 77);
                $btn_whatsapp_color = settings('whatsapp_button_text_color', 77);

                $v_whatsapp_not_service = settings('v_whatsapp_not_service_status', 77);
                $v_whatsapp_service = settings('v_whatsapp_service_status', 77);
// =========================================================================


                


             

            @endphp

            @if ($product_style)
                @include('frontend.protfilio_theme.' . $product_style->key)
            @endif
        @endif
{{-- End Product --}}
    @empty
        <div class="col-12">
            <div class="p-3 bg-warning rounded"> Not Found Any Items</div>
        </div>
    @endforelse
</div>



{{-- paginate --}}

@if(isset($paginate_data) && $paginate_data && $products instanceof \Illuminate\Pagination\LengthAwarePaginator )

    {{ $products->appends(['category' => $request->category])->setPath(url($details_page_slug))->links() }}

@elseif ($products instanceof \Illuminate\Pagination\LengthAwarePaginator)

    <div class="pagination pt-40">

        <input type="text" hidden class="first_items" value="{{ $products->firstItem()  }}">
        <input type="text" hidden class="last_items" value="{{ $products->lastItem()  }}">


        <input type="text" hidden class="total_items" value="{{ $products->total()  }}">
        {{ $products->links() }}
    </div>

@endif
{{-- End paginate --}}
