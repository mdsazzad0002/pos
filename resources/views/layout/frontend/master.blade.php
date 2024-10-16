<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Your Website Title</title>

    <!-- Google Search Console Verification -->
    <meta name="google-site-verification" content="{{ settings('google-site-verification', 25) }}" />

    <!-- Bing Webmaster Tools Verification -->
    <meta name="msvalidate.01" content="{{ settings('msvalidate.01', 25) }}" />

    <!-- Yandex Webmaster Verification -->
    <meta name="yandex-verification" content="{{ settings('yandex-verification', 25) }}" />

    <!-- Pinterest Verification -->
    <meta name="p:domain_verify" content="{{ settings('p:domain_verify', 25) }}" />

    <!-- Facebook Admin Verification -->
    <meta property="fb:admins" content="{{ settings('fb:admins', 25) }}" />
    <link rel="icon" href="{{ asset('uploads/1081269358282203140.jpg') }}">

    <!-- Other meta tags -->
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-P596LV7H');</script>
<!-- End Google Tag Manager -->

    @cookieconsentscripts
</head>
<body>
<a href="admin">gdg</a>
    @yield('content')


    @cookieconsentview
</body>
</html>

