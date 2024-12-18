@extends('frontend.protfilio_theme._profile.master')

@section('profile')
<section class="cart py-40">
    <div class="container-fluid">
        <div class="row">
            <div class="col-8">
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
                            <tr class="table-row">
                                <td class="pd">
                                    <div class="product-detail-box">
                                        <div class="cus-checkBox">
                                            <input type="checkbox" id="box1">
                                            <label for="box1" class="light-gray"></label>
                                        </div>
                                        <a href="#" onclick="pos_remove_cart(1,0)" class="h5 dark-black"><i
                                                class="fal fa-times"></i></a>
                                        <div class="img-block">
                                            <a href="shop-grid-2.html"><img
                                                    src="http://192.168.0.50/pos/public/uploads/1859069720121067978.jpg"
                                                    alt=""></a>
                                        </div>
                                        <div class="d-block text-start">
                                            <h6><a href="shop-grid-2.html">Test Product</a></h6>
                                            <div class="small mb-2" style="display:none">
                                                - size: <br>

                                            </div>
                                        </div>

                                    </div>
                                </td>
                                <td>
                                    <p class="fw-500"> <span class="light-gray qtyPrice">300(+ 0) = 300</span></p>
                                </td>
                                <td>
                                    <div class="quantity-controller quantity-wrap">
                                        <input onclick="product_counterUP(this, '-')" class="decrement"
                                            type="button" value="-">
                                        <input type="text" name="quantity" value="1" maxlength="2"
                                            size="1" class="input_quantity">
                                        <input onclick="product_counterUP(this, '+')" class="increment"
                                            type="button" value="+">
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-500">300</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>


                </div>

                <div class="table-bottom-row bg-white">
                    <a href="http://192.168.0.50/pos" class="cus-btn">Continue Shopping</a>
                    <form action="checkout.html" method="post"
                        class="contact-form d-flex align-items-center gap-16" novalidate="novalidate">
                        <input type="number" class="form-control" placeholder="Coupon Code" name="code"
                            id="cpCode">
                        <button type="submit" class="cus-btn">Apply Now</button>
                    </form>
                </div>
            </div>
            <div class="col-4">
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
                            <a href="http://192.168.0.50/pos/checkout" class="cus-btn active-btn">PROCEED TO
                                CHECKOUT</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
