@php
$payment_methods = \App\Models\payment\PaymentCredential::where('status', 1)->get();
@endphp




    <form action="javascript:void(0)" method="post" class="contact-form">

        <!-- Shipping Method -->
        <div class="title-row title-row-2 bg-white mb-16">
            <h5>Payments Methods</h5>
        </div>
        <div class="shipping-radio-container bg-white mb-40">

            <div class="row">
                @foreach ( $payment_methods as $key => $methods)
                <div class="col-md-6 plans mb-16">
                    <label class="plan basic-plan" for="basicpay{{ $methods->id }}">
                        <input type="radio" name="plan" id="basicpay{{ $methods->id }}" value="{{ $methods->id }}" @if($key == 0) checked @endif   >
                        <span class="plan-content">
                            <img src="{{ $methods->upload_id ?? 0 }}" alt="">
                            <span class="plan-details">
                                <span class="h6 fw-500 dark-black">{{ $methods->provider }}</span>
                                {{-- <span class="light-gray d-block">Delivery, Tomorrow</span> --}}
                            </span>
                            {{-- <span class="fw-500 dark-black">$1.00</span> --}}
                        </span>
                    </label>

                </div>
                @endforeach
            </div>


        </div>
        <!-- Shipping Method -->
    </form>



<!-- Payment Method -->
