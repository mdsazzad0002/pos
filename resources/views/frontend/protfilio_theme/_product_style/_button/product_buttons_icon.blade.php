


<ul class="mt-2 {{ $root_class}} w-100">
    <li class="icon btn productQuickViewbtn" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $p_id }}">
        <span class="fas fa-expand-arrows-alt " ></span></li>
    <li class="icon mx-2" onclick="add_to_compareList({{ $p_id }})"><span class="far fa-heart"></span></li>


    @if ($p_next_page_status == true)
        {{-- <a href="{{ $p_url }}" data-id="{{ $p_id }}" class="{{$btn_class}} w-100">{{ $v_next_page_name }}</a> --}}
        @if (($p_next_page_service == 1 && $p_service == 1) || ($p_next_page_not_service == 1 && $p_service == 0))
            <a href="{{ $p_url }}" data-id="{{ $p_id }}" class="{{$btn_class}} w-100 next-page-btn" style="background-color:{{ $btn_next_bg }}; color:{{ $btn_next_color }}">
                {{ $v_next_page_name }}
            </a>
        @endif
    @else

        @if ($p_variant_on == 1)
            @if ($v_buy_now_status == 1 )
                    <li href="#" class="{{$btn_class}} productQuickViewbtn w-100" data-id="{{ $p_id }}" title="{{ $v_buy_now_name }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                        <span class="fa fa-cart-plus"></span> 
                </a>
            @endif

            @if ($v_cart_status == 1)
                <li  href="#" class="{{$btn_class}}  productQuickViewbtn w-100" title="{{ $v_cart_name }}" data-id="{{ $p_id }}" data-bs-toggle="modal" data-bs-target="#productQuickView">
                    <span class="fas fa-shopping-cart" ></span>
                </a>
            @endif

        @else
            @if ($v_buy_now_status == 1 )
                <li class="{{$btn_class}}  productQuickViewbtn" title="" data-bs-toggle="modal" data-bs-target="#productQuickView" data-id="{{ $p_id }}">
                    <span class="fas fa-shopping-cart" ></span>
                </li>
            @endif
            @if ($v_cart_status == 1)
                <li class="{{$btn_class}}"  onclick="add_to_cart(this)" data-id="{{ $p_id }}" >
                    <span class="fas fa-shopping-bag" ></span>
                </li>
            @endif
        @endif

        @if ($v_whatsapp_status == 1)
               <li class="{{$btn_class}}" onclick="window.open('{{ settings('app_whatsapp',9) }}&amp;text={{ $p_url }}', '_blank')" >
                <span class="fab fa-whatsapp" ></span>
            </li>

        @endif

        @if ($v_details_status == 1)
             <li onclick="window.open('{{ $p_url }}', '_self')" class="{{$btn_class}} ">
                <span class="fas fa-info"></span>
            </li>
        @endif
    @endif

</ul>

