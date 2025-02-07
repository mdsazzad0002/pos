@if (config('app.maintenance.status'))
<script>
    function startCountdown() {
        var maintenanceEndTime = new Date('{{ config('app.maintenance.from') }}').getTime();

        var countdown = setInterval(function() {
            var now = new Date().getTime();
            var timeLeft = maintenanceEndTime - now;

            if (timeLeft <= 0) {
                clearInterval(countdown);
                document.getElementById("countdown").innerHTML = "Maintanance Mode Active!";
                document.getElementById("countdown").style.color = "#00ff00";

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

    <div class="element_page_editor bg-dark">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between py-2">
                <div class="text-light ">Site Will go maintanance Mode</div>

                <div class="text-light h5" id="countdown"></div>
                @if (auth()->check())
                <div>
                    <a class="btn btn-sm btn-warning" target="_blank" href="{{route('admin.maintanance')}}"><i class="fas fa-pencil"></i></a>
                </div>
                @endif

            </div>
        </div>
    </div>
@endif
