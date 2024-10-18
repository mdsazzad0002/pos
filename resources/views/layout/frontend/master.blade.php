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


</head>
<body>
<a href="admin">gdg</a>
    @yield('content')


</body>
</html>

