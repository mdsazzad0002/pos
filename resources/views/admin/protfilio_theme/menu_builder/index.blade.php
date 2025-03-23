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
            <div class="card-body list_view_data dd">

                {{-- load by ajax --}}

            </div>
        </div>

    </div>
</div>



    @push('js')
     <script src="https://cdnjs.cloudflare.com/ajax/libs/Nestable/2012-10-15/jquery.nestable.min.js" integrity="sha512-a3kqAaSAbp2ymx5/Kt3+GL+lnJ8lFrh2ax/norvlahyx59Ru/1dOwN1s9pbWEz1fRHbOd/gba80hkXxKPNe6fg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
     
    @endpush


<script>
    function sorting(){


        $("#sortable_items_data").nestable({
            group: 1,
            maxDepth: 3 // Adjust as needed
        }).on("change", function () {
            updateOrder();
        });



    }
    function updateOrder() {
        let sortedData = $("#sortable_items_data").nestable("serialize");
        console.log("Updated Order:", sortedData);

        $.ajax({
            url: "{{ route('admin.header.store') }}",
            method: "POST",
            data: {
                order: sortedData,
                _token: "{{ csrf_token() }}",
            },
            success: function (response) {
                console.log("Order updated successfully:", response);
            },
            error: function (xhr) {
                console.error("Error updating order:", xhr.responseText);
            }
        });
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
        border:1px solid white;

    }

    ul#sortable_items_data li {
        display: flex;
        align-items: center;
        justify-content: space-between;
        position: relative;
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














    .dd {
        position: relative;
        display: block;
        margin: 0;
        padding: 0;
        max-width: 100%;
        list-style: none;
        font-size: 13px;
        line-height: 20px;
    }

    .dd-list {
        display: block;
        position: relative;
        margin: 0;
        padding: 0;
        list-style: none;
    }

    .dd-list .dd-list {
        padding-left: 30px;
    }

    .dd-collapsed .dd-list {
        display: none;
    }

    .dd-item,
    .dd-empty,
    .dd-placeholder {
        display: block;
        position: relative;
        margin: 0;
        padding: 0;
        min-height: 20px;
        font-size: 13px;
        line-height: 20px;
    }




    .dd-item>button {

        position: relative;
        cursor: pointer;
        float: left;
        width: 25px;
        height: 30px;
        margin: 0px 0px;
        padding: 0;
        text-indent: 100%;
        white-space: nowrap;
        overflow: hidden;
        border: 0;
        background: #4CAF50;
        font-size: 12px;
        line-height: 1;
        color: #fff;
        text-align: center;
        font-weight: bold;

    }

    .dd-item>button:before {
        content: '+';
        display: block;
        position: absolute;
        width: 100%;
        text-align: center;
        text-indent: 0;
    }

    .dd-item>button[data-action="collapse"]:before {
        content: '-';
    }

    .dd-placeholder,
    .dd-empty {
        margin: 5px 0;
        padding: 0;
        min-height: 30px;
        background: #f2fbff;
        border: 1px dashed #b6bcbf;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }

    .dd-empty {
        border: 1px dashed #bbb;
        min-height: 100px;
        background-color: #e5e5e5;
        background-image: -webkit-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff),
            -webkit-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff);
        background-image: -moz-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff),
            -moz-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff);
        background-image: linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff),
            linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff);
        background-size: 60px 60px;
        background-position: 0 0, 30px 30px;
    }

    .dd-dragel {
        position: absolute;
        pointer-events: none;
        z-index: 9999;
    }

    .dd-dragel>.dd-item .dd-handle {
        margin-top: 0;
    }

    .dd-dragel .dd-handle {
        -webkit-box-shadow: 2px 4px 6px 0 rgba(0, 0, 0, .1);
        box-shadow: 2px 4px 6px 0 rgba(0, 0, 0, .1);
    }

    /**
* Nestable Extras
*/
    .nestable-lists {
        display: block;
        clear: both;
        padding: 30px 0;
        width: 100%;
        border: 0;
        border-top: 2px solid #ddd;
        border-bottom: 2px solid #ddd;
    }

    #nestable-menu {
        padding: 0;
        margin: 20px 0;
    }

    #nestable-output,
    #nestable2-output {
        width: 100%;
        height: 7em;
        font-size: 0.75em;
        line-height: 1.333333em;
        font-family: Consolas, monospace;
        padding: 5px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }

    #nestable2 .dd-handle {
        color: #fff;
        border: 1px solid #999;
        background: #bbb;
        background: -webkit-linear-gradient(top, #bbb 0%, #999 100%);
        background: -moz-linear-gradient(top, #bbb 0%, #999 100%);
        background: linear-gradient(top, #bbb 0%, #999 100%);
    }

    #nestable2 .dd-handle:hover {
        background: #bbb;
    }

    #nestable2 .dd-item>button:before {
        color: #fff;
    }

    .dd {

        width: 100%;
    }

    .dd+.dd {
        margin-left: 2%;
    }

    .dd-hover>.dd-handle {
        background: #2ea8e5 !important;
    }

    /**
* Nestable Draggable Handles
*/
    .dd3-content {
        display: block;
        height: 30px;
        margin: 5px 0;
        padding: 5px 10px 5px 40px;
        color: #333;
        text-decoration: none;
        font-weight: bold;
        border: 1px solid #ccc;
        background: #fafafa;
        background: -webkit-linear-gradient(top, #fafafa 0%, #eee 100%);
        background: -moz-linear-gradient(top, #fafafa 0%, #eee 100%);
        background: linear-gradient(top, #fafafa 0%, #eee 100%);
        -webkit-border-radius: 3px;
        border-radius: 3px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }

    .dd3-content:hover {
        color: #2ea8e5;
        background: #fff;
    }

    .dd-dragel>.dd3-item>.dd3-content {
        margin: 0;
    }

    .dd3-item>button {
        margin-left: 30px;
    }

    .dd3-handle {
        position: absolute;
        margin: 0;
        left: 0;
        top: 0;
        cursor: pointer;
        width: 30px;
        text-indent: 100%;
        white-space: nowrap;
        overflow: hidden;
        border: 1px solid #aaa;
        background: #ddd;
        background: -webkit-linear-gradient(top, #ddd 0%, #bbb 100%);
        background: -moz-linear-gradient(top, #ddd 0%, #bbb 100%);
        background: linear-gradient(top, #ddd 0%, #bbb 100%);
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
    }

    .dd3-handle:before {
        content: '≡';
        display: block;
        position: absolute;
        left: 0;
        top: 3px;
        width: 100%;
        text-align: center;
        text-indent: 0;
        color: #fff;
        font-size: 20px;
        font-weight: normal;
    }

    .dd3-handle:hover {
        background: #ddd;
    }


    /*
* Nestable++
*/
    .button-delete {
        position: absolute;
        top: 4px;
        right: -26px;
    }

    .button-edit {
        position: absolute;
        top: 4px;
        right: -52px;
    }

    #menu-editor {
        margin-top: 40px;
    }

    #saveButton {
        padding-right: 30px;
        padding-left: 30px;
    }

    .output-container {
        margin-top: 20px;
    }

    #json-output {
        margin-top: 20px;
    }
</style>
@endpush
