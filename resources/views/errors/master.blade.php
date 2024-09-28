<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>

    <style>
        .hv-100{
            height: 100vh;
        }
    </style>
<link rel="stylesheet" href="{{ asset('vendor/bootstrap/bootstrap.min.css') }}" >
</head>
<body>
    @yield('content')
</body>
</html>
