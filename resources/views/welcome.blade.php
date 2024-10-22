{{-- Master Include  --}}
@extends('layout.frontend.master')

{{-- Define Site Title  --}}
@section('title', settings('dashboard_title', 10))


{{-- Content Extends  --}}
@section('content')




@include('frontend.setting.cookie.cookie')









@include('frontend.setting.messageing.takto')
@include('frontend.setting.apps.pwa')
<!--End of Tawk.to Script-->

@if(session('message'))
    <div class="alert alert-{{ session('message.status') }}">
        {{ session('message.message') }}
    </div>
@endif


<!-- Include Braintree Drop-In UI -->
<script src="https://js.braintreegateway.com/web/dropin/1.30.0/js/dropin.min.js"></script>


<div id="dropin-container"></div>
<button id="submit-button">Pay</button>

<script>
    var button = document.querySelector('#submit-button');

    // Fetch the client token from the backend
    fetch('baintree/generate-client-token').then(function (response) {
        {{--  console.log(response)  --}}
        return response.json();
    }).then(function (data) {
        // Initialize the Drop-In UI with the client token


        braintree.dropin.create({
            authorization: data.clientToken,
            container: '#dropin-container'
        }, function (err, instance) {
            button.addEventListener('click', function () {
                // Request payment method nonce from Drop-In UI
                instance.requestPaymentMethod(function (err, payload) {
                    if (err) {
                        console.error(err);
                        return;
                    }

                    // Send the nonce and payment information to the server
                    fetch('baintree/process-transaction', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        },
                        body: JSON.stringify({
                            payment_method_nonce: payload.nonce,
                            amount: '10.00' // Set the amount to charge
                        })
                    }).then(function (response) {
                        return response.json();
                    }).then(function (data) {
                        console.log(data);
                    });
                });
            });
        });
    });
</script>



<form action="{{ route('paypal.payment.purchase') }}" method="POST">
    @csrf
    <button type="submit">Pay Now</button>
</form>











@endsection
