<main class="main-wrapper bg-lightest-gray">

    <!-- Title Banner Start -->
    <section class="title-banner">
        <div class="container-fluid">
            <div class="banner-wrapper">
                <img src="assets/media/banner/left-image.png" alt="" class="banner-image1">
                <h1 class="dark-black fw-600">My Account</h1>
                <img src="assets/media/banner/right-image.png" alt="" class="banner-image2">
            </div>
        </div>
    </section>
    <!-- Title Banner End -->

    <section class="my-account py-40">
        <div class="container-fluid">
            <div class="row row-gap-4">
                <div class="col-xl-6">
                    <div class="account account-1">
                        <h4 class="mb-12">Login</h4>
                        <p class="mb-32 light-gray">Please Enter your details to Sign In.</p>
                        <form id="loginForm" class="contact-form">
                            @csrf
                            <div class="row">
                                <div class="col-sm-6">
                                    <a href="#" class="link-btn fw-500"><img src="assets/media/icons/google-icon.png" alt=""> Login with Google</a>
                                </div>
                                <div class="col-sm-6">
                                    <a href="#" class="link-btn fw-500 mt-sm-0 mt-16"><img src="assets/media/icons/fb-icon.png" alt=""> Login with Facebook</a>
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
                                        <input type="password" id="password" name="password" autocomplete="off" class="form-control" placeholder="Password" required>
                                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <g clip-path="url(#clip0_7949_46264)">
                                                <path d="M19.8898 10.3421C20.0368 10.1378 20.0368 9.86227 19.8898 9.65785C19.8451 9.5957 18.7753 8.11922 17.0388 6.62602L19.8898 10.3421ZM19.8898 10.3421C19.8451 10.4043 18.7753 11.8808 17.0388 13.374C16.0117 14.2571 14.9628 14.9625 13.9213 15.4705M19.8898 10.3421L6.33476 14.9827M2.96124 13.374L3.31779 12.9593L0.110303 10.3421C0.15499 10.4043 1.22472 11.8808 2.96124 13.374ZM2.96124 13.374L3.31781 12.9593M2.96124 13.374L3.31781 12.9593M3.31781 12.9593C3.32463 12.9652 3.33146 12.971 3.3383 12.9769C3.78259 13.3578 4.30002 13.7615 4.87535 14.1434C4.94379 14.1888 5.01304 14.2339 5.08309 14.2787L5.09608 14.287L5.10946 14.2946L5.99122 14.7983L6.16418 14.8971L6.17856 14.9054L6.19335 14.9128C6.23538 14.9339 6.27765 14.9549 6.32015 14.9756L6.07878 15.4705M3.31781 12.9593L5.73444 15.2904C5.83141 15.341 5.9444 15.3999 6.07878 15.4705M6.07878 15.4705L6.33476 14.9827M6.07878 15.4705C7.40507 16.1173 8.72437 16.4453 10 16.4453C11.2757 16.4453 12.595 16.1173 13.9213 15.4705M6.33476 14.9827C7.43018 15.5147 8.67705 15.8984 10 15.8984C11.3151 15.8984 12.56 15.5261 13.6814 14.9787L13.9213 15.4705M6.33476 14.9827L13.6814 14.9787L13.9213 15.4705M13.5053 9.93776C13.5053 11.8737 11.936 13.443 10 13.443C8.06414 13.443 6.49478 11.8737 6.49478 9.93776C6.49478 8.00186 8.06414 6.4325 10 6.4325C11.936 6.4325 13.5053 8.00186 13.5053 9.93776ZM13.9212 4.52961L13.9212 4.52972L13.9212 4.52961Z" stroke="#141516" stroke-width="1.25" />
                                            </g>
                                            <defs>
                                                <clipPath id="clip0_7949_46264">
                                                    <rect width="20" height="20" fill="white" />
                                                </clipPath>
                                            </defs>
                                        </svg>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="d-flex justify-content-between">
                                        <div class="cus-checkBox mb-32">
                                            <input type="checkbox" id="remember">
                                            <label for="remember" class="light-gray">Remember for 30 Days</label>
                                        </div>
                                        <a href="#" class="color-primary fw-500">Forget Password</a>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <button type="submit" class="cus-btn-3 mb-16 sign-submit-btn">Sign In</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="account">
                        <h4 class="mb-12">Register</h4>
                        <p class="mb-32 light-gray">Please Enter your detail to Sign Up.</p>
                        <form class="contact-form" id="registerForm">
                            @csrf
                            <div class="row">
                                <div class="col-sm-6">
                                    <a href="" class="link-btn fw-500"><img src="assets/media/icons/google-icon.png" alt=""> Login with Google</a>
                                </div>
                                <div class="col-sm-6">
                                    <a href="" class="link-btn fw-500 mt-sm-0 mt-16"><img src="assets/media/icons/fb-icon.png" alt=""> Login with Facebook</a>
                                </div>

                                <div class="col-sm-12">
                                    <p class="or mb-12">Or</p>
                                </div>
                                <div class="col-md-12">
                                    <div class="input-block mb-16">
                                        <input type="text" name="name" id="name" class="form-control" required placeholder="Name">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                            <path
                                                d="M10 0C7.09223 0 4.72656 2.36566 4.72656 5.27344C4.72656 8.18121 7.09223 10.5469 10 10.5469C12.9078 10.5469 15.2734 8.18121 15.2734 5.27344C15.2734 2.36566 12.9078 0 10 0ZM10 9.375C7.7384 9.375 5.89844 7.53504 5.89844 5.27344C5.89844 3.01184 7.7384 1.17188 10 1.17188C12.2616 1.17188 14.1016 3.01184 14.1016 5.27344C14.1016 7.53504 12.2616 9.375 10 9.375Z"
                                                fill="#141516" />
                                            <path
                                                d="M16.5612 13.992C15.1174 12.5261 13.2035 11.7188 11.1719 11.7188H8.82812C6.79656 11.7188 4.88258 12.5261 3.43883 13.992C2.00215 15.4507 1.21094 17.3763 1.21094 19.4141C1.21094 19.7377 1.47328 20 1.79688 20H18.2031C18.5267 20 18.7891 19.7377 18.7891 19.4141C18.7891 17.3763 17.9979 15.4507 16.5612 13.992ZM2.40859 18.8281C2.70215 15.5045 5.46918 12.8906 8.82812 12.8906H11.1719C14.5308 12.8906 17.2979 15.5045 17.5914 18.8281H2.40859Z"
                                                fill="#141516" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="input-block mb-16">
                                        <input type="phone" name="phone" autocomplete="off" class="form-control" placeholder="Your Phone">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                            <path
                                                d="M18.2422 2.96875H1.75781C0.786602 2.96875 0 3.76023 0 4.72656V15.2734C0 16.2455 0.792383 17.0312 1.75781 17.0312H18.2422C19.2053 17.0312 20 16.2488 20 15.2734V4.72656C20 3.76195 19.2165 2.96875 18.2422 2.96875ZM17.996 4.14062C17.6369 4.49785 11.4564 10.6458 11.243 10.8581C10.9109 11.1901 10.4695 11.3729 10 11.3729C9.53047 11.3729 9.08906 11.1901 8.75594 10.857C8.61242 10.7142 2.50012 4.63414 2.00398 4.14062H17.996ZM1.17188 15.0349V4.96582L6.23586 10.0031L1.17188 15.0349ZM2.00473 15.8594L7.06672 10.8296L7.9284 11.6867C8.48176 12.2401 9.21746 12.5448 10 12.5448C10.7825 12.5448 11.5182 12.2401 12.0705 11.6878L12.9333 10.8296L17.9953 15.8594H2.00473ZM18.8281 15.0349L13.7641 10.0031L18.8281 4.96582V15.0349Z"
                                                fill="#141516" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="input-block mb-16">
                                        <input type="email" name="email" autocomplete="off" class="form-control" placeholder="Your Email">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                            <path
                                                d="M18.2422 2.96875H1.75781C0.786602 2.96875 0 3.76023 0 4.72656V15.2734C0 16.2455 0.792383 17.0312 1.75781 17.0312H18.2422C19.2053 17.0312 20 16.2488 20 15.2734V4.72656C20 3.76195 19.2165 2.96875 18.2422 2.96875ZM17.996 4.14062C17.6369 4.49785 11.4564 10.6458 11.243 10.8581C10.9109 11.1901 10.4695 11.3729 10 11.3729C9.53047 11.3729 9.08906 11.1901 8.75594 10.857C8.61242 10.7142 2.50012 4.63414 2.00398 4.14062H17.996ZM1.17188 15.0349V4.96582L6.23586 10.0031L1.17188 15.0349ZM2.00473 15.8594L7.06672 10.8296L7.9284 11.6867C8.48176 12.2401 9.21746 12.5448 10 12.5448C10.7825 12.5448 11.5182 12.2401 12.0705 11.6878L12.9333 10.8296L17.9953 15.8594H2.00473ZM18.8281 15.0349L13.7641 10.0031L18.8281 4.96582V15.0349Z"
                                                fill="#141516" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="input-block mb-16">
                                        <div class="input-block mb-16">
                                            <input type="password" name="password" autocomplete="off" class="form-control password-input" placeholder="Password">
                                            <svg class="toggle-password" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" style="cursor: pointer;">
                                                <g clip-path="url(#clip0_7949_46264)">
                                                    <path
                                                        d="M19.8898 10.3421C20.0368 10.1378 20.0368 9.86227 19.8898 9.65785C19.8451 9.5957 18.7753 8.11922 17.0388 6.62602L19.8898 10.3421ZM19.8898 10.3421C19.8451 10.4043 18.7753 11.8808 17.0388 13.374C16.0117 14.2571 14.9628 14.9625 13.9213 15.4705M19.8898 10.3421L6.33476 14.9827M2.96124 13.374L3.31779 12.9593L0.110303 10.3421C0.15499 10.4043 1.22472 11.8808 2.96124 13.374ZM2.96124 13.374L3.31781 12.9593M2.96124 13.374L3.31781 12.9593M3.31781 12.9593C3.32463 12.9652 3.33146 12.971 3.3383 12.9769C3.78259 13.3578 4.30002 13.7615 4.87535 14.1434C4.94379 14.1888 5.01304 14.2339 5.08309 14.2787L5.09608 14.287L5.10946 14.2946L5.99122 14.7983L6.16418 14.8971L6.17856 14.9054L6.19335 14.9128C6.23538 14.9339 6.27765 14.9549 6.32015 14.9756L6.07878 15.4705M3.31781 12.9593L5.73444 15.2904C5.83141 15.341 5.9444 15.3999 6.07878 15.4705M6.07878 15.4705L6.33476 14.9827M6.07878 15.4705C7.40507 16.1173 8.72437 16.4453 10 16.4453C11.2757 16.4453 12.595 16.1173 13.9213 15.4705M6.33476 14.9827C7.43018 15.5147 8.67705 15.8984 10 15.8984C11.3151 15.8984 12.56 15.5261 13.6814 14.9787L13.9213 15.4705M6.33476 14.9827L13.6814 14.9787L13.9213 15.4705M13.5053 9.93776C13.5053 11.8737 11.936 13.443 10 13.443C8.06414 13.443 6.49478 11.8737 6.49478 9.93776C6.49478 8.00186 8.06414 6.4325 10 6.4325C11.936 6.4325 13.5053 8.00186 13.5053 9.93776ZM13.9212 4.52961L13.9212 4.52972L13.9212 4.52961Z"
                                                        stroke="#141516" stroke-width="1.25" />
                                                </g>
                                                <defs>
                                                    <clipPath id="clip0_7949_46264">
                                                        <rect width="20" height="20" fill="white" />
                                                    </clipPath>
                                                </defs>
                                            </svg>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <button type="submit" class="cus-btn-3 mb-16 w-25"> Sign Up</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


