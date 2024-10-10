{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('Translation', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Users
        <div>
            @can('user create')

            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  Translation" data-href="{{ route('admin.Translation.create') }}">+ Add New Translation</button>
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
                    Key
                </th>
                <th>
                    Language
                </th>
                <th>
                    Value
                </th>
                <th>
                    type
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
    function update_translation_ln(thi, id){
        var key = $(thi).parents('tr').find('input.key').val();
        var value = $(thi).parents('tr').find('input.value').val();
        var type = $(thi).parents('tr').find('input.type').val();

        $.ajax({
            type:'post',
            url:"{{ url('admin/Translation') }}/"+id,
            data:{
                'key': key,
                'value':value,
                'type':type,
                '_method':'put',
            },
            success:function(data){
                data = JSON.parse(data);
                //console.log(data);          // Handle success
                if(data.type == 'success'){
                    flasher.success(data.title);
                }else{
                    flasher.error(data.title);
                }
            },
            error: function (xhr, status, error) {
                error_show(xhr, status, error)

            }
        })
    }
    var datatableM =  $('#users').DataTable({
        serverSide:true,
        processing:true,
        responsive:true,
        ajax:'',
        columns:[
            { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'key', name:'key', render: function (data, type, row, meta) {
                return '<input class="form-control key" value="'+row.key+'"/>';
            }},
            {data:'language_name', name:'languages.name'},
            {data:'value', name:'value' , render: function (data, type, row, meta) {
                return '<input class="form-control value" value="'+row.value+'"/>';
            }},
            {data:'type', name:'type' , render: function (data, type, row, meta) {
                return '<input class="form-control type" value="'+row.type+'"/>';
            }},

            {data:'view', name:'view', searchable:false, orderable:false},
            {data:'action', name:'action', searchable:false, orderable:false}
        ],
        initComplete: function(settings, json) {
            // Call your function here
            {{--  update_translation_ln();  --}}
        }
    })
</script>
@endpush
