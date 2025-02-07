<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>We'll Be Back Soon!</title>
    <style>
        body {
            text-align: center;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #2c3e50, #4ca1af);
            color: #fff;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            font-size: 60px;
            margin-bottom: 10px;
            text-transform: uppercase;
            font-weight: bold;
        }
        p {
            font-size: 20px;
            margin-bottom: 20px;
        }
        #countdown {
            font-size: 40px;
            font-weight: bold;
            color: #ffcc00;
            background: rgba(0, 0, 0, 0.2);
            padding: 10px 20px;
            border-radius: 10px;
            display: inline-block;
            min-width: 250px;
            transition: all 0.3s ease-in-out;
        }
        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            max-width: 1100px;
            text-align: center;
        }
            .login_btn {
                color: #fff;
                text-decoration: none;
                padding: 10px 20px;
                background-color: #3498db;
                border-radius: 5px;
                transition: background-color 0.3s ease-in-out;
            }
    </style>
    <script>
        function startCountdown() {
            var maintenanceEndTime = new Date('{{ $time }}').getTime();

            var countdown = setInterval(function() {
                var now = new Date().getTime();
                var timeLeft = maintenanceEndTime - now;

                if (timeLeft <= 0) {
                    clearInterval(countdown);
                    document.getElementById("countdown").innerHTML = "We are back online!";
                    document.getElementById("countdown").style.color = "#00ff00";
                    window.location.href= ''
                } else {
                    var hours = Math.floor((timeLeft / (1000 * 60 * 60)) % 24);
                    var minutes = Math.floor((timeLeft / (1000 * 60)) % 60);
                    var seconds = Math.floor((timeLeft / 1000) % 60);

                    document.getElementById("countdown").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";
                }
            }, 1000);
        }

        window.onload = startCountdown;
    </script>
</head>
<body>
    <div class="container">
        <h1>We'll Be Back Soon!</h1>
        <p>Our website is currently undergoing scheduled maintenance.</p>
        <p>Please check back later.</p>
        <p>Estimated time remaining:</p>
        <p id="countdown"></p>
        <p>
            <a class="login_btn" href="{{ url('login') }}">Login as Admin</a>
        </p>
    </div>
</body>
</html>
