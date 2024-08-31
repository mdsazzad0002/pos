{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('purchase', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Users
        <div>
            @can('user create')

            <a class="btn btn-primary"  href="{{ route('admin.purchase.create') }}">+ Add New purchase</a>
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
                    Image
                </th>
                <th>
                    Name
                </th>
                <th>
                    Quantaty
                </th>
                <th>
                    Price
                </th>
                <th>
                    Total Price
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
    var datatableM =  $('#users').DataTable({
        serverSide:true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'image', name:'image', searchable:false, orderable:false},
            {data:'name', name:'name'},
            {data:'quantity', name:'quantity', searchable:false, orderable:false},
            {data:'price', name:'price', searchable:false, orderable:false},
            {data:'total_price', name:'total_price', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ]
    })
</script>
@endpush
