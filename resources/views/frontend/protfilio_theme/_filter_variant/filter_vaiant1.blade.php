



            {{-- <!-- Featured Product Start -->
            <section class="featured-product-sec py-40 bg-lightest-gray">
                <div class="container-fluid">
                    <div class="row row-gap-3">
                        <div class="col-xl-3">
                            @include('frontend.filter.partials.sidebar')
                        </div>
                        <div class="col-xl-9">
                           @include('frontend.filter.partials.product_decoration_style')
                           @include('frontend.filter.partials.product')
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured Product End --> --}}

 <!-- Main Wrapper Start -->
<div id="scroll-container">


    <!-- Main Sections -->
    <main class="main-wrapper">

        <!-- Title Banner Start -->
        <section class="title-banner">
            <div class="container-fluid">
                <div class="banner-wrapper">
                    <img src="assets/media/banner/left-image.png" alt="" class="banner-image1">
                    <h1 class="dark-black fw-600">Shop</h1>
                    <img src="assets/media/banner/right-image.png" alt="" class="banner-image2">
                </div>
            </div>
        </section>
        <!-- Title Banner End -->

        <!-- Featured Product Start -->
        <section class="featured-product-sec py-40 bg-lightest-gray">
            <div class="container-fluid">
                <div class="row row-gap-3">
                    <div class="col-xl-3">
                        <div class="sidebar bg-white">
                            <form action="" class="mb-24 searcform">
                                <input type="text" name="search" id="searchBar" class="form-control" value="{{ $_GET['q'] ?? '' }}"
                                    placeholder="Search Here...">
                                <button>
                                    <i class="fa-light fa-magnifying-glass"></i>
                                </button>
                            </form>
                            <div class="hr-line mb-24"></div>



                                {{-- Category and Subcategory filter --}}
                                @php
                                $categories_items = \App\Models\Category::where('status', 1)->get();
                                @endphp
                                @if(count($categories_items) > 0)
                                <div class="category-block box-1 mb-24">
                                    <div class="title mb-24" data-count="1">
                                        <h6>{{ __('products.categories') }}</h6>
                                        <span>
                                            <i class="far fa-horizontal-rule"></i>
                                        </span>
                                    </div>

                                    <div class="content-block category_filter">
                                        <ul class="list-unstyled">
                                            @foreach ( $categories_items as $category)
                                            <li class="checkbox-group">
                                                <div
                                                    class="arrow-block d-flex align-items-center justify-content-between mb-16">
                                                    <div class="check-block">
                                                        <input type="checkbox" value="{{ $category->id  }}"  id="cat{{ $category->id }}"
                                                             class="sub-check-box main_check_category">
                                                        <label for="cat{{ $category->id }}">{{ $category->name
                                                            }}</label>
                                                    </div>
                                                    @if(count($category->subcategory) > 0)
                                                    <i class="fa-thin fa-chevron-down fw-500 light-gray"></i>
                                                    @endif
                                                </div>
                                                @if(count($category->subcategory) > 0)
                                                <ul class="sub-checkboxes pl-16 mb-16">
                                                    @foreach ($category->subcategory as $subcategory)
                                                    <li class="d-flex align-items-center gap-2 mb-12">
                                                        <div class="check-block">
                                                            <input type="checkbox"  value="{{ $subcategory->id  }}" class="sub_check_category" data-type="subcategory" id="sub{{ $subcategory->id }}"
                                                                name="subcategory[]">
                                                            <label for="sub{{ $subcategory->id }}">{{ $subcategory->name
                                                                }}</label>
                                                        </div>
                                                        <p class="light-gray fw-400"></p>
                                                    </li>
                                                    @endforeach

                                                </ul>
                                                @endif
                                            </li>
                                            @endforeach

                                        </ul>
                                    </div>
                                </div>
                                @endif
                                {{-- End filter by price --}}







                                {{-- Filte by price --}}

                                <div class="filter_by_price">
                                    <div class="hr-line mb-24"> </div>
                                    <div class="category-block box-2 mb-24">
                                        <div class="title mb-32" data-count="2">
                                            <h6>{{ __('product.price_by_filter') }}</h6>
                                            <span>
                                                <i class="far fa-horizontal-rule"></i>
                                            </span>
                                        </div>
                                        <div class="content-block">
                                            <div class="wrapper">
                                                <div class="price-input mb-24">
                                                    <div class="field">
                                                        <div class="fw-500 mb-4p">Low</div>
                                                        <input type="number" class="input-min" value="0">
                                                    </div>
                                                    <div class="field">
                                                        <div class="fw-500 mb-4p">High</div>
                                                        <input type="number" class="input-max" value="1000000">
                                                    </div>
                                                </div>
                                                <div class="slider">
                                                    <div class="progress"></div>
                                                </div>
                                                <div class="range-input">
                                                    <input type="range" class="range-min" min="0" max="10000"
                                                        value="0" step="100">
                                                    <input type="range" class="range-max" min="0" max="100000"
                                                        value="1000000" step="100">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {{-- end filter by price --}}


                                {{-- Filter by brand --}}
                                @php
                                $brand_items = \App\Models\brand::where('status', 1)->get();
                                @endphp
                                @if(count($brand_items) > 0)
                                <div class="hr-line mb-24"></div>
                                <div class="category-block box-3 mb-24 brands_block">
                                    <div class="title mb-32" data-count="3">
                                        <h6>{{ __('product.filter_by_brand') }}</h6>
                                        <span>
                                            <i class="far fa-horizontal-rule"></i>
                                        </span>
                                    </div>
                                    <div class="content-block">
                                        <ul class="list-unstyled">
                                            @foreach ($brand_items as $brand)

                                            <li class="d-flex align-items-center justify-content-between mb-12">
                                                <div class="check-block">
                                                    <input type="checkbox" class="brands_input" value="{{ $brand->id }}" id="brand{{ $brand->id }}">
                                                    <label for="brand{{ $brand->id }}">{{ $brand->name }}</label>
                                                </div>
                                                <p class="light-gray fw-400"></p>
                                            </li>

                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                @endif
                                {{-- end filter by brand --}}






                            <div class="hr-line mb-24"></div>
                            <div class="category-block box-6 mb-24 rating_block">
                                <div class="title mb-24" data-count="6">
                                    <h6>{{ __('product.filter_by_rating') }}</h6>
                                    <span>
                                        <i class="far fa-horizontal-rule"></i>
                                    </span>
                                </div>
                                <div class="content-block">
                                    <div class="d-flex justify-content-between align-items-center mb-16">
                                        <div class="star-rating flex-column w-100">

                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <input type="radio" id="5-stars" name="rating"  value="5">
                                                <label for="5-stars" class="star">
                                                    <span class="text-danger">
                                                        &#9733; &#9733; &#9733; &#9733; &#9733;
                                                    </span>
                                                </label>

                                            </div>

                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <input type="radio" id="4-stars" name="rating" value="4">
                                                <label for="4-stars" class="star">
                                                    <span class="text-danger">
                                                        &#9733; &#9733; &#9733; &#9733;
                                                    </span>
                                                    &#9733;
                                                </label>

                                            </div>

                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <input type="radio" id="3-stars" name="rating" value="3">
                                                <label for="3-stars" class="star">
                                                    <span class="text-danger">
                                                        &#9733; &#9733; &#9733;
                                                    </span>
                                                    &#9733; &#9733;
                                                </label>

                                            </div>

                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <input type="radio" id="2-stars" name="rating" value="2">
                                                <label for="2-stars" class="star">
                                                    <span class="text-danger">
                                                        &#9733; &#9733;
                                                    </span>
                                                    &#9733; &#9733; &#9733;
                                                </label>

                                            </div>

                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <input type="radio" id="1-stars" name="rating" value="1">
                                                <label for="1-stars" class="star">
                                                    <span class="text-danger">
                                                        &#9733;
                                                    </span>
                                                    &#9733; &#9733;&#9733; &#9733;
                                                </label>
                                            </div>

                                        </div>

                                    </div>


                                </div>
                            </div>


                            @php
                                $feature_product = \App\Models\product::where('status', 1)->where('feature', 1)->orderBy('id','desc')->limit(5)->get();
                                $filter_page = \App\Models\page::where('status', 1)->where('page_type', 'view')->first();
                            @endphp
                            @if(count($feature_product) > 0)

                            <div class="hr-line mb-24"></div>
                            <div class="category-block box-7 mb-24">
                                <div class="title mb-24" data-count="7">
                                    <h6>{{ __('product.feature_product') }}</h6>
                                    <span>
                                        <i class="far fa-horizontal-rule"></i>
                                    </span>
                                </div>
                                <div class="content-block">

                                    @foreach($feature_product as $key => $product)
                                    <a href="{{ url($filter_page->slug.'?slug='.$product->slug) }}" class="d-flex gap-24 align-items-center mb-24">
                                        <div class="image-box d-flex flex-shrink-0">
                                            <img style="max-width: 80px" src="{{ dynamic_asset($product->upload_id) }}" alt="">
                                        </div>
                                        <div>
                                            <p class="mb-8">{{ $product->name ?? '' }}</p>
                                            <p class="color-primary"><span
                                                    class="light-gray text-decoration-line-through">${{ $product->old_price }}</span>&nbsp;${{ $product->selling_price }}
                                            </p>
                                        </div>
                                    </a>
                                    @endforeach

                                </div>
                            </div>
                            @endif

                            <div class="hr-line mb-24"></div>
                            @include('frontend.protfilio_theme._product_variant._offer_product_feature_side')

                        </div>
                    </div>
                    <div class="col-xl-9">
                        <div class="shop-grid-topbar mb-16">
                            <div class="first-block">
                                <div class="visual-btns">

                                </div>
                                <div class="results d-lg-block d-none">
                                    <p class="dark-gray">Showing <span class="v_first">0</span> - <span class="v_last">0</span> of <span class="v_total">0</span>  Results</p>
                                </div>
                            </div>
                            <div class="second-block">

                            </div>
                            <div class="last-block">
                                <div class="d-lg-flex d-none align-items-center gap-8">
                                    <p class="dark-gray">Short by:</p>
                                    <div class="drop-container ">
                                        <div class="wrapper-dropdown dark-black" id="dropdown12">
                                            <span class="selected-display" id="destination12">Price:</span>
                                            <svg id="drp-arrow1" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="arrow transition-all ml-auto rotate-180">
                                                <path d="M7 14.5l5-5 5 5" stroke="currentColor" stroke-width="1.5"
                                                    stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <ul class="topbar-dropdown bg-light-gray" >
                                                <li class="item dark-black">Price: low to high</li>
                                                <li class="item dark-black">high to low</li>
                                                <li class="item dark-black">Average Rating</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                       <div class="filter_product_outpur">
                            {{-- load by ajax --}}
                       </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Featured Product End -->


    </main>
    <!-- Main Sections -->
