@php
    $checkout_page = \App\Models\Page::where('status', 1)->where('page_type', 'checkout')->first();
    $home_page = \App\Models\Page::where('status', 1)->where('page_type', '')->first();

    if(!isset($view_page)){
        $view_page = \App\Models\Page::where('page_type', 'view')->first();
    }


@endphp
<main class="main-wrapper bg-lightest-gray">

    <!-- Title Banner Start -->

    <!-- Title Banner End -->

    <!-- Cart Area Start -->
    <section class="cart py-40">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-8">
                    <div class="">
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

                    </div>

                    <div class="table-bottom-row bg-white">
                        <a href="{{ url($home_page->slug) }}" class="cus-btn">Continue Shopping</a>
                        <form action="checkout.html" method="post" class="contact-form d-flex align-items-center gap-16">
                            <input type="number" class="form-control" placeholder="Coupon Code" name="code" id="cpCode">
                            <button type="submit" class="cus-btn">Apply Now</button>
                        </form>
                    </div>
                </div>
                <div class="col-xl-4 subtotal_cart">
                    {{-- load by ajax --}}
                </div>
            </div>
        </div>
    </section>
    <!-- Cart Area End -->


</main>


@push('js')
<script>
  function format_cart_items(data){
    // console.log('removed');
            var html_data = '';

            // console.log(data['product'])
            if(typeof(data['product']) == 'object'){


            Object(data['product']).forEach((element, index)=>{

                html_data+=`

                            <tr class="table-row  border-top-1">
                                    <td class="pd">
                                        <div class="product-detail-box">
                                            <a href="javascript:void(0)" onclick="pos_remove_cart(${element.product.id},${element.size})" class="h5 dark-black"><i class="fal fa-times"></i></a>
                                            <div class="img-block">
                                                <a href="{{ $view_page->slug }}?slug=${element.product.slug}"><img src="${element.product.image_url}" alt=""></a>
                                            </div>

                                            <div class="d-block text-start">
                                                <h6><a href="{{ $view_page->slug }}?slug=${element.product.slug}">${element.product.name}</a></h6>


                                            </div>

                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-500"> <span class="light-gray qtyPrice">{{ settings('currency_symbol', 9) }}  ${element.cal_total_with_vat.toFixed(2)} </span></p>
                                    </td>
                                    <td>
                                        <div class="quantity-controller quantity-wrap" data-id="${element.product.id}">
                                            <input class="decrement" type="button" value="-">
                                            <input type="number" min="0" name="quantity" value="${element.quantity}" maxlength="2" size="1" class="input_quantity" style="width: 54px;">
                                            <input class="increment" type="button" value="+">
                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-500">{{ settings('currency_symbol', 9) }} ${element.single_subtotal.toFixed(2)}</p>

                                    </td>
                                </tr>
                                  `;


                                  if(element.product_variant){
                                    var variant_option = JSON.parse(element.product.variant_option);
                                    //console.log(variant_option.variant_details_key)

                                    html_data+=` <tr class="table-row">
                                        <td colspan="4">
                                            <div class="product-detail-box_heading">
                                        `;

                                        //  console.log(element.product_variant)

                                        for(var i = 0; i < variant_option.variant_key.length; i++){
                                            // let key = variant_option.variant_key[i];
                                         //   console.log(variant_option.variant_key[0])
                                            html_data+=`
                                            <div>
                                                ${variant_option.variant_key[i]}
                                            </div>
                                            `
                                        }
                                        for(var i = 0; i < variant_option.variant_details_key.length; i++){
                                            let key = variant_option.variant_details_key[i];
                                            html_data+=`
                                            <div>
                                                ${key}
                                            </div>
                                            `
                                        }


                                        html_data+=`
                                        </div>
                                        <div class="product-detail-box_heading">
                                            `;



                                            // Form key name variant product
                                            let variant_key = element.product_variant.name.split(',');
                                                for(var i = 0; i < variant_key.length; i++){
                                                    html_data+=`
                                                    <div>
                                                        ${variant_key[i]}
                                                    </div>
                                                    `
                                            }
                                            // End product name


                                            // Form key value variant product
                                            for(var i = 0; i < 50; i++){
                                                let key = `details_key_value_${i}`;
                                                if(element.product_variant[key]){
                                                    html_data+=`
                                                    <div>
                                                        <p class="fw-500">${element.product_variant[key]}</p>
                                                    </div>
                                                    `
                                                }else{
                                                    break;
                                                }
                                                // Form key value variant product
                                            }

                                    html_data+=`
                                    </div>
                                    </td></tr>`;

                                    }





                // console.log(element)
            })

        }else{
            html_data = `<a class="border text-center p-5 d-block bg-success text-light" href="{{ url('/') }}">Not found any cart product. Continue Shopping</a>`
        }
            $('.cart-table tbody').html(html_data)
        }




        function format_cart_subtotal(data){

            // console.log(data);
            let html_data = '';
            html_data+=`<div class="checkout-box bg-semi-white mt-xl-0 mt-48">
                        <div class="checkout-title text-center mb-16">
                            <h5>Cart Total</h5>
                        </div>
                        <div class="bottom-box">
                            <div class="title-price mb-16">
                                <h6>Subtotal</h6>
                                <h6 class="light-gray">{{ settings('currency_symbol', 9) }} ${data.subtotal.price.toFixed(2)}</h6>
                            </div>

                            <div class="hr-line mb-16"></div>
                            <div class="title-price mb-16">
                                <h6>Coupon Discount</h6>
                                <h6 class="light-gray">{{ settings('currency_symbol', 9) }} ${data.subtotal.coupon.toFixed(2)}</h6>
                            </div>

                            <div class="hr-line mb-16"></div>
                            <div class="title-price mb-16">
                                <h5 class="color-primary">TOTAL</h5>
                                <h5 class="color-primary">{{ settings('currency_symbol', 9) }} ${data.subtotal.coupon_without_price.toFixed(2)}</h5>
                            </div>
                            <div class="hr-line mb-16"></div>
                            <div class="text-end">
                                <a href="{{ url($checkout_page->slug) }}" class="cus-btn active-btn">PROCEED TO CHECKOUT</a>
                            </div>
                        </div>
                    </div>`;
                    $('.subtotal_cart').html(html_data)
                    setTimeout(() => {
                        cart_page_increment_decrement()
                    },500)
        }

     function cart_product_view(){
            $.ajax({
                type:'get',
                url:'{{ route('cart_details') }}?source_type=front_product',
                success:function(data){
                    // console.log(data);
                    format_cart_items(data)
                    format_cart_subtotal(data)

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

<style>
    .product-detail-box_heading {
    display: flex;
    padding: 4px 32px;
    display: flex;
    gap: 15px;
    justify-content: space-around;
}

.product-detail-box_heading div {
    flex: 1 1 100px;
    border: 1px solid #eee;
    text-align: left;
    padding: 6px;
    background: #110202;
    color: white;
    border-radius: 4px;
    text-align: center;
    font-weight: 700;
}

tr.table-row.border-top-1 {
    border-top: 2px solid #a2a2a2;
}

.table-row:not(.border-top-1) td{
    padding-top: 0px !important;
}
</style>

@endpush
