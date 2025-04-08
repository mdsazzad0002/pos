{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('subcategory', 10))

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.subcategory')
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Sub Category
        <div>
            @can('user create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog="modal-dialog-scrollable modal-dialog-centered modal-lg" data-title="Add New  subcategory" data-href="{{ route('admin.subcategory.create') }}">+ Add New subcategory</button>
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
                    Name
                </th>
                <th>
                    Category
                </th>
                <th>
                    Status
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
    var datatableM =  $('#users').DataTable({
        serverSide:true,
        processing:true,
        responsive: true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'name', name:'name'},
            {data:'category_name', name:'categories.name'},
            {data:'status', name:'status',  render: function (data, type, row, meta) {
                return data == 1 ? 'Active' : 'Inactive';
            }},
            {data:'image', name:'image', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],
        buttons: true,
        dom:database_dom_format,

    })
</script>
@endpush
