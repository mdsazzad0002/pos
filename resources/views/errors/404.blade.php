@extends('errors.master')
@section('title', '404')
@section('content')
<div class="d-flex align-items-center text-center flex-column hv-100 justify-content-center">
    <h1 class="text-danger display-1 font-weight-bold">
        404
    </h1>
    <div>
        Page Not Found
    </div>
    <br>
    @include('errors.btns')
</div>

@endsection
