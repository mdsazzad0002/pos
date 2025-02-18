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
            { data: null, name: null, orderable: false, searchable: false, title:'SI', render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'action', name:'action', searchable:false, orderable:false, title:'Action'},
            {data:'view', name:'view', searchable:false, orderable:false, title:'View'},

            {data:'name', name:'name', title:'Name'},
            {data:'category_name', name:'category', title:'Category', searchable:false, orderable:false},
            {data:'status_text', name:'status', title:'Status'},
            {data:'variant_on', name:'variant_on', title:'Variant Status', render: function (data, type, row, meta) {
                return data == 1 ? 'Variant' : '';
            }},
            {data: 'quantity', name:'quantity', title: 'Stock Quantity', render :function(data, type,row,meta){
                if(row.variant_on == 1){
                    return 'Variant Product'
                }else{
                    return data;
                }
            }},
            {data:'old_price', name:'old_price', title:'Old Price'},
            {data:'selling_price', name:'selling_price', title:'Selling Price'},
            {data:'image', name:'image', searchable:false, orderable:false, title:'Image'},

        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
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
