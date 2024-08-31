{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('category', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Users

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
                    In Stock
                </th>
                <th>
                    Stock Alert
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
            {data:'name', name:'name'},
            {data:null, name:null, searchable:false, orderable:false, render:function(data){
                return '<img style="max-width:100px;" src="'+data.image_url+'"/>';
            }},
            {data:'quantity', name:'quantity', searchable:false, orderable:false},
            {data:'alert_quantity', name:'alert_quantity', searchable:false, orderable:false},


        ]
    })
</script>
@endpush
