@php
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
    $view_page = \App\Models\Page::where('page_type', 'view')->first();
    $tracking_page = \App\Models\Page::where('page_type', 'tracking')->first();
    $service_request = \App\Models\Page::where('page_type', 'service_request')->first();
    $about_page = \App\Models\Page::where('page_type', 'about')->first();
    $register_page = \App\Models\Page::where('page_type', 'register')->first();
    $profile_dashboard = \App\Models\Page::where('page_type', 'profile_dashboard')->first();
    $service_page = \App\Models\Page::where('page_type', 'service_request')->first();
    $blog_page = \App\Models\Page::where('page_type', 'blog')->first();
    $service_point_page = \App\Models\Page::where('page_type', 'service_point')->first();

    if(!isset($wishlist_page)){
        $wishlist_page = \App\Models\Page::where('page_type', 'wishlist')->first();
    }
@endphp

@if($filter_page)
<div class="top-head">
    <div class="header-top bg-color-primary flex-column flex-md-row">
        <div class="header-start ">
            <div class="welcome_note_button d-flex flex-column flex-md-row text-center text-md-start">
                <a href="mailto:{{ settings('app_email', 9) }}"> <i class="bi bi-envelope"></i> {{ settings('app_email', 9) }}</a>
                <a href="tel:{{ settings('app_tel', 9) }}"> <i class="bi bi-telephone"></i> {{ settings('app_tel', 9) }}</a>
                @if ($service_page)
                    <a href="{{ url($service_page->slug) }}" class="d-flex  align-items-center gap-2" style="border-left: 1px solid white;  padding-left: 10px;"> <i class="bi bi-headset"></i> {{ $service_page->name ?? '' }}</a>
                @endif
            </div>
        </div>
        <div class="header-end d-none d-md-flex flex-md-row">

            @if ($blog_page)
                <a href="{{ url($blog_page->slug) }}" class="top-bar-links d-flex  align-items-center gap-2">{{ $blog_page->name  }}</a> 
            @endif

            @if($service_request)
            <a href="{{ url($service_request->slug) }}" class="top-bar-links d-flex  align-items-center gap-2">
                <div>
                    <p class="fw-500 white">{{ $service_request->name }}</p>
                </div>
            </a>
            @endif

            @if($service_point_page)
            <a href="{{ url($service_point_page->slug) }}" class="top-bar-links d-flex  align-items-center gap-2">
                <div>
                    <p class="fw-500 white">{{ $service_point_page->name }}</p>
                </div>
            </a>
            @endif

            @if($tracking_page)
            <a href="{{ url($tracking_page->slug) }}" class="top-bar-links d-flex align-items-center gap-2">
                <p class="fw-500 white"> {{ $tracking_page->name ?? '' }}</p>
            </a>
            @endif



            {{-- <div class="vr-line d-sm-block d-none"> --}}
            </div>
            @include('layout.frontend_ajuba.partials.language')
        </div>
    </div>
</div>

<header class="second-header">
    <div class="header-section">


        <div class="container-fluid navbar_filter_section " style="background: {{ $header_style->background_color }}">
            <div class="header-center">
                <a href="{{ url('/') }}" class="header-logo">
                    <img style="max-height: 60px;" src="{{ settings('app_image',9)}}" alt="">
                </a>

                <div class="mixin-container ">
                    <form action="{{ url( $filter_page->slug) }}" method="post" id="filter_form_all">
                       @if(settings('category_wise_filter_status', 80) == 1)
                       <div class="drop-container d-flex align-items-center flex-nowrap">
                           <div class="wrapper-dropdown" id="dropdown3">
                               <span class="selected-display black fw-500" id="destination3">{{ $_GET['category_name'] ?? 'All Categories' }}</span>
                               <svg id="drp-arrow3" width="24" height="24" viewBox="0 0 24 24" fill="none"
                               xmlns="http://www.w3.org/2000/svg" class="arrow transition-all ml-auto rotate-180">
                               <path d="M7 14.5l5-5 5 5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                               stroke-linejoin="round"></path>
                            </svg>
                            <ul class="topbar-dropdown bg-lightest-gray box-shadow-1">
                                @foreach (category() as $items)
                                <li class="item dark-gray">{{ $items->name ?? '' }}</li>
                                @endforeach

                            </ul>
                        </div>
                    </div>
                    <div class="vr-line vr-line-2"></div>
                    @endif

                        <div class="input-field">
                            <input type="text" name="search" id="searchInput" class="form-control" placeholder="Search for products..." value="{{ $_GET['q'] ?? '' }}">
                            <button type="submit" class="cus-btn">Search</button>
                        </div>
                    </form>
                </div>

                <div class="header-buttons">
                    @if($register_page)

                    @if(auth()->guard('customer')->user())
                    <a href="{{ url($profile_dashboard->slug) }}" class="button-block align-items-sm-unset align-items-end">
                        <img src="{{asset('uploads/')}}/users/user-3.png" alt="" class="user">
                        <div>
                            <p>Welcome</p>
                            <h6>{{ auth()->guard('customer')->user()->name ?? '' }}</h6>
                        </div>
                        </a>
                        @else
                        <a href="{{ url($register_page->slug) }}" class="button-block align-items-sm-unset align-items-end">
                            <img src="{{asset('uploads/')}}/users/user-3.png" alt="" class="user">
                            <div>
                                <p>{{ $register_page->name ?? '' }}</p>
                                <h6>Account</h6>
                            </div>
                            </a>
                        @endif
                    @endif
                    @if($wishlist_page)

                    <a href="{{ url($wishlist_page->slug) }}" class="button-block d-sm-flex   position-relative  items_icon_parents compare_list">

                        <i class="fa-regular fa-heart"></i>
                        <span class="items_added">0</span>

                    </a>

                    @endif

                    <a href="javascript:void(0);" class="button-block d-sm-flex  cart-button position-relative cart items_icon_parents">
                        {{-- <img src="{{asset('uploads/')}}/icons/cart.png" alt=""> --}}
                        <i class="bi bi-cart" style=""></i>
                        <span class="items_added">0</span>

                    </a>

                    <a href="#" class="main-menu__toggler mobile-nav__toggler ml-auto header_nav_bar_manu">
                        <img src="{{asset('uploads/')}}/icons/menu-2.png" alt="">
                    </a>

                </div>
            </div>




            @include('layout.frontend_ajuba.partials._header_partials.navbar1')


        </div>
    </div>
