
<div class="container">
    <div class="row">
        <div class="col-lg-4 profile_sidebar">
            <ul>
                <li class="form__li">
                    <form action="">
                        <label for="profile_pic">
                            <img src="{{ dynamic_asset(0) }}" alt="">
                            <input type="file" id="profile_pic" hidden name="profile_pic">
                        </label>
                    </form>
                    <h3>User Name</h3>
                    <p>Phone Number</p>
                    <p>Email</p>
                </li>
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
                <li>
                    <a href="#">Location</a>
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

.profile_sidebar ul li a:hover{
    background:#006937;

    color:white;
}
.profile_sidebar  .form__li{
    text-align: center;
    padding: 15px;
}
</style>

