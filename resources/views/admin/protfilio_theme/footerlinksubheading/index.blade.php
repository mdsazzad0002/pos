{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('footerlinksubheadings', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        footerlinksubheading
        <div>
            @can('footerlinksubheading create')
                <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  footerlinksubheading" data-href="{{ route('admin.footerlinksubheading.create') }}">+ Add New footerlinksubheading</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        <table id="footerlinksubheading" class="table table-bordered table-striped table-hover">
            <thead>
                <th>
                    SI
                </th>

                <th>
                    Heading
                </th>
                <th>
                    Icon
                </th>
                <th>
                    Title
                </th>
                <th>
                    Link
                </th>
                <th>
                    Status
                </th>
                <th>
                    Date
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
    var datatableM =  $('#footerlinksubheading').DataTable({
        serverSide:true,
        responsive: true,
        processing:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'heading', name:'footer_link_headings.title'},
            {data:'icon', name:'icon', searchable:false, orderable:false, render: function (data, type, row, meta) {
                return '<i class="'+data+'"></i>';
            }},
            {data:'title', name:'title'},
            {data:'url', name:'url', searchable:false, orderable:false, render: function (data, type, row, meta) {
                return '<button target="_blank" onclick="copyElement(this)" class="btn btn-primary" data-href="'+data+'"><i class="bi bi-copy"></i> Link</button>';
            }},
            {data:'status', name:'status', render: function (data, type, row, meta) {
                return  data == 1 ? 'Active' : 'Inactive';
            }},
            {data:'updated_at', name:'updated_at', render: function (data, type, row, meta) {
                return  new Date(data).toLocaleDateString('en-GB',
                    { day: '2-digit',
                        month: '2-digit',
                        year: 'numeric',
                        hour: '2-digit',
                        minute: '2-digit',
                        hour12: true
                    }
                );
            }},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",

    })
</script>
@endpush
