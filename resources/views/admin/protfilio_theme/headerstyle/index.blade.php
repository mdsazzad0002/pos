{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Header Style Management')

{{-- Content Extends --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Header Style
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-6">
                @livewire('headerstyle')
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        Universal
                    </div>
                    <div class="card-body">
                        @php
                        $data = [
                            [
                                'name' => 'category_wise_filter_status',
                                'key' => '80'
                            ],
                            [
                                'name' => 'category_wise_filter_status1',
                                'key' => '80'
                            ]
                        ];

                        $data_object =json_decode(json_encode($data));

                        @endphp

                            <div class="row">
                                @foreach ($data_object as $setting)
                                    <div class="col-6">
                                        @include( 'admin.settings.partials.main-setting', ['slug' => 80])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


@livewireScripts
@endsection
