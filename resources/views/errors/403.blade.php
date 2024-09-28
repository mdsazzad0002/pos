@extends('errors.master')
@section('title', '403')
@section('content')
<div class="d-flex align-items-center text-center flex-column hv-100 justify-content-center">
    <h1 class="text-danger display-1 font-weight-bold">
        403
    </h1>
    <div>
        Permission Denied
    </div>
    @include('errors.btns')
</div>

@endsection
