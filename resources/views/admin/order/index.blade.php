{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('order', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Users
        <div>
            @can('user create')

            <a class="btn btn-primary"  href="{{ route('admin.order.create') }}">+ Add New order</a>
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
                    Order Id
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
            {data:null, name:'order_id', render:function(data){
                return '#ID'+data.order_id;
            }},
            {data:'name', name:'name'},
            {data:'quantity', name:'quantity', searchable:false, orderable:false},
            {data:'price', name:'price', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ]
    })
</script>
@endpush
