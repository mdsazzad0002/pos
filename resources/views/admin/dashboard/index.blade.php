{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('dashboard_title', 10))
{{--  Content Extends  --}}
@section('content')

    <script src="{{ asset('vendor/livewire/livewire.js') }}"></script>


    <div class="row">
        <!-- Small boxes (Stat box) -->
        <div class="col-12 mb-3">
            <h2>
                Dashboard
            </h2>
        </div>
        <div class="col-12 mb-3">

            <div class="row connectedSortable">

                {{-- small box --}}
                <div class="col-lg-3 col-6">
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
                <!-- small box -->
            </div>
            <br>

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
                <div class="col-lg-4 col-12">
     <!-- Calendar -->
     {{-- <div class="card bg-gradient-success">
              <div class="card-header border-0">

                <h3 class="card-title">
                  <i class="far fa-calendar-alt"></i>
                  Calendar
                </h3>
                <!-- tools card -->
                <div class="card-tools">
                  <!-- button with a dropdown -->

                  <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button> -->
                </div>
                <!-- /. tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body pt-0">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->


            <script>
                  // The Calender
                  document.addEventListener(
                    'livewire:load',
                    function () {
                      $('#calendar').datetimepicker({
                        format: 'L',
                        inline: true
                      });
                    }
                  )



            </script>
                </div>

            </div>
        </div> --}}




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


@endsection
