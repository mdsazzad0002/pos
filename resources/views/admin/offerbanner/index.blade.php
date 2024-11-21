{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('offerbanner', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        offerbanner
        <div>
            {{-- @can('offerbanner create') --}}
                <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  offerbanner" data-href="{{ route('admin.offerbanner.create') }}">+ Add New offerbanner</button>
            {{-- @endcan --}}
        </div>
    </div>
    <div class="card-body">

            <table id="offerbanner" class="table table-bordered table-striped table-hover">
                <thead>
                    <th>
                        SI
                    </th>
                    <th>
                        Title
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
    var datatableM =  $('#offerbanner').DataTable({
        serverSide:true,
        processing:true,
        responsive:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            { data: 'title', name: 'title', orderable: false, searchable: true },

            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],

        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",

    })
</script>
@endpush