</main>
<!-- Main Sections -->
@push('js')

<script>
    $(document).ready(function () {
        $('#registerForm').on('submit', function (e) {
            e.preventDefault();

            let formData = $(this).serialize();

            $.ajax({
                url: '{{ route('customer_register') }}',
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    alert('Form submitted successfully!');
                    console.log(response);
                    $('#registerForm')[0].reset();
                },
                error: function (xhr, status, error) {
                    if (xhr.status === 422) {
                        const errors = xhr.responseJSON.errors;
                        if (errors.email) {
                            alert(errors.email[0]);
                        } else {
                            alert('Validation failed. Please check your input.');
                        }
                    } else {
                        alert('There was an error submitting the form.');
                    }
                }
            });
        });
    });

    document.addEventListener("DOMContentLoaded", () => {
        const togglePassword = document.querySelector(".toggle-password");
        const passwordInput = document.querySelector(".password-input");

        togglePassword.addEventListener("click", () => {
            const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
            passwordInput.setAttribute("type", type);
        });
    });
</script>
<script>
    $(document).ready(function() {
    $('#loginForm').on('submit', function(e) {
        e.preventDefault();

        var formData = new FormData(this);
        $.ajax({
            url: '{{ route('customer_login') }}',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                if (response.success) {
                    window.location.href = response.redirect_url;
                } else {
                    alert('Login failed: ' + response.message);
                }
            },
            error: function(xhr) {
                var errors = xhr.responseJSON.errors;
                if (errors.email) {
                    alert(errors.email[0]);
                } else if (errors.password) {
                    alert(errors.password[0]);
                } else {
                    alert('Something went wrong. Please try again later.');
                }
            }
        });
    });
});

</script>
@endpush
