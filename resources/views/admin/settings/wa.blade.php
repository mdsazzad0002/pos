{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'WA Settings')

{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" where="tag" items="tag"
                title="Site Tag Management" icon="far fa-info" link="#" sort="sort_3" />

            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" title="Total items" icon="far fa-payment"
                count="Site Verify" link="{{ route('admin.setting.index', ['page' => 'site-verify']) }}" sort="sort_3" />

        </div>
    </x-summary>



    <div class="card">
        <div class="card-header">
            Whatsapp Message API Settings <a href="https://developers.facebook.com/apps/?show_reminder=true"
                target="_blank">Whatsapp Apps</a>

        </div>
        <div class="card-body">
            <div>
                <a href="https://developers.facebook.com/tools/debug/accesstoken/" target="_blank">Long Live Token
                    Generate</a>
            </div>
            @php
                $sms_settings = [
                    [
                        'name' => 'token',
                        'key' => '36',
                    ],
                    [
                        'name' => 'secret',
                        'key' => '36',
                    ],
                    [
                        'name' => 'default_number_id',
                        'key' => '36',
                    ],
                    [
                        'name' => 'verify_token',
                        'key' => '36',
                    ],
                    [
                        'name' => 'status',
                        'key' => '36',
                    ],
                    [
                        'name' => 'verify_signature_status',
                        'key' => '36',
                    ],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="36">
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

            <div class="card">
                <div class="card-header">
                    Send Test Message
                </div>
                <form action="{{ route('admin.wa.sendMessage') }}" class="card-body form_ajax_submit" method="post">
                    @csrf
                    <div class="mb-2">
                        <label for="message">Message</label><br />
                        <textarea type="text" name="message" class="form-control" placeholder="Enter A message"></textarea>
                    </div>

                    <div class="mb-2">
                        <label for="phone">Whatsapp No</label> <br />
                        <input type="text" name="phone" class="form-control" placeholder="Enter A Whatsapp No">
                    </div>

                    <input type="submit" value="Send Message" class="btn btn-primary" />
                </form>
            </div>


        </div>
    </div>




@endsection
