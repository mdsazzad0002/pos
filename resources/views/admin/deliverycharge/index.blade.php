{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Delivery Charge')

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary" count="Courier "   title="Courier Settings" icon="far fa-payment" link="{{ route('admin.setting.index', ['page'=>'courier']) }}" sort="sort_3" />
    </div>
</x-summary>


<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Delivery Charge
        <div>
            @can('user create')

            <button class="btn btn-primary" data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New Delivery Charge" data-href="{{ route('admin.deliverycharge.create') }}">+ Add New Delivery Charge</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="users" class="table table-bordered table-striped table-hover"></table>
    </div>
</div>



@endsection

@push('js')
<script>
    var datatableM = $('#users').DataTable({
        serverSide:true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, title: 'SL', orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},          
            {data:'name', name:'name', title:'Name'},
            {data:'amount', name:'amount', title:'Amount'},
            {data:'view', name:'view', searchable:false, orderable:false, title:'View'},
            {data:'action', name:'action', searchable:false, orderable:false, title:'Action'}
        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
    })
</script>
@endpush
