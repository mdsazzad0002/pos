{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Site Tag')

{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary"  where="tag" items="tag" 
                title="Site Tag Management" icon="far fa-info" link="#" sort="sort_3" />

            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" 
                title="Total items" icon="far fa-payment" count="Site Verify" link="{{ route('admin.setting.index', ['page' => 'site-verify']) }}" sort="sort_3" />

        </div>
    </x-summary>



    <div class="card">
        <div class="card-header">
            Site Tag
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    [
                        'name' => 'facebook_app_id',
                        'key' => '24',
                        'reference' => 'https://developers.facebook.com/micro_site/url/?click_from_context_menu=true&country=BD&destination=https%3A%2F%2Fdevelopers.facebook.com%2Fapps&event_type=click&last_nav_impression_id=0AMcB8NRIjmd9Iaf2&max_percent_page_viewed=21&max_viewport_height_px=945&max_viewport_width_px=1920&orig_http_referrer=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fdevelopment%2Fcreate-an-app%2Fapp-dashboard&orig_request_uri=https%3A%2F%2Fdevelopers.facebook.com%2Fajax%2Fdocs%2Fnav%2F%3Fpath1%3Ddevelopment%26path2%3Dcreate-an-app%26path3%3Dapp-dashboard&region=apac&scrolled=true&session_id=01qUfBNXhM4D8RfdH&site=developers',
                    ],
                    [
                        'name' => 'google_tag_analysis_key',
                        'key' => '24',
                        'reference' => 'https://developers.google.com/analytics',
                    ],
                    [
                        'name' => 'google_tag_manager_key',
                        'key' => '24',
                        'reference' => 'https://tagmanager.google.com/',
                    ],
                    [
                        'name' => 'facebook_pixel_id',
                        'key' => '24',
                        'reference' => 'https://www.facebook.com/business/help/171689010314963',
                    ]
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="24">
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
