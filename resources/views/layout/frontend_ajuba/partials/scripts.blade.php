
    <!-- Jquery Js -->
    <script src="{{ asset('assets/frontend/js/vendor/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/jquery-3.6.3.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/slick.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/jquery-validator.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/jquery.countdown.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/vendor/countryCode.js') }}"></script>

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
                                qunataty_inc_dec()
                            }
                        })
                    })
                });
        }
        quick_view();



        function add_to_cart(thi){

            if ($(thi).data('quantaty')) {
                var quantaty = $(thi).closest('.modal').find('input.qunataty_number').val();
                // console.log(quantaty);
                $.ajax({
                    type: 'get',
                    url:'{{ route('add_to_cart') }}',
                    data:{
                        'product_id': $(thi).data('id'),
                        'quantity' : quantaty

                    },
                    success:function(data){
                        console.log(data)
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
                        console.log(data)
                    }
                })
            }



        }
    </script>


    <script>


        // Initialize EventSource with the device ID load data current session
        var eventsource = new EventSource("{{ url('cart_and_wishlist') }}");

        eventsource.onmessage = function(event) {
            try {
                let data = JSON.parse(event.data);

                document.querySelector('.cart .items_added').innerHTML = data.front_product;
                document.querySelector('#sidebar-cart .cart_items').innerHTML = data.front_product;

            } catch (error) {
                console.error('Error parsing message data:', error);
            }
        };






        document.querySelector('.items_icon_parents').addEventListener('click', function(){
            update_side_cart();
        });


        function update_side_cart(){
            $.ajax({
                type:'get',
                url:'{{ url('side_cart_info')}}',
                success:function(data){
                    // console.log(data)
                    $('.shoping_content').html(data);
                    qunataty_inc_dec()
                    setTimeout(() => {
                        cart_init_sidebar()
                    }, 700);
                }

            })
        }


        function qunataty_inc_dec(){

            $(".decrement").on("click", function () {
                var qtyInput = $(this).closest(".quantity-wrap").children(".number");
                var qtyVal = parseInt(qtyInput.val());
                if (qtyVal > 0) {
                qtyInput.val(qtyVal - 1);
                }
                cart_update($(this).closest('li').data('id'), qtyInput.val());
            });
            $(".increment").on("click", function () {
                var qtyInput = $(this).closest(".quantity-wrap").children(".number");
                var qtyVal = parseInt(qtyInput.val());
                qtyInput.val(parseInt(qtyVal + 1));

                cart_update($(this).closest('li').data('id'), qtyInput.val());
            });

        }


        function cart_init_sidebar(){
            document.querySelectorAll('#sidebar-cart li').forEach(element => {
            var id = element.getAttribute('data-id');

            element.querySelector('.qunataty_input').addEventListener("change", function() {
                    cart_update(id, this.value)
                })
            });
        }


        function cart_update(id, quantaty){
            $.ajax({
                        type: 'get',
                        url:'{{ route('add_to_cart') }}',
                        data:{
                            'product_id': id,
                            'quantity' : quantaty

                        },
                        success:function(data){
                            update_side_cart();
                        }
                    })
        }

    </script>
