
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
