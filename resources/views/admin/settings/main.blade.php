{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Main Settings')

{{-- Content Extends --}}
@section('content')
    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" items="pwa" where="" title="Total items"
                icon="far fa-payment" link="{{ route('admin.setting.index', ['site-pwa-management', '40']) }}"
                sort="sort_3" />

            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" items="pwa" where="status" title="Status"
                icon="far fa-payment" link="{{ route('admin.setting.index', ['site-pwa-management', '40']) }}"
                sort="sort_3" />

        </div>
    </x-summary>




    <div class="card">
        <div class="card-header">
          Main Settings <a href="https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps"
                target="_blank">reference</a>
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    ['key' => '9', 'name' => 'app_title'],
                    ['key' => '9', 'name' => 'app_name_short'],
                    ['key' => '9', 'name' => 'currency_symbol', 'reference' => 'https://www.xe.com/symbols/'],
                    ['key' => '9', 'name' => 'app_address'],
          
                    ['key' => '9', 'name' => 'theme_color'],
                    ['key' => '9', 'name' => 'app_email'],
                    ['key' => '9', 'name' => 'app_tel'],
                    ['key' => '9', 'name' => 'app_about'],
                    ['key' => '9', 'name' => 'app_maps'],
                    ['key' => '9', 'name' => 'app_instagram'],
                    ['key' => '9', 'name' => 'app_facebook'],
                    ['key' => '9', 'name' => 'app_twitter'],
                    ['key' => '9', 'name' => 'app_linkedin'],
                    ['key' => '9', 'name' => 'app_website'],
                    ['key' => '9', 'name' => 'app_whatssap_fixed_status'],
                    ['key' => '9', 'name' => 'app_messenger_fixed_status'],
                    ['key' => '9', 'name' => 'app_whatsapp', 'reference' => 'https://api.whatsapp.com/send?phone=01590084779'],
                    ['key' => '9', 'name' => 'is_demo_mode_status'],
                    ['key' => '9', 'name' => 'app_fav_image', 'reference' => 'https://web.dev/articles/building/an-adaptive-favicon?hl=bn'],
                    ['key' => '9', 'name' => 'app_image'],
                    ['key' => '9', 'name' => 'app_footer_image'],
                    ['key' => '9', 'name' => 'login_admin_image'],
                    ['key' => '9', 'name' => 'app_preloader_status'],
                    ['key' => '9', 'name' => 'service_popup_title'],
                    ['key' => '9', 'name' => 'header_sticky_status'],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="9">
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
