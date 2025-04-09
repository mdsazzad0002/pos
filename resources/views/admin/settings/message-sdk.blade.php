{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Message SDK')

{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">

        </div>
    </x-summary>



    <div class="card">
        <div class="card-header">
           Message SDK
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    ['key' => '31', 'name' => 's1_src_link_tawk_to', 'reference' => 'https://www.tawk.to/'],
                    ['key' => '31', 'name' => 'tawk_to_status'],
                    ['key' => '31', 'name' => 'crisp_chat_id', 'reference'=>'https://help.crisp.chat/en/article/where-can-i-find-my-website-id-1ylqx1s/' ],
                    ['key' => '31', 'name' => 'crisp_chat_status'],
                    ['key' => '31', 'name' => 'livechatinc_chat_id', 'reference'=>'https://www.livechat.com/'],
                    ['key' => '31', 'name' => 'livechatinc_chat_status'],
                    ['key' => '31', 'name' => 'intercom_chat_id', 'reference'=>'https://www.intercom.com/customer-service-platform/omnichannel'],
                    ['key' => '31', 'name' => 'intercom_chat_status'],
                    ['key' => '31', 'name' => 'tidio_chat_public_key', 'reference'=>'https://ecommerce-platforms.com/deals/tidio-chat'],
                    ['key' => '31', 'name' => 'tidio_chat_status'],
                    ['key' => '31', 'name' => 'tiledesk_chat_id', 'reference'=>'https://tiledesk.com/'],
                    ['key' => '31', 'name' => 'tiledesk_chat_status'],
                    ['key' => '31', 'name' => 'chat_status'],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="31">
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
