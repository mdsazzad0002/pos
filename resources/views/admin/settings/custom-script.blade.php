{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', 'Custom Scripts')

{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">

        </div>
    </x-summary>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/mode/javascript/javascript.min.js"></script>
    
    


    <div class="card">
        <div class="card-header">
           Custom Scripts ( with html tag supported)
        </div>
        <div class="card-body">
            @php
                $sms_settings = [
                    ['key' => '45', 'name' => 'custom_css__footer_code'],
                    ['key' => '45', 'name' => 'custom_css__head_code'],
                    ['key' => '45', 'name' => 'custom_css_footer_code'],
                    ['key' => '45', 'name' => 'custom_js_footer_code'],
                    ['key' => '45', 'name' => 'custom_css_head_code'],
                    ['key' => '45', 'name' => 'custom_js_head_code'],
                ];

                $sms_settings = json_decode(json_encode($sms_settings));

            @endphp


            {{-- update Sms Settings --}}
            <form class=" form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data"
                method="POST">
                @csrf
                <input hidden type="text" name="key_code" value="45">
                <div class="row">
                    @foreach ($sms_settings as $setting)
                        <div class="col-md-12 border">
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
