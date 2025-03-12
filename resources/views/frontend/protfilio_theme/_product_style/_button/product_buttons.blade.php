<div class="mt-2 {{ $root_class}} w-100 ">
    @if ($p_next_page_status == true)
        <a href="{{ $p_url }}" data-id="{{ $p_id }}" class="{{$btn_class}} w-100">{{ $v_next_page_name }}</a>
    @else

        @if ($p_variant_on == 1)
            @if ($v_buy_now_status == 1 )
                    <a href="#" class="{{$btn_class}} productQuickViewbtn w-100" data-id="{{ $p_id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                        <i class="fa fa-cart-plus"></i> {{ $v_buy_now_name }}
                </a>
            @endif

            @if ($v_cart_status == 1)
                <a href="#" class="{{$btn_class}} productQuickViewbtn w-100" data-id="{{ $p_id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                    {{ $v_cart_name }}
                </a>
            @endif

        @else
            @if ($v_buy_now_status == 1 )
                <a href="javascript:void(0)" onclick="add_to_cart(this)" data-id="{{ $p_id }}" data-href="{{ url($v_cart_page_slug) }}" class="{{$btn_class}} w-100"><i class="fa fa-cart-plus"></i> {{ $v_buy_now_name }}</a>
            @endif
            @if ($v_cart_status == 1)
                <a href="javascript:void(0)" onclick="add_to_cart(this)" data-id="{{ $p_id }}" class="{{$btn_class}} w-100">{{ $v_cart_name }}</a>
            @endif
        @endif

        @if ($v_whatsapp_status == 1)
               <a href="{{ settings('app_whatsapp',9) }}&amp;text={{ $p_url }}" data-id="{{ $p_id }}" class="{{$btn_class}} w-100">{{ $v_whatsapp_name }}</a>

        @endif

        @if ($v_details_status == 1)
            <a href="{{ $p_url }}" class="{{$btn_class}} w-100">{{ $v_details_name }}</a>
        @endif
    @endif
</div>
