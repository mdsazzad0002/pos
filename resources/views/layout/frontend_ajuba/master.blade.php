<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Accessory-Store">

    <title>@yield('title', '') | {{ settings('app_title', 9)  }}</title>
    <style>
        :root {
            --primary-color: {{ settings('theme_color', 9) }};
        }
    </style>

    @include('layout.frontend_ajuba.additional_setting_and_chat.meta_verification')
    @include('layout.frontend_ajuba.partials.css')
</head>

<body class="tt-smooth-scroll">






@include('layout.frontend_ajuba.additional_setting_and_chat.tag_management')
@include('layout.frontend_ajuba.additional_setting_and_chat.chat')
@include('layout.frontend_ajuba.additional_setting_and_chat.pwa')
@include('layout.frontend_ajuba.additional_setting_and_chat.cookie')








    <!-- Main Wrapper Start -->
    <div id="scroll-container" class="main-wrapper">
        <!-- Header Menu Start -->
        @include('layout.frontend_ajuba.partials.header')
        <!-- Header Menu End -->

        <!-- Main Sections -->
        <main class="main-wrapper">

            @yield('content')

            <!-- Benefits Start -->
            @if(settings('footer_style1_status', 88) == 1)
                @include('layout.frontend_ajuba.partials.footer')
            @elseif(settings('footer_style2_status', 88) == 1)
                @include('layout.frontend_ajuba.partials.footer1')
            @endif

            <!-- Benefits End -->
        </main>
        <!-- Main Sections -->
    </div>
    <!-- Main Wrapper End -->

    <!-- Back To Top Start -->
    <a href="#main-wrapper" id="backto-top" class="back-to-top"><i class="fas fa-angle-up"></i></a>


    <!-- Mobile Menu Start -->
    @include('layout.frontend_ajuba.partials.mobile_nav')
    <!-- Mobile Menu End -->

    <!-- Modal -->
    @include('layout.frontend_ajuba.partials.product_quick_view')
    <!-- Modal -->

    <!-- Shopping Cart Popup Start -->
    @include('layout.frontend_ajuba.partials.side_soping_cart')
    <!-- Shopping Cart Popup End -->

    <!-- Modal -->
    @include('layout.frontend_ajuba.partials.compare_list')

    @include('layout.frontend_ajuba.partials.scripts')


</body>

</html>
