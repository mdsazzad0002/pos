{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Service Request')

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
       <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary" count="Service"   title="Service Point" icon="far fa-payment" link="{{ route('admin.service-request.service-point.index') }}" sort="sort_3" />
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
       Service Request
        <div>
        
        </div>
    </div>
    <div class="card-body">
        <table id="users" class="table table-bordered table-striped table-hover">
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
            { data: null, name: null, orderable: false, searchable: false, title:'SI', render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }},
            {data:'action', name:'action', searchable:false, orderable:false, title:'Action'},
            

            {data:'name', name:'name', title:'Name'},
            {data:'mobile', name:'mobile', title:'Mobile'},
            {data:'alt_mobile', name:'alt_mobile', title:'Alt Mobile'},
            {data:'address', name:'address', title:'Address'},
            {data:'service-point', name:'service-point', title:'Service Point', searchable:false, orderable:false},
            {data:'product', name:'product', title:'Product', searchable:false, orderable:false},

            {data:'status', name:'status', title:'Status', render: function (data, type, row, meta){
                return data == 1 ? 'Read' : 'Unread';
            }},
         
           

        ],
        createdRow: function (row, data) {
            if (data.status == 0) { 
                $(row).css('background-color', 'rgb(113 113 113)'); // Light red for inactive
            } 
        },
        buttons: true,
        dom:"<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>",
        error: function(xhr, error, thrown) {
            console.log(454)
            console.log(thrown)
            // Handle the error without displaying it in DataTables
            const errorMessage = xhr.responseJSON ? xhr.responseJSON.message : 'An unknown error occurred';
            console.log(errorMessage);

            // Optionally, display a custom message elsewhere
        }
    })
    // Disable default alert


</script>
@endpush
