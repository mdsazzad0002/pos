@php
if(!isset($profile_dashboard )){
    $profile_dashboard  = \App\Models\Page::where('status', 1)->where('page_type', 'profile_dashboard')->first();
}
if(!isset($register_page)){
    $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
}
if(auth()->guard('customer')->user()){
    echo '<script>window.location.href="'.$profile_dashboard->slug.'"</script>';
}

@endphp
<main class="main-wrapper bg-lightest-gray">
    <section class="my-account py-40">
        <div class="container-fluid">
            <div class="row row-gap-4">
                <div class="col-xl-3"></div>
                <div class="col-xl-6 col-12">
                    <div class="account account-1">
                        <h4 class="mb-12">Login</h4>
                        <p class="mb-32 light-gray">Please Enter your details to Sign In.</p>
                        <form id="loginForm" class="contact-form" method="POST" action="{{ route('customer_login')  }}" data-redirect="{{ url($profile_dashboard->slug) }}">
                            @csrf
                            <div class="row">
                                <div class="col-sm-6">
                                    <a href="{{ route('google.redirect') }}" class="link-btn fw-500"><img src="assets/media/icons/google-icon.png" alt=""> Login with Google</a>
                                </div>
                                <div class="col-sm-6">
                                    <a href="{{ route('facebook.redirect') }}" class="link-btn fw-500 mt-sm-0 mt-16"><img src="assets/media/icons/fb-icon.png" alt=""> Login with Facebook</a>
                                </div>

                                <div class="col-sm-12">
                                    <p class="or mb-12">Or</p>
                                </div>
                                <div class="col-sm-12">
                                    <div class="input-block mb-16">
                                        <input type="email" id="email" name="email" autocomplete="off" class="form-control" placeholder="Your Email" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="input-block mb-16">
                                        <input
                                            type="password"
                                            id="password"
                                            name="password"
                                            autocomplete="off"
                                            class="form-control signPassword"
                                            placeholder="Password"
                                            required
                                        />

                                        <i class="toggleSign-password bi   bi-eye-slash hello_eye_pass" style="cursor: pointer;"></i>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="d-flex justify-content-between">
                                        <div class="cus-checkBox mb-32">
                                            <input type="checkbox" id="remember">
                                            <label for="remember" class="light-gray">Remember me</label>
                                        </div>
                                        <a href="#" class="color-primary fw-500">Forget Password</a>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="d-flex justify-content-between">
                                        <button type="submit" class="cus-btn-3 mb-16 sign-submit-btn">Sign In</button>
                                        @if ($register_page)
                                            <a href="{{ url($register_page->slug) }}" class="cus-btn-3 mb-16 sign-submit-btn">Register</a>
                                        @endif
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-3"></div>
            </div>
        </div>
    </section>
</main>
<!-- Main Sections -->
@push('js')

<script>
    // Register account
    document.addEventListener("DOMContentLoaded", () => {
        const togglePassword = document.querySelector(".toggle-password");
        const passwordInput = document.querySelector(".password-input");

        togglePassword.addEventListener("click", () => {
            togglePassword.classList.toggle('bi-eye')
            const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
            passwordInput.setAttribute("type", type);
        });
    });

    // end Register account
</script>


<script>
// Login account
document.addEventListener("DOMContentLoaded", () => {
    const toggleSignPassword = document.querySelector(".toggleSign-password");
    const passwordSignInput = document.querySelector(".signPassword");

    toggleSignPassword.addEventListener("click", () => {

        toggleSignPassword.classList.toggle('bi-eye')
        const isPassword = passwordSignInput.getAttribute("type") === "password";
        passwordSignInput.setAttribute("type", isPassword ? "text" : "password");

        if (isPassword) {
            toggleSignPassword.style.fill = "#677c757d";
        } else {
            toggleSignPassword.style.fill = "#141516";
        }
    });
});
// end Login account
</script>
@endpush



@push('css')
    <style>
        i.hello_eye_pass.bi.bi-eye-slash {
            position:absolute;
            right:20px;
            top:50%;
            transform:translateY(-50%);
            font-size:22px;
        }
    </style>
@endpush



