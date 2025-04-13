@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'FCM Settings')
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" items="fcm" where="" title="Total items"
                icon="far fa-payment" link="#" sort="sort_3" />
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" items="fcm" where="status" title="Status"
                icon="far fa-payment" link="#" sort="sort_3" />
        </div>
    </x-summary>

    <div class="card">
        <div class="card-header">
            <h3>
                FCM Settings
            </h3>
        </div>
        <div class="card-body">
            @php
                $fcm = \App\Models\fcm::first();
            @endphp
            <form action="{{ route('admin.fcm_notification.store') }}" method="POST" class="form_ajax_submit">
                @csrf
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="fcm_private_key"> Fcm Private Key</label>
                            <textarea type="text" name="fcm_private_key" id="fcm_private_key" class="form-control">{{ $fcm->fcm_private_key ?? '' }}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="fcm_public_key"> Fcm Public Key</label>
                            <textarea type="text" name="fcm_public_key" id="fcm_public_key" class="form-control">{{ $fcm->fcm_public_key ?? '' }}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="fcm_status_key" class="w-100">FCM Status</label>
                            <input type="checkbox" checked class="" hidden name="fcm_status_key" value="0">
                            <input type="checkbox" class="toggle" placeholder="Enter App Name" name="fcm_status_key"
                                {{ $fcm->fcm_status_key ? 'checked' : '' }} id="fcm_status_key" value="1">

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

            <form action="{{ route('admin.sendNotification') }}" method="POST" class="form_ajax_submit">
                @csrf

                @php
                    $device = \App\Models\Device::whereNot('notification_data', null)
                        ->whereNot('notification_data', '')
                        ->where('logout', 0)
                        ->pluck('creator');
                    $users = \App\Models\User::whereIn('id', $device)->get();
                @endphp


                <br/>
                <br/>
                <br/>
                <h3>Send Notification Specific User</h3>
                <hr/>
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="title">User</label>
                            <select name="user_id" id="user_id" class="form-control">
                                <option value="">Select User</option>
                                @foreach ($users as $user)
                                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                 
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="title">Title</label>
                            <input type="text" name="fcm_title" id="title" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="title">target_url</label>
                            <input type="text" name="target_url" id="title" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="from-group">
                            <label for="body">Body</label>
                            <textarea type="text" name="fcm_message" id="body" class="form-control" rows="3" placeholder="Body"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="form-group mt-2">
                            <button class="btn btn-success" type="submit">Send Notification</button>
                        </div>
                    </div>
            </form>
        </div>

    </div>



    <input hidden type="text" value="{{ $fcm->fcm_public_key ?? '' }}" id="notification_dynamic_pubic">
    <input hidden type="text" value="{{ url('/') }}" id="local_url_fcm">


    <script src="{{ asset('admin_push_notification_app.js') }}">
    @endsection
