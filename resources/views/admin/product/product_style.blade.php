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
                        $data1 = [
                            // =========================================================================
                            // Details Button
                            [ 'name' => 'detail_button_name', 'key' => '77' ],
                            [ 'name' => 'detail_button_status', 'key' => '77' ],
                            [ 'name' => 'detail_button_background_color', 'key' => '77' ],
                            [ 'name' => 'detail_button_text_color',  'key' => '77' ],
                            [ 'name' => 'v_details_not_service_status',  'key' => '77' ],
                            [ 'name' => 'v_details_service_status',  'key' => '77' ],
                        ];

                        $data2 = [
                            // =========================================================================
                            // Next Page button
                            [ 'name' => 'next_page_button_name',  'key' => '77'  ],
                            [ 'name' => 'next_page_button_background_color', 'key' => '77' ],
                            [  'name' => 'next_page_button_text_color',  'key' => '77'  ],
                            [  'name' => 'p_next_page_not_service_status',  'key' => '77'  ],
                            [  'name' => 'p_next_page_service_status',  'key' => '77'  ],
                        ];

                        $data3 = [  
                            // =========================================================================
                            // CART Button
                            [  'name' => 'cart_button_name',  'key' => '77'  ],
                            [  'name' => 'cart_button_status',  'key' => '77'  ],
                            [  'name' => 'cart_button_background_color',  'key' => '77'  ],
                            [  'name' => 'cart_button_text_color',  'key' => '77'  ],
                            [  'name' => 'v_cart_not_service_status',  'key' => '77'  ],
                            [  'name' => 'v_cart_service_status',  'key' => '77'  ],
                        ];
                        $data4 = [
                            // =========================================================================
                           // Buy Now
                            [  'name' => 'buy_now_button_name',  'key' => '77'  ],
                            [  'name' => 'buy_now_button_status',  'key' => '77'  ],
                            [  'name' => 'buy_now_button_background_color',  'key' => '77'  ],
                            [  'name' => 'buy_now_button_text_color',  'key' => '77'  ],
                            [  'name' => 'v_buy_now_not_service_status',  'key' => '77'  ],
                            [  'name' => 'v_buynow_service_status',  'key' => '77'  ],
                        ];

                        $data5 = [
                            // =========================================================================
                            // Whatsapp button
                            [  'name' => 'whatsapp_button_name',  'key' => '77'  ],
                            [  'name' => 'whatsapp_button_status',  'key' => '77'  ],
                            [  'name' => 'whatsapp_button_background_color',  'key' => '77'  ],
                            [  'name' => 'whatsapp_button_text_color',  'key' => '77'  ],
                            [  'name' => 'v_whatsapp_not_service_status',  'key' => '77'  ],
                            [  'name' => 'v_whatsapp_service_status',  'key' => '77'  ],

                            // =========================================================================
                           
                        ];




                        @endphp

                        <div class="row border py-2 border-dark">
                            @foreach (settings_data($data1) as $setting)
                            <div class="col-6">
                                @include( 'admin.settings.partials.main-setting', ['key' => 77])
                            </div>
                            @endforeach
                        </div>
                        <div class="row border py-2 border-dark">
                            @foreach (settings_data($data2) as $setting)
                            <div class="col-6">
                                @include( 'admin.settings.partials.main-setting', ['key' => 77])
                            </div>
                            @endforeach
                        </div>
                        <div class="row border py-2 border-dark">
                            @foreach (settings_data($data3) as $setting)
                            <div class="col-6">
                                @include( 'admin.settings.partials.main-setting', ['key' => 77])
                            </div>
                            @endforeach
                        </div>
                        <div class="row border py-2 border-dark">
                            @foreach (settings_data($data4) as $setting)
                            <div class="col-6">
                                @include( 'admin.settings.partials.main-setting', ['key' => 77])
                            </div>
                            @endforeach
                        </div>
                        <div class="row border py-2 border-dark">
                            @foreach (settings_data($data5) as $setting)
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
