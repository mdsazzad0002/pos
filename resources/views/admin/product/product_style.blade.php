{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', settings('footerlinkheadings', 10))

{{-- Content Extends --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Footer Style
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-6">
                @livewire('productStyle')
            </div>
            <div class="col-lg-6">
{{-- 
                <div class="card">
                    <div class="card-header">
                        Product Style 2
                    </div>
                    <div class="card-body">
                        @php
                        $data = [
                            [
                                'name' => 'footer_payment_method_status',
                                'key' => '88'
                            ],
                            [
                                'name' => 'footer_payment_method_image',
                                'key' => '88'
                            ]
                        ];

                        @endphp

                        <div class="row">
                            @foreach (settings_data($data) as $setting)
                            <div class="col-6">
                                @include( 'admin.settings.partials.main-setting', ['slug' => 88])
                            </div>
                            @endforeach
                        </div>

                    </div>
                </div> --}}
            </div>
        </div>

    </div>
</div>



@livewireScripts
@endsection
