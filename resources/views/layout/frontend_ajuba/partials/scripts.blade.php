
    <!-- Jquery Js -->
    <script src="{{ asset('assets/frontend/js/vendor/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/jquery-3.6.3.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/slick.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/jquery-validator.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/jquery.countdown.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/countryCode.js') }}"></script>



    <link rel="stylesheet" href="{{ asset('vendor/flasher/flasher.min.css') }}">
    <script src="{{ asset('vendor/flasher/flasher.min.js') }}"></script>

    <script src="{{ asset('assets/frontend/js/app.js') }}"></script>


    @stack('js')
    @stack('script')
    @stack('scripts')

    <script>
        function quick_view(){
             var prodcuts_items =  document.querySelectorAll('.productQuickViewbtn');
                prodcuts_items.forEach(element => {
                    element.addEventListener('click', function(){
                        var id = $(this).data('id');
                        $.ajax({
                            type:'get',
                            data:{
                                'id' :id
                            },
                            url:'{{ route('product.quickview') }}',
                            success: function(data) {
                                var target_item = $('#productQuickView'); // Use jQuery to select the element
                                target_item.find('.quick-image-box').html(JSON.parse(data.image)); // Use .find() for nested selection
                                target_item.find('.product-text-container').html(JSON.parse(data.content));
                                data_unit_and_variant_check()
                            }
                        })
                    })
                });
        }
        quick_view();



        function add_to_cart(thi){

            var current = thi;
            if ($(thi).data('quantaty')) {



                var variant;
                var unit;
                var quantaty = $(thi).closest('.modal').find('input.qunataty_number').val();
                // var quantaty = $(thi).closest('.quantity_parents').find('input.qunataty_number').val();

              //  console.log($(thi).closest('.product_description_parents').length + 'sda');

                if($(thi).closest('.product_description_parents').length > 0){
                    variant = $(thi).closest('.product_description_parents').find('input.variant_size:checked').val();
                  //  console.log(variant+'here');
                }else{
                     variant = $(thi).closest('.modal').find('input.variant_size:checked').val();

                }
                if($(thi).closest('.product_unit').length > 0){
                     unit = $(thi).closest('.product_unit').find('input.option-input:checked').val();
                }else{
                     unit = $(thi).closest('.modal').find('input.option-input:checked').val();
                }

                // console.log(variant)

                // console.log(45645);

                $.ajax({
                    type: 'get',
                    url:'{{ route('add_to_cart') }}',
                    data:{
                        'product_id': $(thi).data('id'),
                        'quantity' : quantaty,
                        'unit' : unit,
                        'size' : variant,
                        'update':'sdfasd'

                    },
                    success:function(data){
                        if(data.type == 'error'){
                            flasher.error(data.title);
                        }
                        if(data.type == 'info'){
                            flasher.info(data.title);
                        }
                        if(data.type == 'success'){
                            flasher.success(data.title);
                        }

                        setTimeout(() => {
                            load_cart_and_wishlist();
                        },500)

                        setTimeout(() => {
                            if($(current).data('href')){
                                    window.location.href = $(current).data('href');
                            }
                        },1000)
                      
                    }
                })


            }else{
                $.ajax({
                    type: 'get',
                    url:'{{ route('add_to_cart') }}',
                    data:{
                        'product_id': $(thi).data('id'),
                    },
                    success:function(data){
                        flasher.success('Successfully added cart');
                        
                        setTimeout(() => {
                            if($(current).data('href')){
                                    window.location.href = $(current).data('href');
                            }
                        },1000)
                        setTimeout(() => {
                            load_cart_and_wishlist();
                        },500)

                    }
                })
            }



        }

     function  load_cart_and_wishlist(){
         $.ajax({
             type:'get',
             url: "{{ url('cart_and_wishlist') }}",
             success:function(data){
                 data = JSON.parse(data);

                 document.querySelector('.compare_list .items_added').innerHTML = data.compare_list;

                 document.querySelector('.cart .items_added').innerHTML = data.front_product;
                 document.querySelector('.sidebar-cart .items_added').innerHTML = data.front_product;
                 document.querySelector('#sidebar-cart .cart_items').innerHTML = data.front_product;

                 var togler_pitems = document.querySelectorAll('.cart_sidebar_toggler .items_added');
                 if(togler_pitems.length > 0){
                    togler_pitems.forEach(element => {
                        element.innerHTML = data.front_product;
                    })
                    // document.querySelector('.cart_sidebar_toggler .items_added').innerHTML = data.front_product;
                 }
                // document.querySelector('.cart_sidebar_toggler .items_added').innerHTML = data.front_product;

             }
         })

     }


    //  update script
        setTimeout(() => {
            load_cart_and_wishlist();
        }, 700);
    // end update script










        document.querySelector('.cart.items_icon_parents').addEventListener('click', function(){
            update_side_cart();
        });

        // sidebar cart toggle
        document.querySelector('.sidebar-cart').addEventListener('click', function(){
            var sidebar = document.querySelector('#sidebar-cart');
            if(sidebar.style.right == '0px'){
                document.querySelector('#sidebar-cart .close-button.close-popup').click();
            }else{
                document.querySelector('.cart.items_icon_parents').click();
            }

        });
        // end sidebar cart toggle


        function update_side_cart(){
            $.ajax({
                type:'get',
                url:'{{ url('side_cart_info')}}',
                success:function(data){
                    // console.log(data)
                    $('.shoping_content').html(data);

                    setTimeout(() => {
                        cart_init_sidebar()
                        load_cart_and_wishlist();
                    }, 700);
                }

            })
        }





        function cart_init_sidebar(){

            document.querySelectorAll('#sidebar-cart li.product-item').forEach(element => {

                // instant input change
                var id = element.getAttribute('data-id');
                if(id){
                    element.querySelector('.qunataty_input').addEventListener("change", function() {
                        cart_update(id, this.value)
                        console.log(this.value)
                    })
                }
                // end instant input change

               element.querySelector('.increment').addEventListener("click", function() {

                    $(this).parents('li.product-item').find('input[type="number"]').val(function(i, oldValue) {
                        let presetn_value = parseInt(oldValue || 0) + 1;
                        cart_update(id, presetn_value)
                        return presetn_value;
                    });
               })

               element.querySelector('.decrement').addEventListener("click", function() {
                    $(this).parents('li.product-item').find('input[type="number"]').val(function(i, oldValue) {

                        let presetn_value = parseInt(oldValue || 0) - 1;
                        if(presetn_value < 0){
                             presetn_value = 0;

                        }
                        if(oldValue != presetn_value){
                            cart_update(id, presetn_value)
                        }
                        return presetn_value;
                    });
               })


            });



        }


        function cart_page_increment_decrement(){

            document.querySelectorAll('.cart-table .quantity-controller.quantity-wrap').forEach(element => {

                var id = element.getAttribute('data-id');
                if(id){
                    element.querySelector('.input_quantity').addEventListener("change", function() {
                        cart_update(id, this.value)
                        console.log(this.value)
                    })
                }
                // end instant input change

               element.querySelector('.increment').addEventListener("click", function() {

                    $(this).parents('.quantity-controller.quantity-wrap').find('input[type="number"]').val(function(i, oldValue) {
                        let presetn_value = parseInt(oldValue || 0) + 1;
                        cart_update(id, presetn_value, 'true')
                        return presetn_value;
                    });
               })

               element.querySelector('.decrement').addEventListener("click", function() {
                    $(this).parents('.quantity-controller.quantity-wrap').find('input[type="number"]').val(function(i, oldValue) {

                        let presetn_value = parseInt(oldValue || 0) - 1;
                        if(presetn_value < 0){
                             presetn_value = 0;

                        }
                        if(oldValue != presetn_value){
                            cart_update(id, presetn_value, 'true')
                        }
                        return presetn_value;
                    });
               })


            });



        }





        function cart_update(id, quantaty, update_not_site = 'false'){
            $.ajax({
                type: 'get',
                url:'{{ route('add_to_cart') }}',
                data:{
                    'product_id': id,
                    'quantity' : quantaty

                },
                success:function(data){
                    if(update_not_site == 'true'){
                        setTimeout(() => {
                            cart_product_view();
                        },500)
                        console.log('true')
                    }else{
                        console.log('false')
                        update_side_cart();
                    }
                    setTimeout(() => {
                        load_cart_and_wishlist();
                    },500)
                }
            })
        }

        function remove_cart(id, size = null){
            $.ajax({
                type: 'get',
                url:'{{ route('add_to_cart') }}',
                data:{
                    'product_id': id,
                    'type' : 'remove_cart',
                    'size' : size

                },
                success:function(data){
                    update_side_cart();
                    setTimeout(() => {
                        load_cart_and_wishlist();
                    },500)
                }
            })
        }

        function add_to_compareList(id, type = null){

            if(type == null){
                $.ajax({
                    type: 'get',
                    url:'{{ route('add_to_compareList') }}',
                    data:{
                        'product_id': id,
                    },
                    success:function(data){
                        flasher.success("Successfully added compare list");
                        setTimeout(() => {
                            load_cart_and_wishlist();
                        },500)
                    }
                })

            }else{
                $.ajax({
                    type: 'get',
                    url:'{{ route('add_to_compareList') }}',
                    data:{
                        'product_id': id,
                        'remove_list': true,
                    },
                    success:function(data){
                        flasher.warning('Successfully removed compare list');
                        wishlist_data()
                        setTimeout(() => {
                            load_cart_and_wishlist();
                        },500)
                    }
                })

            }
        }




        function price_change(thi){
            // console.log(thi)
            // console.log(456)
            $('.name_price input').val($(thi).data('price'));
            $('.name_price_old input').val($(thi).data('old_price'));
            price_calculation_change_option(thi)
        }

        function data_unit_and_variant_check(){

            if($('.product-text-container_fornt .option').length > 0){
                var items_var = $('.product-text-container_fornt .option:first-child input');
                items_var.prop('checked', true);

            }
            if($('.option-list .option').length > 0){
                var items_var = $('.option-list .option:first-child input');
                items_var.prop('checked', true);

            }
        }


        function price_calculation_change_option(thi){
            var quantity = $(thi).parents('.product_description_parents').find('.unit_change input').val();
            var inp_price = $(thi).parents('.product_description_parents').find('.name_price input').val();

            var inp_price_old =  $(thi).parents('.product_description_parents').find('.name_price_old input').val();

            $(thi).parents('.product_description_parents').find('.name_price span').html(quantity * inp_price);
            $(thi).parents('.product_description_parents').find('.name_price_old span').html(quantity * inp_price_old);

            $(thi).parents('.product_description_parents').find('.price_discount span').html(calculateDiscount(inp_price_old,inp_price))


            temp_total_price()
        }


        function calculateDiscount(oldPrice, sellingPrice) {
            var discount =  ((oldPrice - sellingPrice) * 100) / oldPrice;
            return discount.toFixed(2);
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

            temp_total_price()

        }

        function temp_total_price(){
            var total = 0;
            if($('.total_price_temp').length > 0){

                var quantity = $('.product_description_parents').find('.input_quantity').val();
                var inp_price = $('.product_description_parents').find('.name_price input').val();
                    total = quantity * inp_price;
               

                $('.total_price_temp').html(total);
                // console.log('not found'+total)
            }
            
        }

        temp_total_price()


        



    </script>



{!! settings('custom_js_footer_code', 45) !!}
{!! settings('custom_css__footer_code', 45) !!}
