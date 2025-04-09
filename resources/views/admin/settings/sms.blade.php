{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'SMS Settings')

{{-- Content Extends --}}
@section('content')
    <div class="card">
        <div class="card-header d-flex align-items-center justify-content-between">
            SMS Settings
        </div>
        <div class="card-body">
            <div class="row">

                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            Mram <a href="https://sms.mram.com.bd/" target="_blank">Reference</a>
                        </div>
                        <div class="card-body">
                            @php
                                $sms_settings = [
                                    [
                                        'name' => 'maram_api_key',
                                        'key' => '87',
                                    ],
                                    [
                                        'name' => 'mariam_api_serder_id',
                                        'key' => '87',
                                    ],
                                    [
                                        'name' => 'mariam_api_status',
                                        'key' => '87',
                                    ],
                                ];

                                $sms_settings = json_decode(json_encode($sms_settings));

                            @endphp


                            {{-- update Sms Settings --}}
                            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}"
                                enctype="multipart/form-data" method="POST">
                                @csrf
                                <input hidden type="text" name="key_code" value="87">

                                @foreach ($sms_settings as $setting)
                                    @include('admin.settings.partials.main-setting-helper', [
                                        'items_name' => $setting->name,
                                        'key' => $setting->key,
                                    ])
                                    <br>
                                @endforeach

                                <div class="pt-2 d-flex justify-content-end">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                            {{-- update Sms Settings --}}
                            <br />

                            {{-- test sms settings --}}
                            <form action="{{ route('admin.settings.sms-configration.send') }}"
                                class="input-group form_ajax_submit" method="post">
                                @csrf
                              
                                    <input type="tel" name="phone" class="rounded-left form-control"
                                    placeholder="Enter your phone number with country code">

                             
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit">Submit</button>
                                    </div>
                            </form>
                            {{-- test sms settings --}}

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>


    @livewireScripts
@endsection
