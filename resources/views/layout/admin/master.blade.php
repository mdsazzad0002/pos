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


            var last_id = 0;
            var message_selected_id = 0;
            var message_sender_id = {{ auth()->user()->id }};

            function inew_message_load(){
                $.ajax({
                    type:'get',
                    url:'{{ route('admin.message.get_message') }}',
                    data: {
                        'last_id': last_id
                    },
                    success:function(data){
                        data = JSON.parse(data)
                        var items_data_ret = '';
                            if($('.message_chart').length > 0){


                                Object.entries(data).forEach(([key, items]) => {
                                      last_id = items.id

                                        if(items.user_id == {{ auth()->user()->id }}){
                                            items_data_ret +=  `
                                            <div class="message-bubble message-sent">
                                                <p>${items.body}</p>
                                                <span class="message-time">${items.created_at}</span>
                                            </div>`;

                                        }else{
                                            items_data_ret +=  `<div class="message-bubble message-received">
                                                <p>${items.body}</p>
                                                <span class="message-time">${items.created_at}</span>
                                            </div>`;
                                        }

                                        if(items.thread_id == message_selected_id){
                                            $('.chat-bod-body').append(`<div class="items_body_per thread_items${items.thread_id}" > ${items_data_ret}</div>`);

                                        }else{
                                            $('.chat-bod-body').append(`<div class="items_body_per thread_items${items.thread_id}" style="display:none"> ${items_data_ret}</div>`);

                                        }


                                })




                            }
                    }
                })
            }
            setInterval(function(){
                inew_message_load()
            },10000)

      </script>

</body>
</html>
