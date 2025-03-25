<div class="mt-2 {{ $root_class}} w-100 ">
    @if ($p_next_page_status == true)
        @if (($p_next_page_service == 1 && $p_service == 1) || ($p_next_page_not_service == 1 && $p_service == 0))
             <a href="{{ $p_url }}" data-id="{{ $p_id }}" class="{{$btn_class}} w-100 next-page-btn" style="background-color:{{ $btn_next_bg }}; color:{{ $btn_next_color }}">{{ $v_next_page_name }}</a>
        @endif
    @else

        @if ($p_variant_on == 1)
            @if ($v_buy_now_status == 1 )
                @if (($v_buynow_service == 1 && $p_service == 1) || ($v_buy_now_not_service == 1 && $p_service == 0) )
                    <a href="#" class="{{$btn_class}} productQuickViewbtn w-100 buy-now-btn" style="background-color:{{ $btn_buy_now_bg }}; color:{{ $btn_buy_now_color }}" data-id="{{ $p_id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                            <i class="fa fa-cart-plus"></i> {{ $v_buy_now_name }}
                    </a>
                @endif
            @endif

            @if ($v_cart_status == 1)
                    @if(($v_cart_service == 1 && $p_service == 1) || ($v_cart_not_service == 1 && $p_service == 0))
                        <a href="#" class="{{$btn_class}} productQuickViewbtn w-100 cart-btn" style="background-color:{{ $btn_cart_bg }}; color:{{ $btn_cart_color }}" data-id="{{ $p_id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                            {{ $v_cart_name }}
                        </a>
                    @endif
            @endif

        @else
            @if ($v_buy_now_status == 1 )
                @if (($v_buynow_service == 1 && $p_service == 1) || ($v_buy_now_not_service == 1 && $p_service == 0) )
                    <a href="javascript:void(0)" onclick="add_to_cart(this)" data-id="{{ $p_id }}" data-href="{{ url($v_cart_page_slug) }}"  style="background-color:{{ $btn_buy_now_bg }}; color:{{ $btn_buy_now_color }}" class="{{$btn_class}} w-100 buy-now-btn"><i class="fa fa-cart-plus"></i> {{ $v_buy_now_name }}</a>
                @endif
            @endif
            @if ($v_cart_status == 1)
                @if(($v_cart_service == 1 && $p_service == 1) ||( $v_cart_not_service == 1 && $p_service == 0))
                    <a href="javascript:void(0)" onclick="add_to_cart(this)" data-id="{{ $p_id }}" class="{{$btn_class}} w-100 cart-btn" style="background-color:{{ $btn_cart_bg }}; color:{{ $btn_cart_color }}">{{ $v_cart_name }}</a>
                @endif
            @endif
        @endif




        @if ($v_whatsapp_status == 1)
            @if (($v_whatsapp_service == 1 && $p_service == 1) || ($v_whatsapp_not_service == 1 && $p_service == 0))
                  <a href="{{ settings('app_whatsapp',9) }}&amp;text={{ $p_url }}" data-id="{{ $p_id }}" class="{{$btn_class}} w-100 whatsapp-btn" style="background-color:{{ $btn_whatsapp_bg }}; color:{{ $btn_whatsapp_color }}">{{ $v_whatsapp_name }}</a>
            @endif     
        @endif

        @if ($v_details_status == 1)
            @if (( $v_details_service == 1 && $p_service == 1) || ($v_details_not_service == 1 && $p_service == 0))
                 <a href="{{ $p_url }}" class="{{$btn_class}} w-100 details-btn" style="background-color:{{ $btn_details_bg }}; color:{{ $btn_details_color }}">{{ $v_details_name }}</a>
            @endif
        @endif
    @endif
</div>


{{-- <div style="display: flex; justify-content: center; align-items: center; width: 100%; flex-wrap: wrap;"><a
    href="{{ settings('app_whatsapp',9) }}&amp;text={{ $p_url }}"
    class="whatsapp-button"
    style="margin: 5px; background-color: #4CAF50; border: none; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 12px; flex: 1 1 calc(50% - 20px); box-sizing: border-box;">WhatsApp
    Now</a>
    <a
    href="{{ url($view_page->slug) }}?slug={{ $product->slug }}"
    class="button"
    style="margin: 5px; background-color: #007BFF; border: none; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 12px; flex: 1 1 calc(50% - 20px); box-sizing: border-box;">Details</a>
</div> --}}