</div>
<!-- Main Wrapper End -->

@push('js')
    <script>
        var current_page = {{ $_GET['page'] ?? 1 }};
        var category_name = '{{ $_GET['category_name'] ?? '' }}';
        var q = '{{ $_GET['q'] ?? '' }}';
        var category = '{{ $_GET['category'] ?? '' }}';
        var selectedCategories = {!! json_encode($_GET['category_ids'] ?? []) !!};
        var selectedSubCategories = {!! json_encode($_GET['subcategory_ids'] ?? []) !!};
        var min_price = '{{ $_GET['min_price'] ?? '' }}';
        var max_price = '{{ $_GET['max_price'] ?? '' }}';
        var brands_items = {!! json_encode($_GET['brands_key'] ?? []) !!};
        var rating_star = {{ $_GET['rating_star'] ?? 0 }};




        function ajaxDataChangeLoad(){
            var url_data = "?page=" + current_page +
            '&category_name='+category_name+
            '&category='+category+
            '&min_price='+min_price+
            '&max_price='+max_price+
            '&rating_star='+rating_star+
            '&q='+q;

            selectedCategories.forEach(element => {
                url_data+='&category_ids[]='+element;
            });
            selectedSubCategories.forEach(element => {
                url_data+='&subcategory_ids[]='+element;
            });
            brands_items.forEach(element => {
                url_data+='&brand[]='+element;
            });

            // window.history.pushState(window.history.state, '', url_data);
            var newUrl = "{{ url('filter/data-get') }}"+url_data;



            $.get(newUrl, function(response) {
                // Success callback
                $('.filter_product_outpur').html(response);
                var v_data = $('.filter_product_outpur');

                $('.v_first').html(v_data.find('.first_items').val());

                $('.v_last').html(v_data.find('.last_items').val());

                $('.v_total').html(v_data.find('.total_items').val());

                quick_view();

            }).fail(function(jqXHR, textStatus, errorThrown) {

                console.error('Request failed: ' + textStatus + ', ' + errorThrown);
                alert('An error occurred while fetching data: ' + errorThrown);
            });
        }


        ajaxDataChangeLoad();

        $(document).on('click', '.pagination a', function (e) {
            e.preventDefault();
            current_page = $(this).attr('href').split('page=')[1];
            ajaxDataChangeLoad();
        });




        $('.searcform').on('submit', function(e){
            e.preventDefault();
        })

        $('#searchBar').on('input', function(e){
            q =  this.value;
            ajaxDataChangeLoad();
        });


        $('.category_filter').on('change', function(){
            selectedCategories = [];
            selectedSubCategories = [];
            $('.main_check_category:checked').each(function() {
                selectedCategories.push($(this).val());
            });

            $('.sub_check_category:checked').each(function() {
                selectedSubCategories.push($(this).val());
            });

            ajaxDataChangeLoad()
        })


        $('.filter_by_price').on('change', function(){
            min_price = $(this).find('.range-min').val();
            max_price = $(this).find('.range-max').val();
            ajaxDataChangeLoad();

        })


        $('.brands_block').on('change', function(){
            brands_items = [];

            $('.brands_input:checked').each(function() {
                brands_items.push($(this).val());
            });

            ajaxDataChangeLoad()
        })

        $('.rating_block').on('change', function(){

            rating_star = $('input:checked').val();

            ajaxDataChangeLoad()
        })



    </script>

@endpush
