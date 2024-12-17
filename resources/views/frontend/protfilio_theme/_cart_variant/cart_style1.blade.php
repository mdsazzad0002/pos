@php
    $checkout_page = \App\Models\page::where('status', 1)->where('page_type', 'checkout')->first();
    $home_page = \App\Models\page::where('status', 1)->where('page_type', '')->first();

@endphp
<main class="main-wrapper bg-lightest-gray">

    <!-- Title Banner Start -->

    <!-- Title Banner End -->

    <!-- Cart Area Start -->
    <section class="cart py-40">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-8">
                    <div class="d-lg-block d-none">
                        <table class="cart-table mb-16">
                            <thead>
                                <tr>
                                    <th>Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                        </table>
                        <table class="cart-table">
                            <tbody>



                            </tbody>
                        </table>
                        {{-- <table class="cart-table">
                            <tbody>
                                <tr class="table-row">
                                    <td class="pd">
                                        <div class="product-detail-box">
                                            <div class="cus-checkBox">
                                                <input type="checkbox" id="box2">
                                                <label for="box2" class="light-gray"></label>
                                            </div>
                                            <a href="" class="h5 dark-black"><i class="fal fa-times"></i></a>
                                            <div class="img-block">
                                                <a href="shop-grid-2.html"><img src="assets/media/images/cart-image-2.png" alt=""></a>
                                            </div>
                                            <div class="d-block text-start">
                                                <h6><a href="shop-grid-2.html">Samsung S21 Ultra</a></h6>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-500"> $15.00</p>
                                    </td>
                                    <td>
                                        <div class="quantity-controller quantity-wrap">
                                            <input class="decrement" type="button" value="-">
                                            <input type="text" name="quantity" value="1" maxlength="2" size="1"
                                                class="number">
                                            <input class="increment" type="button" value="+">
                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-500">$15.00</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table> --}}

                    </div>
                    {{-- <div class="d-lg-none d-block">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="cart-item-block mb-32">
                                    <div class="img-block mb-16">
                                        <a href="product-detail-1.html"><img src="assets/media/images/cart-image-1.png" alt=""></a>
                                        <a href="" class="cross"><i class="fal fa-times"></i></a>
                                    </div>
                                    <h6 class="mb-24">Gaming Headphone</h6>
                                    <ul class="unstyled detail">
                                        <li>
                                            <h6 class="">Price</h6>
                                            <h6 class="">$85.00</h6>
                                        </li>

                                        <li>
                                            <h6 class="">Quantity</h6>
                                            <div class="quantity-controller quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="1" maxlength="2" size="1"
                                                    class="number">
                                                <input class="increment" type="button" value="+">
                                            </div>
                                        </li>
                                        <li>
                                            <h6 class="">Subtotal</h6>
                                            <h6 class="">$85.00</h6>
                                        </li>
                                        <li>
                                            <a href="cart.html" class="cus-btn active-btn">Add to Cart</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="cart-item-block mb-32">
                                    <div class="img-block mb-16">
                                        <a href="product-detail-1.html"><img src="assets/media/images/cart-image-2.png" alt=""></a>
                                        <a href="" class="cross"><i class="fal fa-times"></i></a>
                                    </div>
                                    <h6 class="mb-24">Samsung S21 Ultra</h6>
                                    <ul class="unstyled detail">
                                        <li>
                                            <h6 class="">Price</h6>
                                            <h6 class="">$10.00</h6>
                                        </li>

                                        <li>
                                            <h6 class="">Quantity</h6>
                                            <div class="quantity-controller quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="1" maxlength="2" size="1"
                                                    class="number">
                                                <input class="increment" type="button" value="+">
                                            </div>
                                        </li>
                                        <li>
                                            <h6 class="">Subtotal</h6>
                                            <h6 class="">$10.00</h6>
                                        </li>
                                        <li>
                                            <a href="cart.html" class="cus-btn active-btn">Add to Cart</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    <div class="table-bottom-row bg-white">
                        <a href="{{ url($home_page->slug) }}" class="cus-btn">Continue Shopping</a>
                        <form action="checkout.html" method="post" class="contact-form d-flex align-items-center gap-16">
                            <input type="number" class="form-control" placeholder="Coupon Code" name="code" id="cpCode">
                            <button type="submit" class="cus-btn">Apply Now</button>
                        </form>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="checkout-box bg-semi-white mt-xl-0 mt-48">
                        <div class="checkout-title text-center mb-16">
                            <h5>Cart Total</h5>
                        </div>
                        <div class="bottom-box">
                            <div class="title-price mb-16">
                                <h6>Subtotal</h6>
                                <h6 class="light-gray">$80.00</h6>
                            </div>
                            <div class="hr-line mb-16"></div>
                            <div class="title-price mb-16">
                                <h6>Standard Delivery</h6>
                                <h6 class="light-gray">$5.00</h6>
                            </div>
                            <div class="hr-line mb-16"></div>
                            <div class="title-price mb-16">
                                <h6>Coupon Discount</h6>
                                <h6 class="light-gray">$-5.00</h6>
                            </div>
                            <div class="hr-line mb-80"></div>
                            <div class="hr-line mb-16"></div>
                            <div class="title-price mb-16">
                                <h5 class="color-primary">TOTAL</h5>
                                <h5 class="color-primary">$80.00</h5>
                            </div>
                            <div class="hr-line mb-16"></div>
                            <div class="text-end">
                                <a href="{{ url($checkout_page->slug) }}" class="cus-btn active-btn">PROCEED TO CHECKOUT</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Cart Area End -->


</main>


@push('js')
<script>
  function format_cart_items(data){
            var html_data = '';

            // console.log(data['product'])
            Object(data['product']).forEach((element, index)=>{

                html_data+=`
                            <tr class="table-row">
                                    <td class="pd">
                                        <div class="product-detail-box">
                                            <div class="cus-checkBox">
                                                <input type="checkbox" id="box1">
                                                <label for="box1" class="light-gray"></label>
                                            </div>
                                            <a href="#" onclick="pos_remove_cart(${element.product.id},${element.size})" class="h5 dark-black"><i class="fal fa-times"></i></a>
                                            <div class="img-block">
                                                <a href="shop-grid-2.html"><img src="${element.product.image_url}" alt=""></a>
                                            </div>
                                            <div class="d-block text-start">
                                                <h6><a href="shop-grid-2.html">${element.product.name}</a></h6>
                                                    <div class="small mb-2" style="${element.product_variant ? 'display:block': 'display:none'}">
                                                        - size: ${element.product_variant ? element.product_variant.name : ''}<br>

                                                    </div>
                                            </div>

                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-500"> <span class="light-gray qtyPrice">${element.product_variant ? element.product_variant.selling_price :  element.product.selling_price}(+ ${element.vat_price}) = ${element.vat_with_price}</span></p>
                                    </td>
                                    <td>
                                        <div class="quantity-controller quantity-wrap">
                                            <input onclick="product_counterUP(this, '-')" class="decrement" type="button" value="-">
                                            <input type="text" name="quantity" value="${element.quantity}" maxlength="2" size="1" class="input_quantity">
                                            <input onclick="product_counterUP(this, '+')" class="increment" type="button" value="+">
                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-500">${element.total_price}</p>
                                    </td>
                                </tr> `
                console.log(element)
            })
            $('.cart-table tbody').html(html_data)
        }



     function cart_product_view(){
            $.ajax({
                type:'get',
                url:'{{ route('cart_details') }}?source_type=front_product',
                success:function(data){
                    // data  = JSON.parse(data)
                    console.log(data);


                    // $('.subtotal_quantity').html(data.subtotal.quantity);
                    // $('.subtotal_tax').html(data.subtotal.total_vat);
                    // $('.subtotal_price').html(data.subtotal.price);
                    // $('.subtotal_tprice').html(data.subtotal.total_price);
                    // $('#grand_total').val(data.subtotal.total_price);

                    // if(data.subtotal.quantity == 0){
                    //     $('#newOrderTab').html('')
                    // }else{
                        format_cart_items(data)
                    // }
                }
            })
        }

        cart_product_view();


        function pos_remove_cart(id, size){
            // console.log(size)
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
                    'source_type' : 'front_product'

                },
                success:function(data){
                    cart_product_view()
                }
            })
        }


        function product_counterUP(thi, key) {
            var inputField = $(thi).siblings('.input_quantity');
            var inputValue = parseInt(inputField.val()) || 0;

            if (key === '+') {
                inputField.val(inputValue + 1);
            } else if (key === '-') {
                if (inputValue > 0) {
                    inputField.val(inputValue - 1);
                }
            }
        }

</script>

@endpush
