{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', settings('footerlinksubheadings', 10))

{{-- Content Extends --}}
@section('content')
@php
    $service_page = App\Models\Page::where('page_type', 'service')->first();
    $brand_page = App\Models\Page::where('page_type', 'brand')->first();
    $filter_page = App\Models\Page::where('page_type', 'filter')->first();
@endphp


<div class="row">
    <div class="col-lg-4">

    <div class="accordion">

        {{-- Preset --}}
        <div class="card mb-3">
            <div class="card-header "  data-toggle="collapse" data-target="#preset" aria-expanded="true" aria-controls="preset">Preset</div>

            <div class="card-body collapse show" id="preset"  aria-labelledby="preset" data-parent=".accordion">
                <ul class="page_items">
                    <li class="d-flex justify-content-between " onclick="add_new_page_heading('category_menu1', 'left', '#', 1)" >Categories
                        Menu <i class="fas fa-plus"></i></li>
                </ul>
            </div>
        </div>
        {{-- end preset --}}


        {{-- Text --}}
        <div class="card mb-3">
            <div class="card-header collapsed" data-toggle="collapse" data-target="#text" aria-expanded="true" aria-controls="text">Text</div>
            <div class="card-body collapse" id="text" aria-labelledby="text" data-parent=".accordion">
                <form action="" class="Add_TExt_element">


                    @csrf

                    <input type="text" name="name" class="form-control mb-2" placeholder="Menu Name">
                    <input type="text" name="slug" class="form-control mb-2" placeholder="Link">
                    <input type="submit" class="btn btn-success float-right">
                </form>
            </div>
        </div>
        {{-- end Text --}}


        {{-- Pages --}}
        <div class="card mb-3">
            <div class="card-header collapsed" data-toggle="collapse" data-target="#pages" aria-expanded="true" aria-controls="pages">Pages</div>
            <div class="card-body collapse" id="pages" aria-labelledby="pages" data-parent=".accordion">
                <ul class="page_items">
                    @foreach ($pages as $items)
                    <li class="d-flex justify-content-between" onclick="add_new_page_heading('{{ $items->name }}', 'center', '{{ $items->slug }}')"
                        data-id="{{ $items->id }}">{{ $items->name ?? '' }}<i class="fas fa-plus"></i></li>
                    @endforeach
                </ul>
            </div>
        </div>
        {{-- end Pages --}}

        {{-- Category --}}
        @if($filter_page)
        <div class="card mb-3">
            <div class="card-header collapsed" data-toggle="collapse" data-target="#category" aria-expanded="true" aria-controls="category">Categories</div>
            <div class="card-body collapse" id="category" aria-labelledby="category" data-parent=".accordion">
                <ul class="page_items">
                    @foreach ($category as $items)
                    <li class="d-flex justify-content-between" onclick="add_new_page_heading('{{ $items->name }}', 'center', '{{ $filter_page->slug.'?category='.$items->slug }}')"
                        data-id="{{ $items->id }}" onclick="">{{ $items->name ?? '' }}<i class="fas fa-plus"></i></li>
                    @endforeach
                </ul>
            </div>
        </div>
        @endif
        {{-- end Category --}}



        {{-- Sub Category --}}
        @if($filter_page)
        <div class="card mb-3">
            <div class="card-header collapsed" data-toggle="collapse" data-target="#subcategory" aria-expanded="true" aria-controls="subcategory">Sub Categories</div>
            <div class="card-body collapse" id="subcategory" aria-labelledby="subcategory" data-parent=".accordion">
                <ul class="page_items">
                    @foreach ($subcategory as $items)
                    <li class="d-flex justify-content-between" onclick="add_new_page_heading('{{ $items->name }}', 'center', '{{ $filter_page->slug.'?subcategory='.$items->slug }}')"
                        data-id="{{ $items->id }}" onclick="">{{ $items->name ?? '' }}<i class="fas fa-plus"></i></li>
                    @endforeach
                </ul>
            </div>
        </div>
        @endif
        {{-- end Sub Category --}}


        {{--  Brand --}}
        @if($filter_page)
        <div class="card mb-3">
            <div class="card-header collapsed" data-toggle="collapse" data-target="#brand" aria-expanded="true" aria-controls="brand">Brand</div>
            <div class="card-body collapse" id="brand" aria-labelledby="brand" data-parent=".accordion">
                <ul class="page_items">
                    @foreach ($brand as $items)
                    <li class="d-flex justify-content-between" onclick="add_new_page_heading('{{ $items->name }}', 'center', '{{ $filter_page->slug.'?brand='.$items->slug }}')"
                        data-id="{{ $items->id }}" onclick="">{{ $items->name ?? '' }}<i class="fas fa-plus"></i></li>
                    @endforeach
                </ul>
            </div>
        </div>
        @endif
        {{-- end  brand --}}



        {{--  Service --}}
        @if($service_page)
        <div class="card mb-3">
            <div class="card-header collapsed" data-toggle="collapse" data-target="#service" aria-expanded="true" aria-controls="service">Service</div>
            <div class="card-body collapse" id="service" aria-labelledby="service" data-parent=".accordion">
                <ul class="page_items">
                    @foreach ($service as $items)
                    <li class="d-flex justify-content-between" onclick="add_new_page_heading('{{ $items->title }}', 'center', '{{ $service_page->slug.'?slug='.$items->slug }}')"
                        data-id="{{ $items->id }}" onclick="">{{ $items->title ?? '' }}<i class="fas fa-plus"></i></li>
                    @endforeach
                </ul>
            </div>
        </div>
        @endif
        {{-- end  Service --}}



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



    function add_new_page_heading(name, position, slug, preset = 0){
        $.ajax({
            url: '{{ route('admin.header.store') }}', // Your server endpoint
            method: 'POST',
            data: {

                '_token' : '{{  csrf_token() }}',
                'type': 'new',
                'position': position, //left center right
                'name': name, //menu name
                'slug': slug, //menu slug
                'preset': preset

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


    document.querySelector('.Add_TExt_element').addEventListener('submit', function(e) {
        e.preventDefault();
        var name = $(this).find($('input[name="name"]')).val();
        var slug = $(this).find($('input[name="slug"]')).val();
        add_new_page_heading(name,'left', slug, 0)
    })






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
        background-color: #b4b4b4;
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
