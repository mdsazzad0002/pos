{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', settings('footerlinksubheadings', 10))

{{-- Content Extends --}}
@section('content')

        <div class="row">
            <div class="col-lg-4">

                <div class="card mb-3">
                    <div class="card-header">Preset</div>
                    <div class="card-body">
                        <ul class="page_items">
                           <li class="d-flex justify-content-between " onclick="category_menu('category_menu1')" >Categories Menu <i class="fas fa-plus"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="card mb-3">
                    <div class="card-header">Text</div>
                    <div class="card-body">
                        <form action="" class="Add_TExt_element">
                            <input type="text" name="type" id="" value="new" class="d-none">
                            <input type="text" name="text_item" id="" value="1" class="d-none">
                            @csrf

                            <input type="text" name="name" class="form-control mb-2" placeholder="Menu Name">
                            <input type="text" name="url" class="form-control mb-2" placeholder="Link">
                            <input type="submit" class="btn btn-success float-right">
                        </form>
                    </div>
                </div>

                <div class="card mb-3">
                    <div class="card-header">Pages</div>
                    <div class="card-body">
                        <ul class="page_items">
                            @foreach ($pages as $items)
                                <li class="d-flex justify-content-between" onclick="add_new_page_heading({{ $items->id }})" data-id="{{ $items->id }}" onclick="">{{  $items->name ?? '' }}<i class="fas fa-plus"></i></li>
                            @endforeach
                        </ul>
                    </div>
                </div>

            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
                        Heading
                    </div>
                    <div class="card-body list_view_data">

                            {{-- load by ajax --}}

                    </div>
                </div>

            </div>
        </div>




<script>
     function sorting(){
        $("#sortable_items_data").sortable({
            update: function(event, ui) {
                var sortedIDasdfs = $(this).sortable("toArray");

                $.ajax({
                    url: '{{ route('admin.header.store') }}', // Your server endpoint
                    method: 'POST',
                    data: {
                        'orderid' :  sortedIDasdfs,
                        '_token' : '{{  csrf_token() }}',
                        'method':'post',
                        'order':true,
                    },
                    success: function(response) {
                    console.log("Order updated successfully:", response);
                    },
                    error: function(xhr, status, error) {
                        console.error("Error updating order:", error);
                    }
                });
            }
        });
        $("#sortable_items_data").disableSelection();
    }



    function add_new_page_heading(id){
        $.ajax({
            url: '{{ route('admin.header.store') }}', // Your server endpoint
            method: 'POST',
            data: {
                pageid: id,
                '_token' : '{{  csrf_token() }}',
                'type': 'new'
            },
            success: function(response) {
                console.log("Order updated successfully:", response);
                load_header_list()
            },
            error: function(xhr, status, error) {
                console.error("Error updating order:", error);
            }
        })
    }



    function Add_TExt_element(){
        document.querySelector('.Add_TExt_element').addEventListener('submit', function (e){

            e.preventDefault();
            var form_dat = new FormData($(this)[0]);

            $.ajax({
                url: '{{ route('admin.header.store') }}', // Your server endpoint
                method: 'POST',
                processData: false, // Important for FormData
                contentType: false, // Imp
                data: form_dat,
                success: function(response) {
                    console.log("Order updated successfully:", response);
                    load_header_list()
                },
                error: function(xhr, status, error) {
                    console.error("Error updating order:", error);
                }
            });

        });

    }
    Add_TExt_element();



    function load_header_list(){
        $.ajax({
            url: '{{ route('admin.header.view') }}', // Your server endpoint
            method: 'get',
            success: function(response) {
                $('.list_view_data').html(response);
                sorting()
                onclick_by_status_change('.list_view_data');
            },
            error: function(xhr, status, error) {
                console.error("Error updating order:", error);
            }
        })
    }



    setTimeout(() => {
        load_header_list()
    }, 1500);

    function category_menu(category_menu){
        $.ajax({
            url: '{{ route('admin.header.store') }}', // Your server endpoint
            method: 'POST',
            data: {

                '_token' : '{{  csrf_token() }}',
                'type': 'new',
                'category_menu': category_menu
            },
            success: function(response) {
                console.log("Order updated successfully:", response);
                load_header_list()
            },
            error: function(xhr, status, error) {
                console.error("Error updating order:", error);
            }
        })
    }
    function delete_header_item(header_id){
        $.ajax({
            url: '{{ route('admin.header.delete') }}', // Your server endpoint
            method: 'POST',
            data: {

                '_token' : '{{  csrf_token() }}',
                'type': 'delete',
                'header_id': header_id,
            },
            success: function(response) {
                console.log("Order updated successfully:", response);
                load_header_list()
            },
            error: function(xhr, status, error) {
                console.error("Error updating order:", error);
            }
        })
    }


    function onclick_by_status_change(items_class){
        var data_item = document.querySelector(items_class);
        var data_items_li = data_item.querySelectorAll('li');
        data_items_li.forEach(item => {
            // var item_id = item.getAttribute('id');
            item.querySelector('.toggle').addEventListener('change', function(){
                $.ajax({
                    'type':'post',
                    'method':'post',
                    'url': '{{ route('admin.header.store') }}',
                    data:{
                        '_token' : '{{  csrf_token() }}',
                        'status_change' : this.checked ? 1 : 0,
                        'status_id' : this.getAttribute('data-id'),
                    },
                    success: function(response) {
                        console.log("Order updated successfully:", response);
                        // load_header_list()
                    },
                    error: function(xhr, status, error) {
                        console.error("Error updating order:", error);
                    }
                });
            })
        });

    }


</script>


@endsection

@push('css')
<style>
    .page_items,
    #sortable_items_data {
        list-style-type: none;
        padding: 0;
    }

    .page_items li,
    #sortable_items_data li {
        margin: 10px;
        padding: 10px;
        background-color: #575757;
        cursor: pointer;
    }

    ul#sortable_items_data li {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    span.item_trash_btn {
    position: absolute;
    left: -20px;
    top: 0px;
    background: red;
    width: 30px;
    height: 30px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}


.ui-sortable-handle {
    position: relative;
}
</style>
@endpush


