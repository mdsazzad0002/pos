{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('services', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        service
        <div>
            @can('service create')
                <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-centered modal-lg" data-title="Add New  service" data-href="{{ route('admin.service.create') }}">+ Add New service</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="service" class="table table-bordered table-striped table-hover"> </table>
    </div>
</div>



@endsection

@push('js')
<script>
    var datatableM =  $('#service').DataTable({
        serverSide:true,
        responsive: true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'icon_class', name:'icon_class', searchable:false, title:'Icon', orderable:false, render: function (data, type, row, meta) {
                return '<i class="'+data+'"></i>';
            }},
            {data:'title', name:'title', title:'Title'},
            {data:'status', name:'status', title:'Status', render: function (data, type, row, meta) {
                return  data == 1 ? 'Active' : 'Inactive';
            }},
            {data:'image', name:'image', title:'Image', searchable:false, orderable:false},
            {data:'background', name:'background', title:'Background', searchable:false, orderable:false},
            {data:'view', name:'view', title:'View', searchable:false, orderable:false},
            {data:'action', name:'action', title:'Action', searchable:false, orderable:false}
        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",

    })
</script>
@endpush
