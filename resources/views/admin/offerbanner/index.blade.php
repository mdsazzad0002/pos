{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Offer & Banner')

{{--  Content Extends  --}}
@section('content')
<x-summary>
    <div class="row connectedSortable mb-2">
        {{-- <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" items="site_verification" where=""
            title="Total items" icon="far fa-payment" link="#" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-success" count="Site Tag"
            title="Site Tag Management" icon="far fa-info" link="{{ route('admin.setting.index', ['page' => 'site-tag']) }}" sort="sort_3" /> --}}
    </div>
</x-summary>




<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Offer & Banner
        <div>
            {{-- @can('offerbanner create') --}}
                <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  offerbanner" data-href="{{ route('admin.offerbanner.create') }}">+ Add New offerbanner</button>
            {{-- @endcan --}}
        </div>
    </div>
    <div class="card-body">

            <table id="offerbanner" class="table table-bordered table-striped table-hover">
           
            </table>

        </div>

</div>



@endsection

@push('js')
<script>
    var datatableM =  $('#offerbanner').DataTable({
        serverSide:true,
        processing:true,
        responsive:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, title: 'SL', searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            { data: 'type_of_offer', name: 'type_of_offer', title: 'Type', orderable: false, searchable: true },
            { data: 'title', name: 'title', title: 'Title', orderable: true, searchable: true },
            { data: 'status', name: 'status', title: 'Status', orderable: true, searchable: false, render: function (data, type, row, meta) {
                return data == 1 ? 'Active' : 'Inactive';
            }},
            {data:'view', name:'view', title:'View', searchable:false, orderable:false},
            {data:'action', name:'action', title:'Action', searchable:false, orderable:false}
        ],

        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",

    })
</script>
@endpush
