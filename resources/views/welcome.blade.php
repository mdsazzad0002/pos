{{-- Master Include  --}}
@extends('layout.frontend.master')

{{-- Define Site Title  --}}
@section('title', settings('dashboard_title', 10))


{{-- Content Extends  --}}
@section('content')




@include('frontend.setting.cookie.cookie')









@include('frontend.setting.messageing.takto')
@include('frontend.setting.apps.pwa')
<!--End of Tawk.to Script-->

@if(session('message'))
    <div class="alert alert-{{ session('message.status') }}">
        {{ session('message.message') }}
    </div>
@endif


















@endsection
