@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('order', 10))
@section('content')
    <div class="card">
        <div class="card-body">
            <form action="" method="POST" class="form_ajax_submit">
                @csrf
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="fcm_private_key"> {{ __('fcm.fcm_private_key') }}</label>
                            <textarea type="text" name="fcm_private_key" id="fcm_private_key" class="form-control">{{  $fcm->fcm_private_key ?? '' }}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="fcm_public_key">{{ __('fcm.fcm_public_key') }}</label>
                            <textarea type="text"   name="fcm_public_key" id="fcm_public_key" class="form-control">{{  $fcm->fcm_public_key ?? ''  }}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="fcm_status_key" class="w-100">{{ __('fcm.fcm_status_key') }}</label>
                            <input type="checkbox" checked class="" hidden  name="fcm_status_key"   value="0">
                            <input type="checkbox" class="toggle"  placeholder="Enter App Name" name="fcm_status_key" {{ $fcm->fcm_status_key  ? 'checked' : '' }} id="fcm_status_key" value="1">

                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group mt-2">
                            <button class="btn btn-success" type="submit">Save</button>
                        </div>
                    </div>
                </div>
            </form>

            <h3>
                Test your notification
            </h3>
            <button id="push-subscription-button">Push notifications !</button>
            <button id="send-push-button">Send a push notification</button>

        </div>
    </div>



    <input hidden type="text" value="{{  $fcm->fcm_public_key ?? '' }}" id="notification_dynamic_pubic">
    <input  hidden type="text" value="{{  url('/') }}" id="local_url_fcm">


    <script src="{{ asset('admin_push_notification_app.js') }}">

@endsection
