@php
    $menu_items = \App\Models\header::where('status', 1)->orderBy('order', 'asc')->get()->groupBy('position');
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
    $view_page = \App\Models\Page::where('page_type', 'view')->first();
@endphp

@if (count($menu_items) > 0)


<div class="header-bottom-area">
    <nav class="navigation d-flex align-items-center justify-content-between">



        <!-- Categories Dropdown -->
        @include('layout.frontend_ajuba.partials._header_partials.container', ['key'=>'left'])
        @include('layout.frontend_ajuba.partials._header_partials.container', ['key'=>'center'])
        @include('layout.frontend_ajuba.partials._header_partials.container', ['key'=>'right'])

    @endif

    {{-- </nav>
</div> --}}

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

