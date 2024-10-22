<!DOCTYPE html>
<html lang="en">

<head>
    @include('frontend.protfilio_theme.layout.partials.head')
</head>

<body class="index-page">

    <header id="header" class="header sticky-top">
        @include('frontend.protfilio_theme.layout.partials.top_bar')
        <div class="branding d-flex align-items-cente">

            <div class="container position-relative d-flex align-items-center justify-content-between">


                @include('frontend.protfilio_theme.layout.partials.nav')

            </div>

        </div>

    </header>

    <main class="main">






        @yield('content')


    </main>


    @include('frontend.protfilio_theme.layout.partials.footer')

    <!-- Vendor JS Files -->
    @include('frontend.protfilio_theme.layout.partials.scripts')

</body>

</html>
