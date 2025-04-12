{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'PWA Settings')

{{-- Content Extends --}}
@section('content')
    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" items="pwa" where="" title="Total items"
                icon="far fa-payment" link="#"
                sort="sort_3" />

            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" items="pwa" where="status" title="Status"
                icon="far fa-payment" link="#"
                sort="sort_3" />

            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" count="Cookie" title="Cookie Settings"
                icon="far fa-payment" link="{{ route('admin.setting.index', ['page'=>'cookie'])}}"
                sort="sort_3" />

        </div>
    </x-summary>




    <div class="card">
        <div class="card-header">
            PWA ( Progressive Web Apps) <a href="https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps"
                target="_blank">reference</a>
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    [
                        'name' => 'pwa_name',
                        'key' => '20',
                    ],
                    [
                        'name' => 'pwa_sort_name',
                        'key' => '20',
                    ],
                    [
                        'name' => 'pwa_orientation',
                        'key' => '20',
                    ],
                    [
                        'name' => 'pwa_background_color',
                        'key' => '20',
                    ],
                    [
                        'name' => 'pwa_display',
                        'key' => '20',
                        'reference' => 'https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Manifest/Reference/display',
                    ],
                    [
                        'name' => 'pwa_description',
                        'key' => '20',
                    ],
                    [
                        'name' => 'pwa_image',
                        'key' => '20',
                    ],
                    [
                        'name' => 'pwa_sizes',
                        'key' => '20',
                        'reference' => 'https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/How_to/Define_app_icons#purpose',
                    ],
                    [
                        'name' => 'pwa_type',
                        'key' => '20',
                        'reference' => 'https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/How_to/Define_app_icons#purpose',
                    ],
                    [
                        'name' => 'pwa_status',
                        'key' => '20',
                    ],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="20">
                <div class="row">
                    @foreach ($sms_settings as $setting)
                        <div class="col-md-6 col-xl-4">
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



        @livewireScripts
    @endsection
