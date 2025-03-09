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

                <div class="card">
                    <div class="card-header">
                        Universal
                    </div>
                    <div class="card-body">
                        @php
                        $data = [
                            [
                                'name' => 'detail_button_name',
                                'key' => '77'
                            ],
                            [
                                'name' => 'detail_button_status',
                                'key' => '77'
                            ],
                            [
                                'name' => 'cart_button_name',
                                'key' => '77'
                            ],
                            [
                                'name' => 'cart_button_status',
                                'key' => '77'
                            ],
                            [
                                'name' => 'buy_now_button_name',
                                'key' => '77'
                            ],
                            [
                                'name' => 'buy_now_button_status',
                                'key' => '77'
                            ],
                            [
                                'name' => 'whatsapp_button_name',
                                'key' => '77'
                            ],
                            [
                                'name' => 'whatsapp_button_status',
                                'key' => '77'
                            ],
                            [
                                'name' => 'next_page_button_name',
                                'key' => '77'
                            ],
                        ];


                // $v_details_name = settings('detail_button_name', 77);
                // $v_details_status = settings('detail_button_status', 77);

                // $v_cart_name = settings('cart_button_name', 77);
                // $v_cart_status = settings('cart_button_status', 77);

                // $v_buy_now_name = settings('buy_now_button_name', 77);
                // $v_buy_now_status = settings('buy_now_button_status', 77);

                // $v_whatsapp_name = settings('whatsapp_button_name', 77);
                // $v_whatsapp_status = settings('whatsapp_button_status', 77);

                // $v_next_page_name = settings('next_page_button_name', 77);


                        @endphp

                        <div class="row">
                            @foreach (settings_data($data) as $setting)
                            <div class="col-6">
                                @include( 'admin.settings.partials.main-setting', ['key' => 77])
                            </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>



@livewireScripts
@endsection
