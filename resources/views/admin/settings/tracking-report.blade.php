{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'BD Courier')

{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" count="Courier" 
                title="Courier Settings" icon="far fa-payment" link="{{ route('admin.setting.index', ['page'=>'courier']) }}" sort="sort_3" />

         
        </div>
    </x-summary>



    <div class="card">
        <div class="card-header">
          BD Courier
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                
                    [
                        'name' => 'bd_courier_tracking_id',
                        'key' => '27',
                        'reference' => 'https://bdcourier.com/user/api',
                    ],
                    [
                        'name' => 'bd_courier_tracking_status',
                        'key' => '27',
                    ],
                  
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="27">
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
