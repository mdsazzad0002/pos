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

{{-- maintanance & page builder helper --}}
@include('layout.frontend_ajuba.partials.maintanance_alert')
@include('layout.frontend_ajuba.partials.page_builder_drictory')
{{-- // maintanance & page builder helper --}}




@include('layout.frontend_ajuba.additional_setting_and_chat.tag_management')
@include('layout.frontend_ajuba.additional_setting_and_chat.chat')
@include('layout.frontend_ajuba.additional_setting_and_chat.pwa')
@include('layout.frontend_ajuba.additional_setting_and_chat.cookie')








    <!-- Main Wrapper Start -->
    <div id="scroll-container" class="main-wrapper">
        <!-- Header Menu Start -->


        @php
            $header_style = \App\Models\HeaderStyle::where('status',1)->first();
        @endphp
        @include('layout.frontend_ajuba.'.$header_style->key, ['header_style' => $header_style])

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

    {{-- Quick Connect Social --}}
    <div class="quick_connect">
        @if(settings('app_whatssap_fixed_status',9) == 1)
            <a href="{{ settings('app_whatsapp', 9) }}" id="" target="_blank" class="whatsapp"><i class="fa-brands fa-square-whatsapp"></i></a>
        @endif
        @if(settings('app_messenger_fixed_status',9) == 1)
         <a href="{{ settings('app_messenger', 9) }}" id="" target="_blank" class="messenger"><i class="fa-brands fa-facebook-messenger"></i></a>
        @endif
    </div>
    {{-- // Quick Connect Social --}}


    <!-- Mobile Menu Start -->
    @include('layout.frontend_ajuba.partials.mobile_nav')
    <!-- Mobile Menu End -->

    @include('layout.frontend_ajuba.partials.offer_bannar')

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
