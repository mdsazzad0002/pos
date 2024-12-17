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
                                                <a class="nav-link active" href="#" data-filter="all"  data-id="0">
                                                    <i class="fas fa-ring nav-icon"></i> All Brands
                                                </a>
                                            </li>
                                            @foreach ($brands as $brand)

                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-filter="meat"  data-id="{{  $brand->id }}" style="background: url('{{  dynamic_asset($brand->upload_id) }}') no-repeat; background-position: center center;
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
                                                <div class=" col-xxl-3 col-xl-2  col-lg-4  col-md-6 col-sm-6 pb-4" data-type="meat">
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
                                                data-bs-target="#newOrderTab">New Order (<span class="subtotal_quantity">0</span>)</a>
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
                                        <div>Subtotal : </div>
                                        <div class="flex-1 text-end h6 mb-0 "> $<span class="subtotal_price">00.00</span> </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div>Taxes : </div>
                                        <div class="flex-1 text-end h6 mb-0"> $<span class="subtotal_tax">00.00</span></div>
                                    </div>
                                    <div>
                                        <div class="inputgorup">
                                            <div class="input-group-prepend mt-2">
                                                <div class="input-group-text p-0 w-50">
                                                    <select name="type" id="typevalue" class="form-control" onchange="discountCalculation()">
                                                        <option value="1">Fixed</option>
                                                        <option value="2">Present</option>
                                                    </select>
                                                </div>
                                                <input type="number" step="0.1" oninput="discountCalculation()" id="discount" class="form-control" placeholder="Enter your Discount">
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="opacity-1 my-10px">
                                    <div class="d-flex align-items-center mb-2">
                                        <div>Total : </div>
                                        <div class="flex-1 text-end h4 mb-0"> $<span class="subtotal_tprice">00.00</span></div>
                                        <input type="hidden" id="grand_total">
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
                                                class="btn btn-theme flex-fill d-flex align-items-center justify-content-center" data-toggle="modal"
                                                data-target="#modalOrder">
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

        {{-- Order modal --}}
        <div class="modal modal-pos fade" id="modalOrder">
            <div class="modal-dialog modal-lg">
                <div class="modal-content border-0">
                    <a href="#" data-bs-dismiss="modal" class="btn-close position-absolute top-0 end-0 m-4"></a>
                    <div class="modal-pos-product">

                        @include('admin.pos.checkout')

                    </div>
                </div>
            </div>
        </div>

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
                        <form class="modal-pos-product-info">
                            <div class="fs-4 fw-semibold name_info">Grill Chicken Chop</div>
                            <div class="text-body text-opacity-50 mb-2 product_info_extra_inof">
                                ----
                            </div>
                            <div class="fs-3 fw-bold mb-3 name_price">{{ settings('currency_symbol', 9) }} <input type="text" hidden><span>0.0</span> </div>
                            <div class="fs-3 fw-bold mb-3 unit_change"> <input type="text" hidden> </div>

                            <div class="d-flex mb-3 quantity_parents">
                                <a href="javascript:void(0)" onclick="product_counterUP(this, '-')" class="btn btn-secondary"><i class="fa fa-minus"></i></a>
                                <input type="text" class="form-control w-50px fw-bold mx-2 text-center input_quantity" name="quantity" value="0">
                                <a   href="javascript:void(0)" onclick="product_counterUP(this, '+')" class="btn btn-secondary"><i class="fa fa-plus"></i></a>
                            </div>
                            <hr class="opacity-1">
                            <div class="mb-2">
                                <div class="fw-bold">Size:</div>
                                <div class="option-list vaiaant_key"></div>
                            </div>

                            <div class="mb-2">
                                <div class="fw-bold">Unit:</div>
                                <div class="option-list unit_key"></div>
                            </div>

                            <hr class="opacity-1">
                            <div class="row">
                                <div class="col-4">
                                    <a href="#" class="btn btn-default fw-semibold mb-0 d-block py-3"
                                        data-dismiss="modal">Cancel</a>
                                </div>
                                <div class="col-8">
                                    <button type="submit" href="#"
                                        class="btn btn-primary fw-semibold d-flex justify-content-center align-items-center py-3 m-0 w-100"><i class="fa fa-plus ms-2 my-n3"></i> &nbsp;&nbsp;Add
                                        to cart </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>

        document.querySelector('.modal-pos-product-info').addEventListener('submit', function(e) {
            e.preventDefault();
            var formData = $(this).serialize();
            // AJAX request
            $.ajax({
                type: 'GET',
                url: '{{ route('add_to_cart') }}',
                data: formData,
                dataType: 'json',
                success: function(data) {
                    if(data.type == 'success'){
                        cart_product_view();
                    }
                },
                error: function(xhr, status, error) {
                    console.error("There was an error with the request: " + error);
                }
            });
        });





        function product_view_cart(thi){
            // console.log(thi)
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
                        <div>Vat : ${data.vat_info ? data.vat_info.amount : 0}%</div>
                        <div>Garage : ${data.garage}</div>
                        <div>Route : ${data.route}</div>
                        <input name="product_id" value="${data.id}" hidden/>
                        <input name="product_id" value="${data.id}" hidden/>
                        <input name="source_type" value="pos" hidden/>


                    `;

                    $('#modalPosItem .product_info_extra_inof').html(product_info_data);

                    if(data.variant_on == 1){
                        productOfVariant(data.variant_option_info);
                    }else{
                        $('#modalPosItem .vaiaant_key.option-list').html('');
                    }

                    productOfunit(data)


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
                                        <input type="radio" id="size${items.id}" value="${items.id}"  name="size" class="option-input"
                                            >
                                        <label class="option-label" for="size${items.id}">
                                            <span class="option-text text-capitalize">${items.name}</span>
                                            <span class="option-price">{{ settings('currency_symbol', 9) }}${items.selling_price}</span>
                                        </label>
                                    </div>`;
            });




             $('#modalPosItem .vaiaant_key.option-list').html(html_data_value);
             var items_var = $('#modalPosItem .vaiaant_key.option-list .option:first-child input');
             items_var.prop('checked', true);
             price_change($(items_var).parents('.option'));


        }


        function productOfunit(unitVariant){
            var html_data_value = '';

                html_data_value += `<div class="option" data-count="1" onclick="unit_change(this)">
                                        <input type="radio" id="size${unitVariant.unit_info.id}" value="${unitVariant.unit_info.id}"  name="unit" class="option-input"
                                            >
                                        <label class="option-label" for="size${unitVariant.unit_info.id}">
                                            <span class="option-text text-capitalize">1</span>
                                            <span class="option-price"> ${unitVariant.unit_info.name}</span>
                                        </label>
                                    </div>`;

                unitVariant.units_info.forEach((items, index) => {
                html_data_value += `<div class="option" data-count="${items.sub_items}" onclick="unit_change(this)">
                                        <input type="radio" id="size${items.id}" value="${items.id}"  name="unit" class="option-input"
                                            >
                                        <label class="option-label" for="size${items.id}">
                                            <span class="option-text text-capitalize">${items.sub_items}</span>
                                            <span class="option-price">${items.name}</span>
                                        </label>
                                    </div>`;
            });




             $('#modalPosItem .unit_key.option-list').html(html_data_value);
             var items_var = $('#modalPosItem .unit_key.option-list .option:first-child input');
             items_var.prop('checked', true);
             unit_change($(items_var).parents('.option'));


        }





        function price_change(thi){
            console.log(thi)
            $('#modalPosItem .name_price input').val($(thi).data('price'));
            price_calculation_change_option()
        }

        function unit_change(thi){
            $('#modalPosItem .unit_change input').val($(thi).data('count'));
            price_calculation_change_option()
        }





        function format_cart_items(data){
            var html_data = '';

            // console.log(data['product'])
            Object(data['product']).forEach((element, index)=>{

                html_data+=`
                  <!-- BEGIN pos-order -->
                    <div class="pos-order">
                        <div class="pos-order-product">
                            <div class="img"
                                style="background-image: url('${element.product.image_url}')">
                            </div>
                            <div class="flex-1">
                                <div class="h6 mb-1">${element.product.name}</div>
                                <div class="small">${element.product_variant ? element.product_variant.selling_price :  element.product.selling_price}(+ ${element.vat_price}) = ${element.vat_with_price}</div>



                                <div class="small mb-2" style="${element.product_variant ? 'display:block': 'display:none'}">
                                    - size: ${element.product_variant ? element.product_variant.name : ''}<br>

                                </div>


                                <div class="d-flex">
                                    <a href="#" class="btn btn-secondary btn-sm"><i
                                            class="fa fa-minus"></i></a>
                                    <input type="text"
                                        class="form-control w-50px form-control-sm mx-2 bg-white bg-opacity-25 bg-white bg-opacity-25 text-center"
                                        value="${element.quantity}">
                                    <a href="#" class="btn btn-secondary btn-sm"><i
                                            class="fa fa-plus"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="pos-order-price d-flex flex-column">
                            <div class="flex-1">${element.total_price}</div>
                            <div class="text-end">
                                <a href="#" class="btn btn-default btn-sm" onclick="pos_remove_cart(${element.product.id},${element.size})" ><i
                                        class="fa fa-trash"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- END pos-order -->
                `
                console.log(element)
            })
            $('#newOrderTab').html(html_data)
        }




        function cart_product_view(){
            $.ajax({
                type:'get',
                url:'{{ route('cart_details') }}?source_type=pos',
                success:function(data){
                    // data  = JSON.parse(data)

                    $('.subtotal_quantity').html(data.subtotal.quantity);
                    $('.subtotal_tax').html(data.subtotal.total_vat);
                    $('.subtotal_price').html(data.subtotal.price);
                    $('.subtotal_tprice').html(data.subtotal.total_price);
                    $('#grand_total').val(data.subtotal.total_price);

                    if(data.subtotal.quantity == 0){
                        $('#newOrderTab').html('')
                    }else{
                        format_cart_items(data)
                    }
                }
            })
        }



        setTimeout(() => {
            cart_product_view()
        }, 1000);



        function price_calculation_change_option(){
            var quantity = $('#modalPosItem .unit_change input').val();
            var inp_price = $('#modalPosItem .name_price input').val();
            $('#modalPosItem .name_price span').html(quantity * inp_price);

        }


        function discountCalculation(){
            var subtotal_tprice = document.querySelector('.subtotal_tprice');
            var grandInput = document.getElementById('grand_total');

            var typevalue = document.getElementById('typevalue');
            var inputvalue = document.getElementById('discount');
            if(typevalue.value==1){
                var calcluted =  grandInput.value - inputvalue.value;
                if(calcluted < 0){
                    alert('Negative value detected');
                }
                subtotal_tprice.innerHTML = calcluted

            }else{
                var calcluted = grandInput.value - ((grandInput.value * inputvalue.value) / 100);
                if(calcluted < 0){
                    alert('Negative value detected');
                }
                subtotal_tprice.innerHTML = calcluted

            }

        }





        function pos_remove_cart(id, size){
            console.log(size)
            if(size == 0){
                size = ''
            }
            $.ajax({
                type: 'get',
                url:'{{ route('add_to_cart') }}',
                data:{
                    'product_id': id,
                    'size':size,
                    'type' : 'remove_cart',
                    'source_type' : 'pos'

                },
                success:function(data){
                    cart_product_view()
                }
            })
        }




        var brand_id = 0;
        let category_id = 0;
        function brand_items_container(){
            document.querySelectorAll('.unit_items_container .nav-link').forEach(element=>{
                element.addEventListener('click',function(event){
                    brand_id = this.getAttribute('data-id');
                    filter_and_refresh();
                })
            })
        }
        function category_items_container(){
            document.querySelectorAll('.sidebar_nav_category .nav-link').forEach(element=>{
                element.addEventListener('click',function(event){
                    category_id = this.getAttribute('data-id');
                    filter_and_refresh();
                })
            })
        }

        function filter_and_refresh(){
            $.ajax({
                type:'get',
                url:'',
                success:function(data){

                }
            })
        }
    </script>

@endsection


