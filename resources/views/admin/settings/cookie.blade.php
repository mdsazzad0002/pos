{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Cookie Settings')

{{-- Content Extends --}}
@section('content')
<x-summary>

    <div class="row connectedSortable mb-2">
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary" count="PWA"   title="PWA Settings" icon="far fa-payment" link="{{ route('admin.setting.index', ['page'=>'pwa']) }}" sort="sort_3" />
    </div>
    </x-summary>

    <div class="card">
        <div class="card-header">
            Cookie <a href="https://www.w3schools.com/js/js_cookies.asp" target="_blank">Learn About Cookie</a> also read <a
                href="https://www.osano.com/articles/cookie-policy" target="_blank">How to work cooke in website</a>
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    ['name' => 'cookie_i_con_class_title', 'key' => '40'],
                    ['name' => 'cookie_title', 'key' => '40'],
                    ['name' => 'cookie_description', 'key' => '40'],
                    ['name' => 'cookie_link', 'key' => '40'],
                    ['name' => 'cookie_accept_btn', 'key' => '40'],
                    ['name' => 'cookie_declined_btn', 'key' => '40'],
                    ['name' => 'cookie_bg_color', 'key' => '40'],
                    ['name' => 'cookie_btn_1_color', 'key' => '40'],
                    ['name' => 'cookie_btn_1_color_bg', 'key' => '40'],
                    ['name' => 'cookie_btn_2_color_bg', 'key' => '40'],
                    ['name' => 'cookie_link_text', 'key' => '40'],
                    ['name' => 'cookie_status', 'key' => '40'],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="87">
                <div class="row">
                    @foreach ($sms_settings as $setting)
                        <div class="col-md-6">
                            @include('admin.settings.partials.main-setting-helper', [
                                'items_name' => $setting->name,
                                'key' => $setting->key,
                            ])
                            <br>
                        </div>
                    @endforeach
                </div>

                <div class="pt-2 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
            {{-- update Sms Settings --}}
         

        </div>
    </div>


@endsection
