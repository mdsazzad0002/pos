{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('LeadDeals', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        LeadDeal
        <div>
            @can('LeadDeal create')
                <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  LeadDeal" data-href="{{ route('admin.LeadDeal.create') }}">+ Add New LeadDeal</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="LeadDeal" class="table table-bordered table-striped table-hover">
            <thead>
                <th>
                    SI
                </th>
                <th>
                    Organization
                </th>
                <th>
                    Name
                </th>
                <th>
                    Note
                </th>
                <th>
                    Amount
                </th>
                <th>
                    Date
                </th>
                <th>
                    Stage
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
    var datatableM =  $('#LeadDeal').DataTable({
        serverSide:true,
        responsive: true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'account_name', name:'lead_accounts.name'},
            {data:'contacts_name', name:'lead_contacts.name'},
            {data:'note', name:'note'},
            {data:'amount', name:'amount'},
            {data:'date', name:'date'},
            {data:'stage_name', name:'lead_deal_stages.name'},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",

    })
</script>
@endpush