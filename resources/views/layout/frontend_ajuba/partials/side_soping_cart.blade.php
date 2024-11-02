<aside id="sidebar-cart">
    <div class="title-cart-block mb-32 bg-lightest-gray">
        <h6>Shopping Cart (02)</h6>
        <a href="#" class="close-button close-popup"><span class="close-icon">X</span></a>
    </div>
    <ul class="product-list p-24">
        <li class="product-item mb-24">
            <span class="item-image">
                <img src="{{asset('uploads/')}}/images/cart-image-1.png" alt="Product Photo">
            </span>
            <div class="product-text">
                <div class="prod-title mb-16">
                    <h6>Gaming Headphone</h6>
                    <a href="javascript:;" class="cancel">
                        <img src="{{asset('uploads/')}}/images/cancel.png" alt="">
                    </a>
                </div>
                <div class="prod-desc">
                    <div>
                        <p class="fw-500 mb-8">Quantity: 1</p>
                        <p class="fw-500">$30.00</p>
                    </div>
                    <div class="quantity quantity-wrap d-inline-flex">
                        <div class="input-area quantity-wrap">
                            <input class="decrement" type="button" value="-">
                            <input type="text" name="quantity" value="1" maxlength="2" size="1"
                                class="number">
                            <input class="increment" type="button" value="+">
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li class="hr-line mb-24"></li>
        <li class="product-item mb-24">
            <span class="item-image">
                <img src="{{asset('uploads/')}}/images/cart-image-2.png" alt="Product Photo">
            </span>
            <div class="product-text">
                <div class="prod-title mb-16">
                    <h6>Samsung S21 Ultra</h6>
                    <a href="javascript:;" class="cancel">
                        <img src="{{asset('uploads/')}}/images/cancel.png" alt="">
                    </a>
                </div>
                <div class="prod-desc">
                    <div>
                        <p class="fw-500 mb-8">Quantity: 1</p>
                        <p class="fw-500">$350.00</p>
                    </div>
                    <div class="quantity quantity-wrap d-inline-flex">
                        <div class="input-area quantity-wrap">
                            <input class="decrement" type="button" value="-">
                            <input type="text" name="quantity" value="1" maxlength="2" size="1"
                                class="number">
                            <input class="increment" type="button" value="+">
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li class="hr-line mb-24"></li>
    </ul>
    <div class="price-total p-24">
        <span class="h5">SUBTOTAL</span>
        <span class="h5">$281.98</span>
    </div>
    <div class="hr-line mb-24"></div>
    <div class="action-buttons p-24">
        <a href="cart.html" class="cus-btn-2">VIEW CART</a>
        <a href="checkout.html" class="cus-btn active-btn">CHECKOUT</a>
    </div>
</aside>
<div id="sidebar-cart-curtain" class="close-popup"></div>
