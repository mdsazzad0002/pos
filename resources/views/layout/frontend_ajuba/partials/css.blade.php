    <!-- Favicon -->




<!-- All CSS files -->
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/font-awesome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/slick-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/slick-slider.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/vendor/country-code.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/custom.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" integrity="sha384-tViUnnbYAV00FLIhhi3v/dWt3Jxw4gZQcNoSCxCIFNJVCx7/D55/wXsrNIRANwdD" crossorigin="anonymous">
    <style>
        /* ::-webkit-scrollbar{
            cursor: pointer;
            background: #000;

        } */
    </style>
    @stack('css')
    @stack('style')
    @stack('styles')


    {!! settings('custom_js_head_code', 45) !!}
    {!! settings('custom_css__head_code', 45) !!}