</header>

@endif

<style>
.navbar_filter_section .mixin-container form,
.navbar_filter_section .mixin-container{
    display: flex;
    flex-wrap: nowrap;
    align-items: center;
    width: 100%;
    width: -webkit-fill-available;

}


header .header-section .mixin-container .input-field button {
    padding: 11px 22px;
    border-radius: 0px 8px 8px 0;
}
header .header-section .mixin-container .input-field input{
    border-radius: 3px;
    padding: 9px 16px;

}

.navbar_filter_section #dropdown3{
    min-width: 150px;
}
.header_nav_bar_manu{
    display:none;
}

@media(max-width:1300px){
    .navbar_filter_section .mixin-container{
        order:1;
    }
    .navbar_filter_section .header-center{
        flex-wrap: wrap;
    }
    .navbar_filter_section .header-center a.header-logo{
         margin-bottom: 20px;
    }
    .navbar_filter_section .header-center .mixin-container {
        width: 100%;
    }
    .navbar_filter_section .header-center .header-buttons{
        margin-bottom: 20px;
    }

    header .header-section .header-center .header-buttons .button-block{
        width: max-content;
    }
}


span.items_added {
    position: absolute;
    top: -8px;
    right: -8px;
    background: #dd3842;
    color: white;
    width: 20px;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    height: 20px;
    font-size: 11px;
}
.items_icon_parents i{
    font-size: clamp(25px, 0.833vw, 22px)
}

@media (min-width: 1500px) and (max-width: 1800px) {
    .items_icon_parents i{
        font-size:  clamp(35px, 0.833vw, 22px)
    }
}
@media (min-width: 1800px) {
    .items_icon_parents i{
        font-size: clamp(45px, 0.833vw, 22px)
    }
}

.welcome_note_button {
    display: flex;
    color: white;
    gap:5px
}


@media (min-width:768px) {
    .welcome_note_button {
        display: flex;
        gap:10px
    }


    .welcome_note_button a:first-child{
        padding-right:10px;
        border-right:1px solid white;
    }
}


.welcome_note_button a:hover {
    color: white;
}
</style>

@if (settings('header_sticky_status', 9)==1)
<style>
    .second-header{
        position: sticky;
        top: 0;
        z-index: 10;
        background: white;
    }

    @media(max-width:1300px){
        .navbar_filter_section .mixin-container{
            order:0;
        }

        .navbar_filter_section .header-center .mixin-container {
            width: 40%;
        }
        header .header-section .mixin-container,
        .navbar_filter_section .header-center a.header-logo,
        .navbar_filter_section .header-center .header-buttons{
            margin-bottom: 0;
        }


    }
    @media (max-width: 1199px) {
        .header-bottom-area{
            display: none;
        }
        .header_nav_bar_manu{
            display:block;
        }
    }

    @media screen and (max-width: 991px) and (min-width: 0) {
        .navbar_filter_section .mixin-container{
            order:1;
        }

        .navbar_filter_section .header-center .mixin-container {
            width: 100%;
        }

        .navbar_filter_section .header-center a.header-logo,
        .navbar_filter_section .header-center .header-buttons{
            margin-bottom: 20px;
        }



    }

  
</style>

@endif

@push('js')

<script>
    $('#filter_form_all').on('submit', function(e){
        e.preventDefault();
        var category_name = $(this).find('#destination3');
        var searchInput = $(this).find('#searchInput');

        var data_filter = this.action+'?';

        if(category_name){
            data_filter += 'category_name=' + category_name.html() + '&';
        }

        if(searchInput){
            data_filter +='q='+searchInput.val() + '&';
        }

        window.location.href = data_filter;
    })

</script>


@endpush
