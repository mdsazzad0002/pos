{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('supplier', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Users
        <div>
            @can('user create')

            <button class="btn btn-primary" onclick="button_ajax(this)"  data-dialog=" modal-dialog-scrollable modal-dialog-centered"data-title="Add New  supplier" data-href="{{ route('admin.supplier.create') }}">+ Add New supplier</button>
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
                    Supplier ID
                </th>
                <th>
                    Name
                </th>
                <th>
                    Phone
                </th>
                <th>
                    Image
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
    var datatableM = $('#users').DataTable({
        serverSide:true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'id', name:'id'},
            {data:'name', name:'name'},
            {data:'phone', name:'phone'},
            {data:'image', name:'image', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print' // Define available buttons
         ],
         "dom": 'lBTrftip',
    })
</script>
@endpush
