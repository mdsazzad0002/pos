{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Dashboard')
{{-- Content Extends --}}
@section('content')




<div class="row">



    <!-- Start popup dialog box -->
    <!-- Modal -->
    <div class="modal fade" id="event_entry_modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add A New Event</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="img-container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="event_name">Event name</label>
                                    <input type="text" name="event_name" id="event_name" class="form-control"
                                        placeholder="Enter your event name">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="event_start_date">Event start</label>
                                    <input type="date" name="event_start_date" id="event_start_date"
                                        class="form-control onlydatepicker" placeholder="Event start date">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="event_end_date">Event end</label>
                                    <input type="date" name="event_end_date" id="event_end_date" class="form-control"
                                        placeholder="Event end date">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="save_event()">Save Event</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End popup dialog box -->






    <div class="col-12 mb-3">
        <livewire:calender-event />

        <div class="row connectedSortable ">

            {{-- small box --}}
            <div class=" col-lg-4 col-6 col-xl-3 mb-2">
                <div class="card small-box  bg-secondary " onclick="copyToClipboard('{{ url('/') }}')"
                    title="Click to Copy">
                    <div class="card-header card_count_loaded p-0">

                        <div class="icon">
                            <i class="fab fa-firefox-browser"></i>
                        </div>
                        <div class="inner" style="zoom: 88%">
                            {!! $data !!}
                        </div>
                    </div>
                    <a href="{{ url('/') }}" target="_blank" class="small-box-footer">Visit Website <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            {{-- small box --}}
            <div class=" col-lg-4 col-6 col-xl-3 mb-2">
                <div class="card small-box  bg-secondary ">
                    <div class="card-header card_count_loaded p-0" style="    cursor: move;
                            display: flex
                        ;
                            flex-direction: row-reverse;
                            align-items: center;
                            justify-content: space-between;
                            padding: 9px 16px !important;">


                        <div class="inner" style="zoom: 88%">
                            <img src="{{ auth()->user()->image }}" style="width: 100px;max-height: 115px" alt="">
                        </div>
                        <div>
                            <h3>Welcome</h3>
                            <p>{{ auth()->user()->name }}</p>

                        </div>
                    </div>
                    <a href="{{ url('admin/profile') }}" class="small-box-footer">Visit Profile <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- small box -->


            {{-- Order Card --}}
            @can('order read')
            <x-dashboard.link_card column="col-lg-4 col-6 col-xl-3 mb-2" bg="bg-primary" items="orders"
                title="All Order" icon="fas fa-luggage-cart" link="{{ route('admin.order.index') }}" sort="sort_1" />
            @endcan

            {{-- End Order --}}

            {{-- Purchause --}}
            @can('purchase read')
            <x-dashboard.link_card column="col-lg-4 col-6 col-xl-3 mb-2" bg="bg-primary" items="purchases"
                title="All Purchase" icon="fas fa-store-alt" link="{{ route('admin.purchase.index') }}" sort="sort_2" />
            @endcan
            {{-- End Purchase --}}



            {{-- Customer --}}
            @can('customer read')
            <x-dashboard.link_card column="col-lg-4 col-6 col-xl-3 mb-2" bg="bg-primary" items="customers"
                title="Customer" icon="far fa-comments" link="{{ route('admin.customer.index') }}" sort="sort_4" />
            @endcan
            {{-- End Customer --}}




            {{-- Category --}}
            @can('category read')
            <x-dashboard.link_card column="col-lg-4 col-6 col-xl-3 mb-2" bg="bg-success" items="categories"
                title="All category" icon="far fa-comments" link="{{ route('admin.category.index') }}" sort="sort_4" />
            @endcan
            {{-- End Category --}}


        </div>


        <div class="row connectedSortable">
            <div class="col-lg-12 col-12">
                <livewire:sales-report-month />

            </div>
            <div class="col-lg-8 col-12">
                <livewire:latest-order />
            </div>


            <div class="col-lg-4 col-12">
                <livewire:recent-customer />
                {{-- @include('admin.dashboard.dashboard_report.recent_customer') --}}
            </div>
            <div class="col-lg-8 col-12">
                <livewire:recent-product />
                {{-- @include('admin.dashboard.dashboard_report.recent_product') --}}
            </div>
            <div class="col-lg-4 col-12">
                <livewire:browser-history />
                {{-- @include('admin.dashboard.dashboard_report.recent_product') --}}
            </div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Calendar & Events</h3>

                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            {{-- <button type="button" class="btn btn-tool" data-card-widget="remove">
                                <i class="fas fa-times"></i>
                            </button> --}}
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">
                        <div id="calendar"></div>
                    </div>

                </div>
                <!-- /.card-body -->
            </div>





        </div>




        <style>
            /* Preloader Style */
            .card-body {
                position: relative;
                min-height: 200px;
            }

            .preloader_body {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                display: flex;
                justify-content: center;
                align-items: center;
                width: 100%;
                height: 100%;
                background: rgb(223, 221, 221);
                flex-direction: column;


                animation: opcity 4s linear infinite;
            }

            .preloader_body .spinner {
                width: 40px;
                height: 40px;
                border: 5px solid #dee2e6;
                border-top: 5px solid #000000;
                border-radius: 50%;
                animation: spin 1s linear infinite;
            }

            /* Spinner Animation */
            @keyframes spin {
                0% {
                    transform: rotate(0deg);
                }

                100% {
                    transform: rotate(360deg);
                }
            }

            @keyframes opcity {
                0% {
                    opacity: 0.7;
                }

                25% {
                    opacity: 1;
                }

                50% {
                    opacity: 0.7;
                }

                75% {
                    opacity: 1;
                }

                100% {
                    opacity: 0.7;
                    ;
                }
            }
        </style>

        @livewireScripts

        @endsection

        @push('js')
        <script src="{{ asset('vendor/calendar/index.global.js') }}"></script>

        <script>
            // The Calender
                document.addEventListener('livewire:load', function() {});


            function load_cleander() {
                let xhttp = new XMLHttpRequest;
                xhttp.onload = function() {

                    let data_response = this.responseText;
                    data_response = JSON.parse(data_response)
                    console.log(data_response.status)
                    if (data_response.status == true) {
                        // console.log(data_response.data)


                        var events = new Array();

                        Object.keys(data_response.data).forEach(key => {
                            events.push(
                                data_response.data[key]
                            );

                        })

                        console.log('444')
                        var calendarEl = document.getElementById('calendar');
                        var calendar = new FullCalendar.Calendar(calendarEl, {
                            headerToolbar: {
                                left: 'prev,today,next',
                                center: 'title',
                                right: 'dayGridMonth,listMonth'
                            },
                            // initialDate: '2023-01-12',
                            // timeZone: 'local',
                            titleFormat: {
                                year: 'numeric',
                                month: '2-digit'
                            },
                            themeSystem: 'bootstrap5',
                            editable: false,
                            selectable: true,
                            dayMaxEvents: true, // allow "more" link when too many events
                            navLinks: true,
                            select: function(arg) {
                                $('#event_start_date').val(moment(arg.start).format('YYYY-MM-DD'));
                                $('#event_end_date').val(moment(arg.end).format('YYYY-MM-DD'));
                                $('#event_entry_modal').modal('show');
                                // var event_name = $("#event_name").val();
                                // if (title) {
                                //     calendar.addEvent({
                                //         title: event_name,
                                //         start: arg.sta,
                                //         end: event_end_date,
                                //         allDay: arg.allDay
                                //     })


                                // }
                                // calendar.unselect()

                            },
                            eventClick: function(info) {
                                console.log(info)
                                if (confirm("Are you sure you want to delete this event?")) {
                                    fetch(`{{url('admin/calenderevent/')}}/${info.event.id}`, {
                                        method: 'DELETE',
                                        headers: {
                                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                                        }
                                    })
                                    .then(response => response.json())
                                    .then(data => {
                                        if (data.status) {
                                            info.event.remove(); // Remove event from the calendar
                                            alert(data.msg);
                                        } else {
                                            alert("Error deleting event.");
                                        }
                                    })
                                    .catch(error => console.error('Error:', error));
                                }
                            },
                            events: events,
                        });
                        console.log(events)
                        calendar.render();

                    } else {
                        console.log(data_response.msg)
                    }
                }
                xhttp.open("GET", "{{ route('admin.calenderevent.index') }}", true);
                xhttp.send();

            }



// insert data calendar
                function save_event() {
                    var event_name = $("#event_name").val();
                    var event_start_date = $("#event_start_date").val();
                    var event_end_date = $("#event_end_date").val();
                    if (event_name == "" || event_start_date == "" || event_end_date == "") {
                        Swal.fire({
                            icon: 'warning',
                            title: 'Please enter all required details',
                            timer: 5500
                        })
                        return false;
                    }

                    $.ajax({
                        url: "{{ route('admin.calenderevent.store') }}",
                        type: "POST",
                        dataType: 'json',
                        data: { event_name: event_name, event_start_date: event_start_date, event_end_date: event_end_date },
                        success: function (response) {
                            $('#event_entry_modal').modal('hide');
                            if (response.status == true) {

                                flasher.success(response.msg);
                                load_cleander();
                            }
                            else {
                                flasher.error(response.msg);
                            }
                        },
                        error: function (xhr, status) {
                            console.log('ajax error = ' + xhr.statusText);
                            flasher.error(xhr.statusText);
                        }
                    });
                    return false;
                }

                document.addEventListener('DOMContentLoaded', function() {
                    // requested by ajax
                    if (document.getElementById('calendar')) {
                        load_cleander();
                        console.log('load_cleander');
                    }


                });

        </script>
        @endpush