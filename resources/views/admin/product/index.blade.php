{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', __('product.product_title'))

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.product')
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        {{ __('product.product_list') }}
        <div>
            @can('user create')

            <a class="btn btn-primary"  href="{{ route('admin.product.create') }}">+ Add New product</a>
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
    {{--  $.fn.dataTable.ext.errMode = 'none';  --}}
    {{--  $.fn.dataTableExt.sErrMode = 'throw';  --}}
    {{--  $.fn.dataTable.ext.errMode = 'throw';  --}}
    var datatableM =  $('#users').DataTable({
        serverSide:true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'name', name:'name'},
            {data:'image', name:'image', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],
        error: function(xhr, error, thrown) {
            console.log(454)
            console.log(thrown)
            // Handle the error without displaying it in DataTables
            const errorMessage = xhr.responseJSON ? xhr.responseJSON.message : 'An unknown error occurred';
            console.log(errorMessage);

            // Optionally, display a custom message elsewhere
        }
    })
    // Disable default alert


</script>
@endpush
