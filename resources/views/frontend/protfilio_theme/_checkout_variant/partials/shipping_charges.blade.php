         @php
            $shipping_charges = \App\Models\ShippingCharge::where('status', 1)->get();
        @endphp

        <form action="javascript:void(0)" method="post" class="contact-form mt-16"></form>
            <!-- Shipping Method -->
             <div class="title-row title-row-2 bg-white mb-16">
                <h5>Delivery Charge</h5>
            </div>
            <div class="shipping-radio-container bg-white mb-40">

                <div class="row">
                 @foreach ( $shipping_charges as $key =>  $methods)
                    <div class="col-md-6 plans mb-16">
                        <label class="plan basic-plan" for="basic{{ $methods->id }}">
                            <input  type="radio" name="shipping_charge" id="basic{{ $methods->id }}" @if($key == 0) checked @endif  value="{{$methods->id}}">
                            <span class="plan-content">
                                <img src="{{ $methods->upload_id ?? 0 }}" alt="">
                                <span class="plan-details">
                                    <span class="h6 fw-500 dark-black">{{ $methods->name }}</span>
                                    <br>
                                    <span><span class="fw-500 dark-black">{{ settings('currency_symbol', 9) }} {{ $methods->amount }}</span></span>
                                </span>
                            </span>
                        </label>

                    </div>
                    @endforeach
                </div>


            </div>
            <!-- Shipping Method -->
        </form>
