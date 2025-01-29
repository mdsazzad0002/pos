<div class="header-bottom-area">
    <nav class="navigation d-flex align-items-center justify-content-between">
        @php
            $menu_items = \App\Models\header::where('status', 1)->orderBy('order', 'asc')->get()->groupBy('position');
            $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
            $view_page = \App\Models\Page::where('page_type', 'view')->first();
        @endphp



        <!-- Categories Dropdown -->
        @include('layout.frontend_ajuba.partials._header_partials.container', ['key'=>'left'])
        @include('layout.frontend_ajuba.partials._header_partials.container', ['key'=>'center'])
        @include('layout.frontend_ajuba.partials._header_partials.container', ['key'=>'right'])




        <!-- Categories Dropdown -->
        {{-- <div class="menu-button-right">
            <div class="main-menu__nav">
                <ul class="main-menu__list">
                   @if(isset($menu_items['center']) &&count( $menu_items['center']) > 0)
                        @foreach ( $menu_items['center']  as $items)
                            <li>
                                <a href="{{ url($items->is_page ? $items->page->slug : $items->slug) }}"
                                    class="@if(Request::is($items->is_page ? $items->page->slug : $items->slug)) active @endif">
                                    {{ $items->name ?? '' }}
                                </a>
                            </li>
                        @endforeach
                   @endif



                </ul>
            </div>
        </div> --}}
        {{-- @include('___demo__multilabeldropdown'); --}}

{{--
        <div class="main-menu__right">
            <div class="d-sm-flex d-none gap-2">
                @if(isset($menu_items['right']) && count( $menu_items['right']) > 0)
                    @foreach ( $menu_items['right']  as $items)
                        <a href="{{ url($items->is_page ? $items->page->slug : $items->slug) }}"
                            class="@if(Request::is($items->is_page ? $items->page->slug : $items->slug)) active @endif">

                            {!! $items->name ?? '' !!}
                        </a>
                    @endforeach
                @endif


            </div>

            <a href="#" class="main-menu__toggler mobile-nav__toggler">
                <img src="{{asset('uploads/')}}/icons/menu-2.png" alt="">
                Menu
            </a>
        </div> --}}
    </nav>
</div>

@if(settings('header_style_button_box_status', 80) == 1)
    <style>
        header .header-section .header-bottom-area .navigation .menu-button-right .main-menu__nav .main-menu__list > li > a.active, header .header-section .header-bottom-area .navigation .menu-button-right .main-menu__nav .stricky-header .main-menu__list > li > a.active{
            background: #08775b padding-box;
            color: white;
            padding: 10px 25px;
        }

        header .header-section .header-bottom-area .navigation .menu-button-right .main-menu__nav .main-menu__list > li > a::after, header .header-section .header-bottom-area .navigation .menu-button-right .main-menu__nav .stricky-header .main-menu__list > li > a::after{
            left: 0;
        }
    </style>
@endif
