    <!-- All CSS files -->
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/font-awesome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/slick-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/slick-slider.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/country-code.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/custom.css') }}">

    <style>
        /* ::-webkit-scrollbar{
            cursor: pointer;
            background: #000;

        } */
    </style>
    @stack('css')
    @stack('style')
    @stack('styles')
