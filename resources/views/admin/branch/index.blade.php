{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('Branch', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        branch
        <div>
            @can('branch create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  branch" data-href="{{ route('admin.branch.create') }}">+ Add New Branch</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="branch" class="table table-bordered table-striped table-hover">
            <thead>
                <th>
                    SI
                </th>
                <th>
                    Name
                </th>
                <th>
                    Location
                </th>

                <th>
                    View
                </th>
                <th>
                    Action
                </th>
            </thead>
        </table>
    </div>
</div>



@endsection

@push('js')
<script>
    var datatableM =  $('#branch').DataTable({
        serverSide:true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'name', name:'name'},
            {data:'location', name:'location'},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ]
    })
</script>
@endpush
