{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('dashboard_title', 10))
{{--  Content Extends  --}}
@section('content')

    <div class="row">
        <!-- Small boxes (Stat box) -->
        <div class="col-12 mb-3">
            <h2>
                Dashboard
            </h2>
        </div>
        <div class="col-12 mb-3">

            <div class="row connectedSortable">
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

                    <!-- small box -->
                </div>
            </div>

        </div>


        <section class="col-lg-8 connectedSortable">

            @include('admin.dashboard.dashboard_report.recent_order')



        </section>
        <section class="col-lg-4 connectedSortable">
            @include('admin.dashboard.dashboard_report.recent_customer')
            @include('admin.dashboard.dashboard_report.recent_product')


        </section>


    </div>




    <style>
        /* Preloader Style */
        .card-body {
            position: relative;
            min-height: 400px;
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
