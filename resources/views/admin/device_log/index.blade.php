{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', __('settings.authenticted_history'))

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
            {{ __('settings.authenticated_list') }}
        </h5>

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
                    Notification
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
                    Last Active
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
            {data:null, name:null, searchable:false, orderable:false, render: function (data, type, row, meta) {
                return (data.notification_data == '' || data.notification_data == null )? 'Un Register' : '<button onclick="revock_notification(this)" data-id="'+data.id+'" class="btn btn-warning" title="Revoke Notification data">Registered</button>';

            }},
            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'name', name:'users.name'},
            {data:'device_type', name:'device_type'},
            {data:'ip', name:'ip'},
            {data:'logout', name:'logout', render: function (data, type, row, meta) {
                return data == 0 ? 'Default' : 'Suspended';
            }},

            {data:'suspend_date', name:'suspend_date',  searchable:false, orderable:false},
            {data:'last_active', name:'last_activity'},
           

        ],
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
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
    function revock_notification(thi){
        var id = $(thi).data('id');
        $.ajax({
            type:'get',
            url:'{{ route('admin.revoke_notification_data') }}?device='+id,
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
