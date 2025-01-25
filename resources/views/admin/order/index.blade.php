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
        <table id="users" class="table table-bordered table-striped table-hover"> </table>
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
            { data: null, name: null, orderable: false, searchable: false, title:'SL', render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'action', name:'action', title:'Action', searchable:false, orderable:false},
            // {data:'view', name:'view', searchable:false, title:'View', orderable:false},
            {data:null, name:'order_id', title:'Order ID', render:function(data){
                return '#ID'+data.order_id;
            }},
            {data:'customer_name', name:'customers.name', title:'Name'},
            {data:'customer_phone', name:'customers.phone', title:'Phone'},
            {data:'order_status',  title:'Status', searchable:false, orderable:false},
            {data:'quantity', name:'quantity', title:'Quantity', searchable:false, orderable:false},
            {data:'price', name:'price', searchable:false, title:'Price', orderable:false},
            
        ]
    })
</script>
@endpush
