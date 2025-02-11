{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('Product Type', 10))

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.category')
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Custom Product List
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

            {data:'name', name:'name', title:'Name'},
            {data:'email', name:'email', title:'Email'},
            {data:'phone', name:'phone', title:'Phone'},
            {data:'address', name:'address', title:'Address'},
            {data:'order_type', name:'order_type', title:'Type', render: function (data, type, row, meta) {
                return data == 0 ? 'Bluk' : 'Custom';
            }},
            {data:'date', name:'date', title:'Date'},
            {data:'quantity', name:'quantity', title:'Quantity'},
            {data:'description', name:'description', title:'Description'},
            {data:'created_at', name:'created_at', title:'Date', render: function (data, type, row, meta) {
                return moment(data).format('DD-MM-YYYY hh:mm:ss A');
            }},



        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
    })
</script>
@endpush
