{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Unit')

{{--  Content Extends  --}}
@section('content')
<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.unit')
    </div>
</x-summary>


<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        {{ __('settings.unit_list') }}
        <div>
            @can('unit create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  unit" data-href="{{ route('admin.unit.create') }}">+ Add New unit</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="users" class="table table-bordered table-striped table-hover">
            <thead>
                <th>
                    SI
                </th>
                <th>
                    Action
                </th>
                <th>
                    View
                </th>
                <th>
                    Name
                </th>
                <th>
                    Short Name
                </th>
                <th>
                    Allow Decimal
                </th>

                <th>
                   Sub Items
                </th>
                <th>
                    Items Count
                </th>

            </thead>
        </table>
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
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'action', name:'action', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'name', name:'name'},
            {data:'sort_name', name:'sort_name'},
            {data:'decimal', name:'decimal', render:function(decimal){
                return decimal == 1 ? 'YES' : 'NO';
            }},
            {data:'subitems.name', name:'subitems.name', searchable:false, orderable:false},
            {data:'sub_items', name:'sub_items'},

        ],

        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
    })
</script>
@endpush
