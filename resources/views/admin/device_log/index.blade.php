{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('Authenticated History', 10))

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.device_log')
    </div>
</x-summary>


<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        <h5>
            Authenticated History List
        </h5>
        <div>
            @can('user create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  Category" data-href="{{ route('admin.category.create') }}">+ Add New Category</button>
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
                    Action
                </th>
                <th>
                    View
                </th>
                <th>
                    Name
                </th>
                <th>
                    Device Name
                </th>
                <th>
                    IP
                </th>
                <th>
                    Status
                </th>
                <th>
                    Suspend Date
                </th>
                <th>
                    Updated at
                </th>
                <th>
                    Created at
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
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'action', name:'action', searchable:false, orderable:false},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'name', name:'users.name'},
            {data:'device_type', name:'device_type'},
            {data:'ip', name:'ip'},
            {data:'logout', name:'logout', render: function (data, type, row, meta) {
                return data == 0 ? 'Default' : 'Suspended';
            }},
            {data:'suspend_date', name:'suspend_date'},
            {data:'updated_at_data', name:'updated_at'},
            {data:'created_at_data', name:'created_at'},

        ]
    })

    function change_device_status(id){
        $.ajax({
            type:'get',
            url:'{{ route('admin.device_access_check.status') }}?device='+id,
            success:function(data){
                data = JSON.parse(data);
                //console.log(data);          // Handle success
                if(data.type == 'success'){
                    flasher.success(data.title);
                    datatableM.ajax.reload();
                }else{
                    flasher.error(data.title);
                }
            },
            error: function (xhr, status, error) {
                error_show(xhr, status, error)

            }
        })
    }
</script>
@endpush
