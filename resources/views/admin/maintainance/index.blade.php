{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Maintenance & DB Management')

{{--  Content Extends  --}}

@section('content')
<x-summary>
    <div class="row connectedSortable mb-2">
        {{-- @include('admin.dashboard._cards.brand') --}}
    </div>
</x-summary>



<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
       Database & Maintenance
        <div>
            {{-- @can('brand create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  brand" data-href="{{ route('admin.brand.create') }}">+ Add New brand</button>
            @endcan --}}
        </div>
    </div>
    <div class="card-body">
        <div class="row">
        <div class="col-12 mb-2">
            <div class="p-2 px-3 bg-warning text-dark border rounded border-left-1">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                &nbsp; This Change apply need few moments. Try to <a href="{{ url('clear') }}" class="btn btn-primary">Cache Clear</a> the page
            </div>
        </div>
     
         @can('maintenance mode')
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
            @endcan



            @can('maintenance debug')
            <div class="col-md-6">
                <form class="card" method="POST" action="{{route('admin.maintanance.update')}}">
                    @csrf
                    <div class="card-header d-flex justify-content-between">
                        <label for="debug_status" class="curson-pointer">
                           Debug & Maintanance Status
                        </label>
                        <div>
                        
                        </div>
                    </div>
                    <div class="card-body">
                       <div class="row">
                        {{-- Debug status --}}
                            <div class="col-6">
                                <label for="debug_status" class="mb-2">Debug Status</label>
                                <select name="debug_status" id="debug_status" class="form-control">
                                    <option value="true" @if($debug_status == true) selected @endif>True</option>
                                    <option value="false" @if($debug_status == false) selected @endif>False</option>
                                </select>
                            </div>
                            {{-- End degub status --}}

                            {{-- App_name --}}
                            <div class="col-6">
                                <label for="app_name" class="mb-2">App Name</label>
                                <input required type="text" value="{{$app_name}}" class="form-control" name="app_name" id="app_name"/>
                            </div>
                            {{-- End App Name --}}

                            {{--  APP_ENV --}}
                            <div class="col-6">
                                <label for="app_env" class="mb-2">APP ENV</label>
                               <select name="app_env" id="app_env" class="form-control">
                                   <option value="local" @if($app_env == 'local') selected @endif>Local</option>
                                   <option value="production" @if($app_env == 'production') selected @endif>Production</option>
                                   <option value="live" @if($app_env == 'live') selected @endif>Live</option>
                               </select>
                            </div>
                            {{-- End APP_ENV --}}



                       </div>

                        <button class="btn btn-primary btn-block my-2">Save Change</button>
                    </div>
                </form>
            </div>
            @endcan


            @can('maintenance database')
            <div class="col-md-6">
                <form class="card" method="POST" action="{{route('admin.maintanance.update')}}">
                    @csrf
                    <div class="card-header d-flex justify-content-between">
                        <label for="debug_status" class="curson-pointer">
                           Database Connection 
                        </label>
                        <div>
                        
                        </div>
                    </div>
                    <div class="card-body">
                       <div class="row">

                        <div class="col-6">
                            <label for="pp_connection">Connection</label>
                            <select name="pp_connection" id="pp_connection" class="form-control">
                                <option value="mysql" @if($pp_connection == 'mysql') selected @endif>MySQL</option>
                                <option value="pgsql" @if($pp_connection == 'pgsql') selected @endif>PostgreSQL</option>
                                <option value="sqlite" @if($pp_connection == 'sqlite') selected @endif>SQLite</option>
                                <option value="sqlsrv" @if($pp_connection == 'sqlsrv') selected @endif>SQL Server</option>
                            </select>
                        </div>

                        <div class="col-6">
                            <label for="app_port" class="mb-2">Port</label>
                            <input required type="text" value="{{$app_port}}" class="form-control" name="app_port" id="app_port"/>
                        </div>

                        <div class="col-6">
                            <label for="app_db" class="mb-2">Database</label>
                            <input required type="text" value="{{$app_db}}" class="form-control" name="app_db" id="app_db"/>
                        </div>

                        <div class="col-6">
                            <label for="app_pass" class="mb-2">Password</label>
                            <input required type="text" value="{{$app_pass}}" class="form-control" name="app_pass" id="app_pass"/>
                        </div>

                        <div class="col-6">
                            <label for="app_user" class="mb-2">User</label>
                            <input required type="text" value="{{$app_user}}" class="form-control" name="app_user" id="app_user"/>
                        </div>

                        <div class="col-6">
                            <label for="app_host" class="mb-2">Host</label>
                            <input required type="text" value="{{$app_host}}" class="form-control" name="app_host" id="app_host"/>
                        </div>





                       </div>

                        <button class="btn btn-primary btn-block my-2">Save Change</button>
                    </div>
                </form>
            </div>
            @endcan

        </div>
    </div>
</div>



@endsection

@push('js')

@endpush
