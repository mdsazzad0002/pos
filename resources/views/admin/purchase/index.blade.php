{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('purchase', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Purchase
        <div>
            @can('user create')

            <a class="btn btn-primary"  href="{{ route('admin.purchase.create') }}">+ Add New purchase</a>
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
    var datatableM =  $('#users').DataTable({
        serverSide:true,
        processing:true,
        stateSave: true,
        ajax:'',
        columns:[
            { data: null, name: null,  title:'SL', orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'image',  name:'image',title:'Supplier Image', searchable:false, orderable:false},
            {data:'supplier',  name:'suppliers.name',title:'Supplier Name',},
            
            {data:'price', title:'Total', name:'purchases.total'},
           
            {data:'buying_date',  name:'buying_date', title:'Buying Date', render(data, type, row, meta) {
                const date = new Date(row.buying_date);  // Convert the data into a Date object
                return date.toLocaleDateString('en-GB', {
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit',
                    hour12: true
                });
            }},

            {data:'view', name:'view', title:'View', searchable:false, orderable:false},
            {data:'action', name:'action', title:'Action', searchable:false, orderable:false}
        ],

        dom:database_dom_format
    })
</script>
@endpush

