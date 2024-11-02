<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.admin.head')
</head>
<body class="hold-transition sidebar-mini layout-fixed
 {{ settings('theme_mode', 1) ? 'dark-mode' : ''}}
 {{ settings('theme_layout-navbar-fixed', 1) ? 'layout-footer-fixed' : ''}}
 {{ settings('theme_sidebar-collapse', 1) ? 'sidebar-collapse' : ''}}
 {{ settings('theme_layout-fixed', 1) ? 'layout-fixed' : ''}}
 {{ settings('theme_sidebar-mini', 1) ? 'sidebar-mini' : ''}}
 {{ settings('theme_sidebar-mini-md', 1 ) ? 'sidebar-mini-md' : ''}}
 {{ settings('theme_sidebar-mini-xs', 1) ? 'sidebar-mini-xs' :'' }}
 {{ settings('theme_layout-footer-fixed', 1) ? 'layout-footer-fixed' : ''}}
 {{ settings('theme_layout-navbar-fixed', 1) ? 'layout-navbar-fixed' : ''}}
 ">

    <div class="wrapper">
        <!-- Preloader -->




        <!-- Navbar -->
        @include('layout.admin.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        @include('layout.admin.sidebar')
        <div class="content-wrapper position-relative">
            @if(settings('app_preloader_status', 9))
                @include('layout.admin.preloder')
            @endif

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid pt-4">
                    @yield('content')

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        @include('layout.admin.footer')
        <!-- Control Sidebar -->
        @include('layout.admin.control-sidebar')
        <!-- /.control-sidebar -->

    </div>
    <!-- ./wrapper -->

    @include('layout.admin.script-page')
    @stack('js')
    @include('layout.admin.modal_ajax')



        <script>


            // Initialize EventSource with the device ID
            var eventsource = new EventSource("{{ url('device_access_check') }}");

            eventsource.onmessage = function(event) {
                try {
                    let data = JSON.parse(event.data);

                    // Handle logout event
                    if (data.logout === 1) {
                        window.location.href = ''; // Specify a logout URL
                    }

                } catch (error) {
                    console.error('Error parsing message data:', error);
                }
            };


      </script>

</body>
</html>
