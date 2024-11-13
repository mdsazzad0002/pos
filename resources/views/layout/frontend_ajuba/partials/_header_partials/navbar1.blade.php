<div class="header-bottom-area">
    <nav class="navigation d-flex align-items-center justify-content-between">
        @php
            $menu_items = \App\Models\header::where('status', 1)->orderBy('order', 'asc')->get()->groupBy('position');
            $filter_page = \App\Models\page::where('page_type', 'filter')->first();
            $view_page = \App\Models\page::where('page_type', 'view')->first();
        @endphp

        <!-- Categories Dropdown -->
        @if(isset($menu_items['left']) && count( $menu_items['left']) > 0 && $filter_page)
            @foreach ($menu_items['left']  as $items)
               {{-- next time implement dynamic settup items --}}
                <div class="nav-container">
                    <nav class="all-category-nav">
                        <label class="open-menu-all" for="open-menu-all">
                            <input class="input-menu-all" id="open-menu-all" type="checkbox" name="menu-open">
                            <span class="all-navigator"><i class="fas fa-bars" aria-hidden="true"></i> <span>{{ $items->name ?? '' }}</span>
                            </span>
                            <span class="all-category-list list-unstyled">
                               @foreach (category() as $items)
                                    @php
                                        $brands = $items->brands_by_cat();
                                        // dd( $brands);
                                    @endphp
                                    <span class="all-category-list-item "><a href="{{ url($filter_page->slug) }}?category={{ $items->slug }}"
                                            class="all-category-list-link dark-black fw-500 d-flex align-items-center justify-content-between">{{ $items->name ?? '' }}
                                            @if(count($brands) > 0)
                                                <i class="fas fa-angle-right" aria-hidden="true"></i>
                                            @endif
                                        </a>
                                        @if(count($brands) > 0)
                                        <span class="category-second-list">
                                            <span class="sub-menu-main-wrapper">

                                                <span class="wrapper-1">
                                                    <span class="category-second-list-ul list-unstyled mb-40">
                                                        <span class="dark-black fw-500 mb-16">Brands</span>
                                                        @foreach ($brands as $brand)
                                                            <span class="category-second-item">
                                                                <a href="{{ url($filter_page->slug) }}?category={{ $items->slug }}&brand={{ $brand->slug }}">
                                                                    {{ $brand->name }}
                                                                </a>
                                                            </span>
                                                        @endforeach

                                                    </span>
                                                    <span class="category-second-list-ul list-unstyled">
                                                        <span class="dark-black fw-500 mb-16">Products</span>
                                                        @foreach ($items->products as $product)
                                                             <span class="category-second-item"><a href="{{ url($view_page->slug) }}?slug={{ $product->slug }}">{{ $product->name ?? '' }}</a></span>
                                                        @endforeach

                                                    </span>
                                                </span>
                                                <span class="wrapper-1">
                                                    <span class="category-second-list-ul list-unstyled mb-40">
                                                        <span class="dark-black fw-500 mb-16">Sub Cateogory</span>
                                                        @foreach ($items->subcategory as $subcategory_items)
                                                             <span class="category-second-item">
                                                                <a href="{{ url($filter_page->slug) }}?category={{ $items->slug }}&subcategory={{ $subcategory_items->slug }}">
                                                                    {{ $subcategory_items->name ?? '' }}
                                                                </a>
                                                            </span>
                                                        @endforeach
                                                    </span>
                                                    <span class="category-second-list-ul list-unstyled">
                                                        <span class="dark-black fw-500 mb-16">Prices</span>
                                                        <span class="category-second-item">
                                                            <a href="{{url($filter_page->slug) }}?category={{ $items->slug }}&minprice=0&maxprice=250">
                                                                Up to {{ settings('currency_symbol', 9) }}200
                                                            </a>
                                                        </span>
                                                        <span class="category-second-item">
                                                            <a href="{{url($filter_page->slug) }}?category={{ $items->slug }}&minprice=500&maxprice=1000">
                                                                {{ settings('currency_symbol', 9) }}500 to {{ settings('currency_symbol', 9) }}1,000
                                                            </a>
                                                        </span>
                                                        <span class="category-second-item">
                                                            <a href="{{url($filter_page->slug) }}?category={{ $items->slug }}&minprice=1000&maxprice=2000">
                                                                {{ settings('currency_symbol', 9) }}1,000 to {{ settings('currency_symbol', 9) }}2,000
                                                            </a>
                                                        </span>
                                                        <span class="category-second-item">
                                                            <a href="{{url($filter_page->slug) }}?category={{ $items->slug }}&minprice=2000&maxprice=3000">
                                                                {{ settings('currency_symbol', 9) }}2,000 to {{ settings('currency_symbol', 9) }}3,000
                                                            </a>
                                                        </span>
                                                        <span class="category-second-item">
                                                            <a href="{{url($filter_page->slug) }}?category={{ $items->slug }}&minprice=3000&maxprice=10000">
                                                                {{ settings('currency_symbol', 9) }}3,000 to {{ settings('currency_symbol', 9) }}10,000
                                                            </a>
                                                        </span>
                                                        <span class="category-second-item">
                                                            <a href="{{url($filter_page->slug) }}?category={{ $items->slug }}&minprice=10000&maxprice=100000">
                                                                {{ settings('currency_symbol', 9) }}10,000 to {{ settings('currency_symbol', 9) }}1,00,000
                                                            </a>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                            <span class="img-product-menu" style="background: url('{{ asset('uploads/images/dropdown-image.png') }}') no-repeat;">
                                                @if($product = $items->most_view_by_cat())
                                                    <span class="image-content">
                                                        <span class="h6 d-block fw-400 white mb-4p">{{ $items->name }}</span>
                                                        <span class="h6 d-block fw-500 white mb-24">{{ $product->name ?? '' }}</span>
                                                        {{-- <span class="d-block text-16 white mb-4p">{{ $product->name }}</span> --}}
                                                        <span class="d-block h4 color-ter mb-32">{{ settings('currency_symbol', 9) }}{{ $product->selling_price ?? 0 }}</span>
                                                        <a href="{{ url($view_page->slug) }}?slug={{ $product->slug }}" class="cus-btn-3 sec">Shop Now</a>
                                                    </span>
                                                @endif
                                            </span>
                                        </span>
                                        @endif
                                    </span>


                               @endforeach



                            </span>
                        </label>
                    </nav>
                </div>
            @endforeach
        @endif




        <!-- Categories Dropdown -->
        <div class="menu-button-right">
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


                    {{-- @include('___demo__multilabeldropdown'); --}}

                </ul>
            </div>
        </div>
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
        </div>
    </nav>
</div>
