
@php
    $profile_dashboard = \App\Models\Page::where('status', 1)->where('page_type', 'profile_dashboard')->first();
    $profile_location = \App\Models\Page::where('status', 1)->where('page_type', 'profile_location')->first();
    if(!isset($register_page)){
        $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
    }

    if(!auth()->guard('customer')->user()){
        echo '<script>window.location.href="'.url($register_page->slug).'"</script>';
        exit();
    }
    $customer = auth()->guard('customer')->user();

@endphp
{{-- @dd($profile_location); --}}

@include('frontend.protfilio_theme._variant_manage.page_title',['title'=> 'Profile'])
<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-4 profile_sidebar">
            <ul>
                <li class="form__li">
                    <form action="{{ route('customer_profile_pic.update', $customer->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <label for="update_profile_pic">
                            <img src="{{ dynamic_asset($customer->upload_id ?? 0) }}" alt="">
                            <input type="file" id="update_profile_pic"  hidden name="profile_pic">
                        </label>
                    </form>
                    <h3>{{ $customer->name ?? '' }}</h3>
                    <p>{{ $customer->phone ?? '' }}</p>
                    <p>{{ $customer->email ?? '' }}</p>
                </li>
                @if($profile_dashboard)
                    <li>
                        <a class="{{ Request::is($profile_dashboard->slug) ? 'active' : '' }}" href="{{ $profile_dashboard->slug }}">{{ $profile_dashboard->name }}</a>
                    </li>
                @endif
                <li>
                    <a href="#">Cart Item</a>
                </li>
                <li>
                    <a href="#">Wishlist</a>
                </li>
                <li>
                    <a href="#">Checkout item</a>
                </li>
                <li>
                    <a href="#">Payment Information</a>
                </li>
                @if($profile_location)
                    <li>
                        <a class="{{ Request::is($profile_location->slug) ? 'active' : '' }}" href="{{ $profile_location->slug }}">{{ $profile_location->name }}</a>
                    </li>
                @endif
                <li>
                    <a href="{{ route('customer_logout') }}">Logout</a>
                </li>
            </ul>
        </div>
        <div class="col-lg-8">
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
    padding:15px 15px;
    border-bottom:1px dotted #868686;
    display:block;
    border-left:4px solid #006937;

}

.profile_sidebar ul li a.active,
.profile_sidebar ul li a:hover{
    background:#006937;

    color:white;
}
.profile_sidebar  .form__li{
    text-align: center;
    padding: 15px;
    border: 4px solid #006937;
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
