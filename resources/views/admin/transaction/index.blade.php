{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Transactions')

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Transactions List
       
    </div>
    <div class="card-body">

        <table id="users" class="table table-bordered table-striped table-hover"> </table>
    </div>
</div>



@endsection

@push('js')
<script>
    var datatableM =  $('#users').DataTable({
        serverSide:true,
        processing:true,
        order: [[2, 'desc']],
        ajax:'',
        columns:[
            {data:'action', name:'action', title:'Order Action', searchable:false, orderable:false},
            {data:'order_status', name:'order_status', title:'Order Status', searchable:false, orderable:false},
            
            {data:null, name:'order_id_data', title:'Order ID', render:function(data){
                return data.order_id_data;
            }},
            { data: null, name: null, orderable: false, searchable: false, title:'SL', render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'mer_txnid', name:'mer_txnid', title:'Transaction ID'},
            {data:'status', name:'status', title:'Status'},
            {data:'by_method', name:'by_method', title:'Payment Method'},
         
            {data:'note', name:'note', searchable:false, title:'Note'},
            {data:'created_at', name:'created_at',  title:'Date', render(data, type, row, meta) {
                return moment(data).format('DD-MM-YYYY hh:mm:ss A');
            }},

        ],
        buttons: true,
        dom:database_dom_format,
        dom: database_dom_format,
        rowCallback: function(row, data, index) {
            $('td:eq(1)', row).css('background-color', '#f4d03f'); // Corrected placement
            $('td:eq(2)', row).css('background-color', '#f4d03f'); // Corrected placement
            $('td:eq(0)', row).css('background-color', '#f4d03f'); // Corrected placement
        }
    })
    $('td:eq(2)', row).css('background-color', '#f4d03f ');
</script>
@endpush
