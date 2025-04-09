{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Site Verify')

{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" items="site_verification" where=""
                title="Total items" icon="far fa-payment" link="#" sort="sort_3" />

            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" count="Site Tag"
                title="Site Tag Management" icon="far fa-info" link="{{ route('admin.setting.index', ['page' => 'site-tag']) }}" sort="sort_3" />
        </div>
    </x-summary>



    <div class="card">
        <div class="card-header">
            Site Verify
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    [
                        'name' => 'google-site-verification',
                        'key' => '25',
                        'reference' => 'https://search.google.com/search-console',
                    ],
                    [
                        'name' => 'msvalidate.01',
                        'key' => '25',
                        'reference' => 'https://www.bing.com/webmasters/',
                    ],
                    [
                        'name' => 'yandex-verification',
                        'key' => '25',
                        'reference' => 'https://webmaster.yandex.com/',
                    ],
                    [
                        'name' => 'p:domain_verify',
                        'key' => '25',
                        'reference' => 'https://www.pinterest.com/business/verify/',
                    ],
                    [
                        'name' => 'fb:admins',
                        'key' => '25',
                        'reference' => 'https://developers.facebook.com/docs/sharing/webmasters#admins',
                    ],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="25">
                <div class="row">
                    @foreach ($sms_settings as $setting)
                        <div class="col-md-6">
                            @include('admin.settings.partials.main-setting-helper', [
                                'items_name' => $setting->name,
                                'key' => $setting->key,
                                'reference' => $setting->reference ?? null,
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
            <br />


        </div>
    </div>




@endsection
