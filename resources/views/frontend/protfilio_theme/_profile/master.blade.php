
@php
    $profile_dashboard = \App\Models\Page::where('status', 1)->where('page_type', 'profile_dashboard')->first();
    $profile_location = \App\Models\Page::where('status', 1)->where('page_type', 'profile_location')->first();
    if(!isset($register_page)){
        $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
    }
    if(!isset($cart_page)){
        $cart_page = \App\Models\Page::where('status', 1)->where('page_type', 'cart')->first();
    }
    if(!isset($wishlist_page)){
        $wishlist_page = \App\Models\Page::where('page_type', 'wishlist')->first();
    }

    if(!isset($checkout_page)){
        $checkout_page = \App\Models\Page::where('page_type', 'checkout_page')->first();
    }

    if(!isset($payment_page)){
        $payment_page = \App\Models\Page::where('page_type', 'payment_page')->first();
    }

    if(!auth()->guard('customer')->user()){
        echo '<script>window.location.href="'.url($register_page->slug).'"</script>';
        exit();
    }
    $customer = auth()->guard('customer')->user();

@endphp


<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-4 profile_sidebar">


            <ul>
                <li class="form__li">
                    <button type="button" class="btn btn-primary customer_edit" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        <i class="fas fa-pencil"></i>
                      </button>

                    <form action="{{ route('customer_profile_pic.update', $customer->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <label for="update_profile_pic" class="update_profile_pic">
                            <img class="rounded rounded-circle" style="aspect-ratio:1/1; border: 2px solid var(--primary-color);" src="{{ dynamic_asset($customer->upload_id ?? 0) }}" alt="">
                            <input type="file" id="update_profile_pic"  hidden name="profile_pic">
                            <i class="fas fa-camera top-right-0"></i>
                        </label>
                    </form>
                    <h3>{{ $customer->name ?? '' }}</h3>
                    <p>{{ $customer->phone ?? '' }}</p>
                    <p>{{ $customer->email ?? '' }}</p>
                </li>
                @if($profile_dashboard)
                    <li>
                        <a class="{{ Request::is($profile_dashboard->slug) ? 'active' : '' }}" href="{{ url($profile_dashboard->slug) }}"><i class="bi bi-speedometer2"></i> {{ $profile_dashboard->name }}</a>
                    </li>
                @endif

                @if($cart_page)
                    <li>
                        <a href="{{ url($cart_page->slug) }}" class=""><i class="bi bi-basket-fill"></i> Cart Item</a>
                    </li>
                @endif

                @if($wishlist_page)
                <li>
                    <a href="{{ url($wishlist_page->slug) }}" class="{{ Request::is($wishlist_page->slug) ? 'active' : '' }}"><i class="bi bi-heart-fill"></i> Wishlist</a>
                </li>
                @endif

                @if($checkout_page)
                <li>
                    <a href="{{ url($checkout_page->slug) }}" class="{{ Request::is($checkout_page->slug) ? 'active' : '' }}"><i class="bi bi-border-all"></i> Checkout item</a>
                </li>
                @endif

                @if($payment_page)
                <li>
                    <a href="{{ url($payment_page->slug) }}" class="{{ Request::is($payment_page->slug) ? 'active' : '' }}"><i class="bi bi-wallet-fill"></i> Payment</a>
                </li>
                @endif

                @if($profile_location)
                    <li>
                        <a class="{{ Request::is($profile_location->slug) ? 'active' : '' }}" href="{{ url($profile_location->slug) }}"><i class="bi bi-geo-alt-fill"></i> {{ $profile_location->name }}</a>
                    </li>
                @endif
                <li>
                    <a href="{{ route('customer_logout') }}"><i class="bi bi-box-arrow-right"></i> Logout</a>
                </li>
            </ul>
        </div>
        <div class="col-lg-8">

            @if ($customer->v_status == 0)
            <div class="bg-warning p-2 rounded-1 d-flex justify-content-between align-items-center mb-2" style="    border-left: 4px solid var(--primary-color);">
                <div class="font-weight-bold">
                    <i class="bi bi-exclamation-triangle-fill text-white"></i> Please Verify your mail address.
                </div>
                <a class="btn btn-success" style="background: var(--primary-color);" href="{{url('customer/verify_mail_send')}}"> <i class="bi bi-envelope-arrow-up text-white"></i> Send Mail</a>

            </div>
            @endif
            @yield('profile')
        </div>
    </div>
</div>



<style>
.profile_sidebar{
    background: #eee;
}
.profile_sidebar{
    padding:0;

}
.profile_sidebar ul{
    list-style:none;
    padding:0;
    margin:0;

}

.profile_sidebar ul li a{
    border-bottom:1px dotted #868686;
    display:block;
    border-left:4px solid var(--primary-color);;

}

.profile_sidebar ul li a i,
.profile_sidebar ul li a{
        transition: .8s;
}

.profile_sidebar ul li a i{
    padding: 15px;
    display: inline-block;
    background: #eee;
    opacity: 0.8;
}

.profile_sidebar ul li a.active i,
.profile_sidebar ul li a:hover i,
.profile_sidebar ul li a.active,
.profile_sidebar ul li a:hover{
    background:var(--primary-color);
    color:white;
}
.profile_sidebar  .form__li{
    text-align: center;
    padding: 15px;
    border: 4px solid var(--primary-color);
}




label.update_profile_pic i.fas.fa-camera.top-right-0 {
    position: absolute;
    top: 50%;
    right: 50%;
    transform: translate(50%, 50%);
    font-size: 72px;
    cursor: pointer;
    opacity:0;
    color:var(--primary-color);
}



label.update_profile_pic{
    position: relative;
}

label.update_profile_pic *{
    transition:0.5s;
}

label.update_profile_pic:hover img.rounded.rounded-circle{
     opacity: 0.5;


}
label.update_profile_pic:hover i.fas.fa-camera.top-right-0{
    opacity:1;
}
.form__li{
    position: relative;
}
.form__li .customer_edit{
    position: absolute;
    top: 0;
    right: 0;
    z-index: 999;
}

#staticBackdrop .modal-content{
    width:550px;
}


@media (max-width:550px) {
    #staticBackdrop .modal-content{
        width:300px;
    }

}

</style>

<script>
    document.getElementById('update_profile_pic').addEventListener('change', function() {
        var form = this.closest('form');
        if (form) {
            form.submit();
        }
    });

 </script>


<!-- Button trigger modal -->

  <!-- Modal -->
  <div class="modal fade" id="staticBackdrop"  data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <form class="modal-content bg-white" style="" action="{{ route('customerUpdate', $customer->id) }}" method="post">

        @csrf
        @method('put')

        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Update Profile</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body d-flex flex-column">
            <label for="name" class="mb-2">
                Name <br/>
                <input type="text" name="name" class="form-control" value="{{ $customer->name }}">
            </label>
            <label for="phone" class="mb-2">
                Phone <br/>
                <input type="text" name="phone" class="form-control" value="{{ $customer->phone }}">
            </label>
            <label for="email" class="mb-2">
                email <br/>
                <input type="text" name="email" class="form-control" value="{{ $customer->email }}">
            </label>
            <label for="password"  class="mb-2">
                Password <br/>
                <input type="password" id="password" name="password" class="form-control" value="">
            </label>
            <label for="c_password"  class="mb-2">
                Confirm Password <br/>
                <input type="password" id="password" name="c_password" class="form-control" value="">
            </label>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save</button>
        </div>
      </form>
    </div>
  </div>
