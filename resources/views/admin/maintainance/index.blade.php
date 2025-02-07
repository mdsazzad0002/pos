{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', __('maintanance.title'))

{{--  Content Extends  --}}

@section('content')
<x-summary>
    <div class="row connectedSortable mb-2">
        {{-- @include('admin.dashboard._cards.brand') --}}
    </div>
</x-summary>



<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        {{ __('maintanance.info') }}
        <div>
            {{-- @can('brand create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  brand" data-href="{{ route('admin.brand.create') }}">+ Add New brand</button>
            @endcan --}}
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <form class="card" method="POST" action="{{route('admin.maintanance.update')}}">
                    @csrf
                    <div class="card-header d-flex justify-content-between">
                        <label for="maintanance_status" class="curson-pointer">
                            Maintanance Status
                        </label>
                        <div>
                            <input type="checkbox" checked="" class="" hidden="" name="maintanance_status" value="0">
                            <input type="checkbox" class="toggle" @if($maintanance_status) checked="" @endif placeholder="Enter App Name" name="maintanance_status" id="maintanance_status" value="1">
                        </div>
                    </div>
                    <div class="card-body">
                        <label for="from_date" class="mb-2">From Date <span class="text-danger">({{  \Carbon\Carbon::parse($maintanance_from)->diffForHumans()}})</span></br>
                            <input required value="{{$maintanance_from}}" type="datetime-local" class="form-control" name="form_date" id="form_date"/>
                        </label>
                        <label for="to_date" class="mb-2">To Date <span class="text-danger">To Date - From Date =({{  \Carbon\Carbon::parse($maintanance_to)->diffForHumans($maintanance_from)}})</span></br>
                            <input required type="datetime-local" value="{{$maintanance_to}}" class="form-control" name="to_date" id="to_date"/>
                        </label>

                        <button class="btn btn-primary btn-block my-2">Save Change</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



@endsection

@push('js')

@endpush
