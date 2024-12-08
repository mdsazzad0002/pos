{{--  Master Include  --}}
@extends('layout.admin.master')

@section('content')
    <link rel="stylesheet" href="{{ asset('pos/css/pos.css') }}">

    <div class='pace-top'>
        <!-- BEGIN #app -->
        <div id="app" class="app app-content-full-height app-without-sidebar app-without-header">
            <!-- BEGIN #content -->
            <div id="content" class="app-content p-0">
                <!-- BEGIN pos -->
                <div class="pos pos-with-menu pos-with-sidebar" id="pos">
                    <div class="pos-container">
                        <!-- BEGIN pos-menu -->
                        <div class="pos-menu">
                            <!-- BEGIN logo -->
                            <div class="logo">
                                <a href="{{ url('/admin') }}">
                                    <i class="fas fa-backward"></i> &nbsp; <div class="logo-img"><img src="{{ settings('app_image',9) }}" /></div>

                                </a>
                            </div>
                            <!-- END logo -->
                            <!-- BEGIN nav-container -->
                            <div class="nav-container">
                                <div class="h-100 sidebar_nav_category" data-scrollbar="true" data-skip-mobile="true">
                                    <ul class="nav nav-tabs">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#" data-filter="all">
                                                <i class="fa fa-fw fa-utensils"></i> All Category
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="meat">
                                                <i class="fa fa-fw fa-drumstick-bite"></i> Meat
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="burger">
                                                <i class="fa fa-fw fa-hamburger"></i> Burger
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="pizza">
                                                <i class="fa fa-fw fa-pizza-slice"></i> Pizza
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="drinks">
                                                <i class="fa fa-fw fa-cocktail"></i> Drinks
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="desserts">
                                                <i class="fa fa-fw fa-ice-cream"></i> Desserts
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="snacks">
                                                <i class="fa fa-fw fa-cookie-bite"></i> Snacks
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- END nav-container -->
                        </div>
                        <!-- END pos-menu -->

                        <!-- BEGIN pos-content -->
                        <div class="pos-content">
                            <div class="pos-content-container h-100">
                                <div class="unit_items">
                                    <div class="unit_items_container">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                                <a class="nav-link active" href="#" data-filter="all">
                                                    <i class="fa fa-fw fa-utensils"></i> All Brands
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="meat">
                                                    <i class="fa fa-fw fa-drumstick-bite"></i> Meat
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="burger">
                                                    <i class="fa fa-fw fa-hamburger"></i> Burger
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="pizza">
                                                    <i class="fa fa-fw fa-pizza-slice"></i> Pizza
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="drinks">
                                                    <i class="fa fa-fw fa-cocktail"></i> Drinks
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="desserts">
                                                    <i class="fa fa-fw fa-ice-cream"></i> Desserts
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="snacks">
                                                    <i class="fa fa-fw fa-cookie-bite"></i> Snacks
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product_container">
                                    <div class="row gx-4">
                                        @for($i = 0; $i < 20; $i++)
                                            <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-3 col-sm-6 pb-4" data-type="meat">
                                            <a href="#" class="pos-product" data-bs-toggle="modal"
                                                data-bs-target="#modalPosItem">
                                                <div class="img"
                                                    style="background-image: url({{ asset('pos/pos_image') }}/product-1.jpg)">
                                                </div>
                                                <div class="info">
                                                    <div class="title">Grill Chicken Chop&reg;</div>
                                                    <div class="price">$10.99</div>
                                                </div>
                                            </a>
                                        </div>
                                        @endfor


                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END pos-content -->

                        <!-- BEGIN pos-sidebar -->
                        <div class="pos-sidebar" id="pos-sidebar">
                            <div class="h-100 d-flex flex-column p-0">
                                <!-- BEGIN pos-sidebar-header -->
                                <div class="pos-sidebar-header">
                                    <div class="back-btn">
                                        <button type="button" data-toggle-class="pos-mobile-sidebar-toggled"
                                            data-toggle-target="#pos" class="btn">
                                            <i class="fa fa-chevron-left"></i>
                                        </button>
                                    </div>
                                    <div class="icon"><i class="fa fa-plate-wheat"></i></div>
                                    <div class="title">Table 01</div>
                                    <div class="order small">Order: <span class="fw-semibold">#0056</span></div>
                                </div>
                                <!-- END pos-sidebar-header -->

                                <!-- BEGIN pos-sidebar-nav -->
                                <div class="pos-sidebar-nav small">
                                    <ul class="nav nav-tabs nav-fill">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#" data-bs-toggle="tab"
                                                data-bs-target="#newOrderTab">New Order (5)</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-bs-toggle="tab"
                                                data-bs-target="#orderHistoryTab">Order History (0)</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- END pos-sidebar-nav -->

                                <!-- BEGIN pos-sidebar-body -->
                                <div class="pos-sidebar-body tab-content" data-scrollbar="true" data-height="100%">
                                    <!-- BEGIN #newOrderTab -->
                                    <div class="tab-pane fade h-100 show active" id="newOrderTab">
                                        <!-- BEGIN pos-order -->
                                        <div class="pos-order">
                                            <div class="pos-order-product">
                                                <div class="img"
                                                    style="background-image: url({{ asset('pos/pos_image') }}/product-2.jpg)">
                                                </div>
                                                <div class="flex-1">
                                                    <div class="h6 mb-1">Grill Pork Chop</div>
                                                    <div class="small">$12.99</div>
                                                    <div class="small mb-2">- size: large</div>
                                                    <div class="d-flex">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-minus"></i></a>
                                                        <input type="text"
                                                            class="form-control w-50px form-control-sm mx-2 bg-white bg-opacity-25 bg-white bg-opacity-25 text-center"
                                                            value="01">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-plus"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pos-order-price d-flex flex-column">
                                                <div class="flex-1">$12.99</div>
                                                <div class="text-end">
                                                    <a href="#" class="btn btn-default btn-sm"><i
                                                            class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END pos-order -->
                                        <!-- BEGIN pos-order -->
                                        <div class="pos-order">
                                            <div class="pos-order-product">
                                                <div class="img"
                                                    style="background-image: url({{ asset('pos/pos_image') }}/product-8.jpg)">
                                                </div>
                                                <div class="flex-1">
                                                    <div class="h6 mb-1">Orange Juice</div>
                                                    <div class="small">$5.00</div>
                                                    <div class="small mb-2">
                                                        - size: large<br>
                                                        - less ice
                                                    </div>
                                                    <div class="d-flex">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-minus"></i></a>
                                                        <input type="text"
                                                            class="form-control w-50px form-control-sm mx-2 bg-white bg-opacity-25 bg-white bg-opacity-25 text-center"
                                                            value="02">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-plus"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pos-order-price d-flex flex-column">
                                                <div class="flex-1">$10.00</div>
                                                <div class="text-end">
                                                    <a href="#" class="btn btn-default btn-sm"><i
                                                            class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END pos-order -->
                                        <!-- BEGIN pos-order -->
                                        <div class="pos-order">
                                            <div class="pos-order-product">
                                                <div class="img"
                                                    style="background-image: url({{ asset('pos/pos_image') }}/product-1.jpg)">
                                                </div>
                                                <div class="flex-1">
                                                    <div class="h6 mb-1">Grill chicken chop</div>
                                                    <div class="small">$10.99</div>
                                                    <div class="small mb-2">
                                                        - size: large<br>
                                                        - spicy: medium
                                                    </div>
                                                    <div class="d-flex">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-minus"></i></a>
                                                        <input type="text"
                                                            class="form-control w-50px form-control-sm mx-2 bg-white bg-opacity-25 bg-white bg-opacity-25 text-center"
                                                            value="01">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-plus"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pos-order-price d-flex flex-column">
                                                <div class="flex-1">$10.99</div>
                                                <div class="text-end">
                                                    <a href="#" class="btn btn-default btn-sm"><i
                                                            class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END pos-order -->
                                        <!-- BEGIN pos-order -->
                                        <div class="pos-order">
                                            <div class="pos-order-product">
                                                <div class="img"
                                                    style="background-image: url({{ asset('pos/pos_image') }}/product-5.jpg)">
                                                </div>
                                                <div class="flex-1">
                                                    <div class="h6 mb-1">Hawaiian Pizza</div>
                                                    <div class="small">$15.00</div>
                                                    <div class="small mb-2">
                                                        - size: large<br>
                                                        - more onion
                                                    </div>
                                                    <div class="d-flex">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-minus"></i></a>
                                                        <input type="text"
                                                            class="form-control w-50px form-control-sm mx-2 bg-white bg-opacity-25 bg-white bg-opacity-25 text-center"
                                                            value="01">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-plus"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pos-order-price d-flex flex-column">
                                                <div class="flex-1">$15.00</div>
                                                <div class="text-end">
                                                    <a href="#" class="btn btn-default btn-sm"><i
                                                            class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                            <div
                                                class="pos-order-confirmation text-center d-flex flex-column justify-content-center">
                                                <div class="mb-1">
                                                    <i class="fa fa-trash fs-36px lh-1 text-body text-opacity-25"></i>
                                                </div>
                                                <div class="mb-2">Remove this item?</div>
                                                <div>
                                                    <a href="#"
                                                        class="btn btn-default btn-sm ms-auto me-2 width-100px">No</a>
                                                    <a href="#" class="btn btn-danger btn-sm width-100px">Yes</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END pos-order -->
                                        <!-- BEGIN pos-order -->
                                        <div class="pos-order">
                                            <div class="pos-order-product">
                                                <div class="img"
                                                    style="background-image: url({{ asset('pos/pos_image') }}/product-10.jpg)">
                                                </div>
                                                <div class="flex-1">
                                                    <div class="h6 mb-1">Mushroom Soup</div>
                                                    <div class="small">$3.99</div>
                                                    <div class="small mb-2">
                                                        - size: large<br>
                                                        - more cheese
                                                    </div>
                                                    <div class="d-flex">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-minus"></i></a>
                                                        <input type="text"
                                                            class="form-control w-50px form-control-sm mx-2 bg-white bg-opacity-25 bg-white bg-opacity-25 text-center"
                                                            value="01">
                                                        <a href="#" class="btn btn-secondary btn-sm"><i
                                                                class="fa fa-plus"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pos-order-price d-flex flex-column">
                                                <div class="flex-1">$3.99</div>
                                                <div class="text-end">
                                                    <a href="#" class="btn btn-default btn-sm"><i
                                                            class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END pos-order -->
                                    </div>
                                    <!-- END #orderHistoryTab -->

                                    <!-- BEGIN #orderHistoryTab -->
                                    <div class="tab-pane fade h-100" id="orderHistoryTab">
                                        <div
                                            class="h-100 d-flex align-items-center justify-content-center text-center p-20">
                                            <div>
                                                <div class="mb-3 mt-n5">
                                                    <svg width="6em" height="6em" viewBox="0 0 16 16"
                                                        class="text-gray-300" fill="currentColor"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd"
                                                            d="M14 5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V5zM1 4v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4H1z" />
                                                        <path
                                                            d="M8 1.5A2.5 2.5 0 0 0 5.5 4h-1a3.5 3.5 0 1 1 7 0h-1A2.5 2.5 0 0 0 8 1.5z" />
                                                    </svg>
                                                </div>
                                                <h5>No order history found</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END #orderHistoryTab -->
                                </div>
                                <!-- END pos-sidebar-body -->

                                <!-- BEGIN pos-sidebar-footer -->
                                <div class="pos-sidebar-footer">
                                    <div class="d-flex align-items-center mb-2">
                                        <div>Subtotal</div>
                                        <div class="flex-1 text-end h6 mb-0">$30.98</div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div>Taxes (6%)</div>
                                        <div class="flex-1 text-end h6 mb-0">$2.12</div>
                                    </div>
                                    <hr class="opacity-1 my-10px">
                                    <div class="d-flex align-items-center mb-2">
                                        <div>Total</div>
                                        <div class="flex-1 text-end h4 mb-0">$33.10</div>
                                    </div>
                                    <div class="mt-3">
                                        <div class="d-flex">
                                            <a href="#"
                                                class="btn btn-default w-70px me-10px d-flex align-items-center justify-content-center">
                                                <span>
                                                    <i class="fa fa-bell fa-lg my-10px d-block"></i>
                                                    <span class="small fw-semibold">Service</span>
                                                </span>
                                            </a>
                                            <a href="#"
                                                class="btn btn-default w-70px me-10px d-flex align-items-center justify-content-center">
                                                <span>
                                                    <i class="fa fa-receipt fa-fw fa-lg my-10px d-block"></i>
                                                    <span class="small fw-semibold">Bill</span>
                                                </span>
                                            </a>
                                            <a href="#"
                                                class="btn btn-theme flex-fill d-flex align-items-center justify-content-center">
                                                <span>
                                                    <i class="fa fa-cash-register fa-lg my-10px d-block"></i>
                                                    <span class="small fw-semibold">Submit Order</span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- END pos-sidebar-footer -->
                            </div>
                        </div>
                        <!-- END pos-sidebar -->
                    </div>
                </div>
                <!-- END pos -->

                <!-- BEGIN pos-mobile-sidebar-toggler -->
                <a href="#" class="pos-mobile-sidebar-toggler" data-toggle-class="pos-mobile-sidebar-toggled"
                    data-toggle-target="#pos">
                    <i class="fa fa-shopping-bag"></i>
                    <span class="badge">5</span>
                </a>
                <!-- END pos-mobile-sidebar-toggler -->
            </div>
            <!-- END #content -->

            <!-- BEGIN btn-scroll-top -->
            <a href="#" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
            <!-- END btn-scroll-top -->
        </div>
        <!-- END #app -->

        <!-- BEGIN #modalPosItem -->
        <div class="modal modal-pos fade" id="modalPosItem">
            <div class="modal-dialog modal-lg">
                <div class="modal-content border-0">
                    <a href="#" data-bs-dismiss="modal" class="btn-close position-absolute top-0 end-0 m-4"></a>
                    <div class="modal-pos-product">
                        <div class="modal-pos-product-img">
                            <div class="img"
                                style="background-image: url({{ asset('pos/pos_image') }}/product-1.jpg)"></div>
                        </div>
                        <div class="modal-pos-product-info">
                            <div class="fs-4 fw-semibold">Grill Chicken Chop</div>
                            <div class="text-body text-opacity-50 mb-2">
                                chicken, egg, mushroom, salad
                            </div>
                            <div class="fs-3 fw-bold mb-3">$10.99</div>
                            <div class="d-flex mb-3">
                                <a href="#" class="btn btn-secondary"><i class="fa fa-minus"></i></a>
                                <input type="text" class="form-control w-50px fw-bold mx-2 text-center" name="qty"
                                    value="1">
                                <a href="#" class="btn btn-secondary"><i class="fa fa-plus"></i></a>
                            </div>
                            <hr class="opacity-1">
                            <div class="mb-2">
                                <div class="fw-bold">Size:</div>
                                <div class="option-list">
                                    <div class="option">
                                        <input type="radio" id="size3" name="size" class="option-input"
                                            checked>
                                        <label class="option-label" for="size3">
                                            <span class="option-text">Small</span>
                                            <span class="option-price">+0.00</span>
                                        </label>
                                    </div>
                                    <div class="option">
                                        <input type="radio" id="size1" name="size" class="option-input">
                                        <label class="option-label" for="size1">
                                            <span class="option-text">Large</span>
                                            <span class="option-price">+3.00</span>
                                        </label>
                                    </div>
                                    <div class="option">
                                        <input type="radio" id="size2" name="size" class="option-input">
                                        <label class="option-label" for="size2">
                                            <span class="option-text">Medium</span>
                                            <span class="option-price">+1.50</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-2">
                                <div class="fw-bold">Add On:</div>
                                <div class="option-list">
                                    <div class="option">
                                        <input type="checkbox" name="addon[sos]" value="true" class="option-input"
                                            id="addon1">
                                        <label class="option-label" for="addon1">
                                            <span class="option-text">More BBQ sos</span>
                                            <span class="option-price">+0.00</span>
                                        </label>
                                    </div>
                                    <div class="option">
                                        <input type="checkbox" name="addon[ff]" value="true" class="option-input"
                                            id="addon2">
                                        <label class="option-label" for="addon2">
                                            <span class="option-text">Extra french fries</span>
                                            <span class="option-price">+1.00</span>
                                        </label>
                                    </div>
                                    <div class="option">
                                        <input type="checkbox" name="addon[ms]" value="true" class="option-input"
                                            id="addon3">
                                        <label class="option-label" for="addon3">
                                            <span class="option-text">Mushroom soup</span>
                                            <span class="option-price">+3.50</span>
                                        </label>
                                    </div>
                                    <div class="option">
                                        <input type="checkbox" name="addon[ms]" value="true" class="option-input"
                                            id="addon4">
                                        <label class="option-label" for="addon4">
                                            <span class="option-text">Lemon Juice (set)</span>
                                            <span class="option-price">+2.50</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <hr class="opacity-1">
                            <div class="row">
                                <div class="col-4">
                                    <a href="#" class="btn btn-default fw-semibold mb-0 d-block py-3"
                                        data-bs-dismiss="modal">Cancel</a>
                                </div>
                                <div class="col-8">
                                    <a href="#"
                                        class="btn btn-theme fw-semibold d-flex justify-content-center align-items-center py-3 m-0">Add
                                        to cart <i class="fa fa-plus ms-2 my-n3"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
