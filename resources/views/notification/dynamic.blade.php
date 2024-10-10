<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $notificationInfo_data['line'] }}</title>
</head>
<body>
    {{ $notificationInfo_data['action'] }} </br>
    {{ $notificationInfo_data['url'] }} </br>
    name: {{ $notificationInfo_data['user']->name }} <br/>
    email: {{ $notificationInfo_data['user']->email }} <br/>

</body>
</html>
