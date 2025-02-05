{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('category', 10))

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.category')
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        {{ __('category.list') }}
        <div>
            @can('user create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  Category" data-href="{{ route('admin.category.create') }}">+ Add New Category</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="users" class="table table-bordered table-striped table-hover">
            <thead> </table>
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
            {data:'action', name:'action', searchable:false, orderable:false, title:'Action'},

            {data:'image', name:'image', title:'Image', searchable:false, orderable:false},
            {data:'background', name:'upload_bd', title:'Background', searchable:false, orderable:false},
            {data:'name', name:'name', title:'Name'},
            {data:'status', name:'status', title:'Status', render: function (data, type, row, meta) {
                return data == 1 ? 'Active' : 'Inactive';
            }},
            {data:'created_at', name:'created_at', title:'Date', render: function (data, type, row, meta) {
                return moment(data).format('DD-MM-YYYY hh:mm:ss A');
            }},



        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
    })
</script>
@endpush
