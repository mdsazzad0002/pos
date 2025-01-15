@php
    $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
    $view_page = \App\Models\Page::where('page_type', 'view')->first();
    $tracking_page = \App\Models\Page::where('page_type', 'tracking')->first();
    $contact_page = \App\Models\Page::where('page_type', 'contact')->first();
    $about_page = \App\Models\Page::where('page_type', 'about')->first();
    $register_page = \App\Models\Page::where('page_type', 'register')->first();
    $profile_dashboard = \App\Models\Page::where('page_type', 'profile_dashboard')->first();

    if(!isset($wishlist_page)){
        $wishlist_page = \App\Models\Page::where('page_type', 'wishlist')->first();
    }
@endphp

@if($filter_page)

<header>
    <div class="header-section">
        <div class="header-top bg-color-primary">
            <div class="header-start d-lg-block d-none">
                <p class="fw-500 white">{{ settings('welcome_note', 9) }}</p>
            </div>
            <div class="header-end ">
                @if($contact_page)
                <a href="{{ url($contact_page->slug) }}" class="top-bar-links d-sm-flex d-none align-items-center gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                        <path
                            d="M9.51246 19.7391C9.62113 19.9021 9.8041 20 10 20C10.1959 20 10.3789 19.9021 10.4875 19.7391C11.8742 17.6591 13.9167 15.0903 15.34 12.4778C16.478 10.3889 17.0312 8.60727 17.0312 7.03125C17.0312 3.15422 13.877 0 10 0C6.12297 0 2.96875 3.15422 2.96875 7.03125C2.96875 8.60727 3.52199 10.3889 4.66004 12.4778C6.08227 15.0883 8.12863 17.6634 9.51246 19.7391ZM10 1.17188C13.2309 1.17188 15.8594 3.80039 15.8594 7.03125C15.8594 8.40641 15.3529 10.0046 14.3109 11.9171C13.0841 14.1691 11.3334 16.4534 10 18.3738C8.66684 16.4537 6.91602 14.1692 5.6891 11.9171C4.64715 10.0046 4.14062 8.40641 4.14062 7.03125C4.14062 3.80039 6.76914 1.17188 10 1.17188Z"
                            fill="#FAFAFA" />
                        <path
                            d="M10 10.5469C11.9385 10.5469 13.5156 8.96977 13.5156 7.03125C13.5156 5.09273 11.9385 3.51562 10 3.51562C8.06148 3.51562 6.48438 5.09273 6.48438 7.03125C6.48438 8.96977 8.06148 10.5469 10 10.5469ZM10 4.6875C11.2923 4.6875 12.3438 5.73891 12.3438 7.03125C12.3438 8.32359 11.2923 9.375 10 9.375C8.70766 9.375 7.65625 8.32359 7.65625 7.03125C7.65625 5.73891 8.70766 4.6875 10 4.6875Z"
                            fill="#FAFAFA" />
                    </svg>
                    <div>
                        <p class="fw-500 white">{{ $contact_page->name }}</p>
                    </div>
                </a>
                @endif

                @if($tracking_page)
                <a href="{{ url($tracking_page->slug) }}" class="top-bar-links d-flex align-items-center gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                        <g clip-path="url(#clip0_7765_205)">
                            <path
                                d="M5.95035 13.125H5.95008C5.73434 13.125 5.55957 13.2999 5.55957 13.5156C5.55957 13.7313 5.73461 13.9063 5.95035 13.9063C6.16609 13.9063 6.34097 13.7313 6.34097 13.5156C6.34097 13.2999 6.16609 13.125 5.95035 13.125Z"
                                fill="#FAFAFA" />
                            <path
                                d="M15.7945 13.125H15.7942C15.5784 13.125 15.4037 13.2999 15.4037 13.5156C15.4037 13.7313 15.5787 13.9063 15.7945 13.9063C16.0102 13.9063 16.1851 13.7313 16.1851 13.5156C16.1851 13.2999 16.0102 13.125 15.7945 13.125Z"
                                fill="#FAFAFA" />
                            <path
                                d="M18.9191 8.43752H18.7649L17.5204 5.54862C17.4587 5.40534 17.3177 5.31253 17.1617 5.31253H14.2318V4.53128C14.2318 4.31558 14.0569 4.14066 13.8412 4.14066H2.82543C2.62227 4.14066 2.45301 4.29636 2.43617 4.49886L2.30731 6.04499H1.0675C0.851761 6.04499 0.676879 6.21991 0.676879 6.43561C0.676879 6.65131 0.851761 6.82624 1.0675 6.82624H2.24219L2.14859 7.94928H1.65344C1.4377 7.94928 1.26282 8.1242 1.26282 8.33991C1.26282 8.55561 1.4377 8.73053 1.65344 8.73053H2.08352L1.98992 9.85354H0.481567C0.265825 9.85354 0.0909424 10.0285 0.0909424 10.2442C0.0909424 10.4599 0.265825 10.6348 0.481567 10.6348H1.92481L1.65488 13.8738C1.64582 13.9827 1.68274 14.0904 1.75668 14.1708C1.83067 14.2512 1.93488 14.2969 2.04414 14.2969H3.74031C4.06277 15.2063 4.93164 15.8594 5.95019 15.8594C6.96874 15.8594 7.83761 15.2063 8.16007 14.2969H13.5844C13.9069 15.2063 14.7758 15.8594 15.7943 15.8594C16.8129 15.8594 17.6817 15.2063 18.0042 14.2969H19.7004C19.9161 14.2969 20.091 14.122 20.091 13.9063V9.60943C20.0909 8.94131 19.5872 8.43752 18.9191 8.43752ZM15.9899 6.09378H16.9046L17.9142 8.43752H15.9899V6.09378ZM3.18035 9.85354H2.77387L2.86746 8.73053H5.91472C6.13046 8.73053 6.30534 8.55561 6.30534 8.33991C6.30534 8.1242 6.13046 7.94928 5.91472 7.94928H2.93258L3.02617 6.82624H4.15691C4.37265 6.82624 4.54754 6.65131 4.54754 6.43561C4.54754 6.21991 4.37265 6.04499 4.15691 6.04499H3.09125L3.18484 4.9219H13.4506V11.7578H7.49882C7.08558 11.3933 6.54323 11.1719 5.95019 11.1719C5.35714 11.1719 4.8148 11.3933 4.40156 11.7578H2.6152L2.70879 10.6348H3.18035C3.39609 10.6348 3.57097 10.4599 3.57097 10.2442C3.57097 10.0285 3.39609 9.85354 3.18035 9.85354ZM2.46871 13.5156L2.55008 12.5391H3.81969C3.68281 12.8365 3.60644 13.1673 3.60644 13.5156H2.46871ZM5.95019 15.0781C5.08863 15.0781 4.38769 14.3772 4.38769 13.5156C4.38769 12.6541 5.08863 11.9531 5.95019 11.9531C6.81175 11.9531 7.51269 12.6541 7.51269 13.5156C7.51269 14.3772 6.81175 15.0781 5.95019 15.0781ZM8.29393 13.5156C8.29393 13.1673 8.21757 12.8365 8.08069 12.5391H13.6638C13.5269 12.8365 13.4506 13.1673 13.4506 13.5156H8.29393ZM15.7943 15.0781C14.9327 15.0781 14.2318 14.3772 14.2318 13.5156C14.2318 12.6541 14.9327 11.9531 15.7943 11.9531C16.6558 11.9531 17.3568 12.6541 17.3568 13.5156C17.3568 14.3772 16.6558 15.0781 15.7943 15.0781ZM19.3097 13.5156H18.138C18.138 13.1673 18.0617 12.8365 17.9248 12.5391H19.3097V13.5156H19.3097ZM19.3097 11.7578H17.3429C16.9297 11.3933 16.3873 11.1719 15.7943 11.1719C15.2012 11.1719 14.6589 11.3933 14.2456 11.7578H14.2318V6.09378H15.2086V8.82815C15.2086 9.04385 15.3835 9.21877 15.5993 9.21877H18.9191C19.16 9.21877 19.3097 9.36846 19.3097 9.6094V11.7578Z"
                                fill="#FAFAFA" />
                            <path
                                d="M7.75232 6.43561C7.75232 6.21991 7.57744 6.04499 7.3617 6.04499H5.91467C5.69893 6.04499 5.52405 6.21991 5.52405 6.43561C5.52405 6.65132 5.69893 6.82624 5.91467 6.82624H7.3617C7.57744 6.82624 7.75232 6.65132 7.75232 6.43561Z"
                                fill="#FAFAFA" />
                            <path
                                d="M7.28186 8.33991C7.28186 8.55561 7.45674 8.73053 7.67248 8.73053H8.396C8.61174 8.73053 8.78662 8.55561 8.78662 8.33991C8.78662 8.1242 8.61174 7.94928 8.396 7.94928H7.67248C7.45674 7.94928 7.28186 8.12416 7.28186 8.33991Z"
                                fill="#FAFAFA" />
                        </g>
                        <defs>
                            <clipPath id="clip0_7765_205">
                                <rect width="20" height="20" fill="white" transform="translate(0.0909424)" />
                            </clipPath>
                        </defs>
                    </svg>
                    <p class="fw-500 white"> {{ $tracking_page->name ?? '' }}</p>
                </a>
                @endif


                @if($about_page)
                <div class="d-sm-block d-none">
                    <a href="{{ url($about_page->slug) }}"><span class="fw-500 top-bar-links">{{ $about_page->name ?? '' }}</span></a>
                </div>
                @endif

                <div class="vr-line d-sm-block d-none">
                </div>
                @include('layout.frontend_ajuba.partials.language')
            </div>
        </div>


        <div class="container-fluid navbar_filter_section">
            <div class="header-center">
                <a href="{{ url('/') }}" class="header-logo">
                    <img style="max-height: 60px;" src="{{ settings('app_image',9)}}" alt="">
                </a>

                <div class="mixin-container ">
                    <form action="{{ url( $filter_page->slug) }}" method="post" id="filter_form_all">
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

                    <a href="{{ url($wishlist_page->slug) }}" class="button-block d-sm-flex d-none  position-relative  items_icon_parents compare_list">

                        <i class="fa-regular fa-heart"></i>
                        <span class="items_added">0</span>

                    </a>

                    @endif

                    <a href="javascript:void(0);" class="button-block d-sm-flex d-none cart-button position-relative cart items_icon_parents">
                        {{-- <img src="{{asset('uploads/')}}/icons/cart.png" alt=""> --}}
                        <i class="bi bi-cart" style=""></i>
                        <span class="items_added">0</span>

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
    align-items: center

}
.navbar_filter_section .mixin-container form input{
    padding-left: 8px !important;
}
.navbar_filter_section #dropdown3{
    min-width: 150px;
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
</style>

@push('js')

<script>
    $('#filter_form_all').on('submit', function(e){
        e.preventDefault();
        var category_name = $(this).find('#destination3').html();
        var searchInput = $(this).find('#searchInput').val();
        // console.log(category_name);
        // console.log(searchInput);

        window.location.href= this.action+'?category_name='+category_name+'&q='+searchInput;
    })

</script>


@endpush
