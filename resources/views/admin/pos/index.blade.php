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
                                                <i class="fab fa-linode nav-icon"></i> All Category
                                            </a>
                                        </li>
                                        @foreach ($categories as $category)

                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-filter="meat" style="background: url('{{  dynamic_asset($category->upload_id) }}') no-repeat; background-position: center center;
                                            background-size: cover;">
                                                <span>
                                                    {{ $category->name ?? '' }}
                                                </span>

                                            </a>
                                        </li>
                                        @endforeach

                                    </ul>
                                </div>
                            </div>
                            <!-- END nav-container -->
                        </div>
                        <!-- END pos-menu -->

                        <!-- BEGIN pos-content -->
                        <div class="pos-content">
                            <div class="pos-content-container">
                                <div class="unit_items">
                                    <div class="unit_items_container">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                                <a class="nav-link active" href="#" data-filter="all">
                                                    <i class="fas fa-ring nav-icon"></i> All Brands
                                                </a>
                                            </li>
                                            @foreach ($brands as $brand)

                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="meat" style="background: url('{{  dynamic_asset($brand->upload_id) }}') no-repeat; background-position: center center;
                                                background-size: cover;">
                                                    <span>
                                                        {{ $brand->name ?? '' }}
                                                    </span>

                                                </a>
                                            </li>
                                            @endforeach

                                        </ul>
                                    </div>
                                </div>
                                <div class="product_container">
                                    <div class="product_scroll">
                                        <div class="row gx-4">
                                            @foreach ($products as $product)
                                                <div class=" col-xl-4 col-lg-4  col-md-4 col-sm-6 pb-4" data-type="meat">
                                                <a href="#" class="pos-product modal" onclick="product_view_cart(this)" data-id="{{ $product->id }}" data-toggle="modal"
                                                    data-target="#modalPosItem">
                                                    <div class="img"
                                                        style="background-image: url({{ $product->image_url }})">
                                                    </div>
                                                    <div class="info">
                                                        <div class="title">{{ Str::title($product->name)  }}</div>
                                                        <div class="price">{{ settings('currency_symbol', 9) .' '. $product->selling_price }}</div>
                                                    </div>
                                                </a>
                                            </div>
                                            @endforeach


                                        </div>
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
                            <div class="img product_bg_image"
                                style="background-image: url({{ asset('pos/pos_image') }}/product-1.jpg)"></div>
                        </div>
                        <div class="modal-pos-product-info">
                            <div class="fs-4 fw-semibold name_info">Grill Chicken Chop</div>
                            <div class="text-body text-opacity-50 mb-2 product_info_extra_inof">
                                ----
                            </div>
                            <div class="fs-3 fw-bold mb-3 name_price">{{ settings('currency_symbol', 9) }}<span>0.0</span> </div>
                            <div class="d-flex mb-3 quantity_parents">
                                <a href="javascript:void(0)" onclick="product_counterUP(this, '-')" class="btn btn-secondary"><i class="fa fa-minus"></i></a>
                                <input type="text" class="form-control w-50px fw-bold mx-2 text-center input_quantity" name="qty"
                                    value="0">
                                <a   href="javascript:void(0)" onclick="product_counterUP(this, '+')" class="btn btn-secondary"><i class="fa fa-plus"></i></a>
                            </div>
                            <hr class="opacity-1">
                            <div class="mb-2">
                                <div class="fw-bold">Size:</div>
                                <div class="option-list vaiaant_key"></div>
                            </div>
                           
                            <hr class="opacity-1">
                            <div class="row">
                                <div class="col-4">
                                    <a href="#" class="btn btn-default fw-semibold mb-0 d-block py-3"
                                        data-dismiss="modal">Cancel</a>
                                </div>
                                <div class="col-8">
                                    <a href="#"
                                        class="btn btn-primary fw-semibold d-flex justify-content-center align-items-center py-3 m-0"><i class="fa fa-plus ms-2 my-n3"></i> &nbsp;&nbsp;Add
                                        to cart </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function product_view_cart(thi){
            console.log(thi)
            $.ajax({
                type:'get',
                url:'{{ url("admin/product/productByID/") }}/'+$(thi).data('id'),
                
                success:function(data){
                  
                    $('#modalPosItem .product_bg_image').css('background-image', 'url('+data.image_url+')');
                    $('#modalPosItem .name_info').html(data.name);
                    $('#modalPosItem .name_price span').html(data.selling_price);
                    // console.log(data)

                    var product_info_data = `
                    <div>SKU : ${data.sku}</div>
                    <div>Weight : ${data.weight}</div>
                    <div>Buying Price Last : ${data.buying_price}</div>
                    <div>Garage : ${data.garage}</div>
                    <div>Route : ${data.route}</div>
                    `;
            
                    $('#modalPosItem .product_info_extra_inof').html(product_info_data);

                    if(data.variant_on == 1){
                        productOfVariant(data.variant_option_info);
                    }else{
                        $('#modalPosItem .vaiaant_key.option-list').html('');
                    }


                }
            })

        }

        function product_counterUP(thi, key){
            var input_value = $(thi).parents('.quantity_parents').find('.input_quantity').val();
            var input_assing = $(thi).parents('.quantity_parents').find('.input_quantity');

            if(key == '+'){
                input_assing.val( parseInt(input_value) + 1);
            }else if(key == '-'){
                if(input_value < 1){
                    input_assing.val(0)
                }else{
                    input_assing.val(input_value - 1);
                }
            }

        }

        function productOfVariant(productVariant){


            var html_data_value = '';

            productVariant.forEach((items, index) => {
                html_data_value += `<div class="option" data-price="${items.selling_price}" onclick="price_change(this)">
                                        <input type="radio" id="size${items.id}"  name="size" class="option-input"
                                            >
                                        <label class="option-label" for="size${items.id}">
                                            <span class="option-text text-capitalize">${items.name}</span>
                                            <span class="option-price">{{ settings('currency_symbol', 9) }}${items.selling_price}</span>
                                        </label>
                                    </div>`;
            });

          


             $('#modalPosItem .vaiaant_key.option-list').html(html_data_value);
             $('#modalPosItem .vaiaant_key.option-list .option:first-child input').prop('checked', true);
             $('#modalPosItem .name_price span').html(productVariant[0].selling_price);


         
        }


        function price_change(thi){
            $('#modalPosItem .name_price span').html($(thi).data('price'));
        }

    </script>

@endsection


