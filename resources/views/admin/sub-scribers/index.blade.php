{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Subscriber')

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
      <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary" count="Mail"   title="Mail Box" icon="far fa-payment" link="{{ route('admin.imap.index') }}" sort="sort_3" />
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
       Subscriber
        <div>
            <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New Subscriber" data-href="{{ route('admin.sub-scribers.create') }}">+ Add New Subscriber</button>
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
            {data:'email', name:'email', title:'Email'},
    

            {data:'verified', name:'verified', title:'Verified', render: function (data, type, row, meta){
                return data == 1 ? 'Verified' : 'Unverified';
            }},
        ],

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
