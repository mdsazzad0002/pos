{{--  Master Include  --}}
@extends('layout.admin.master')

@php
    $page_content = App\Models\Page::find($id);
@endphp


{{--  Define Site Title  --}}
@section('title', $page_content->name .' Page Builder')

{{--  Content Extends  --}}
@section('content')

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
       <div class="content_parents">
           <div class="title_content"> Page : {{ $page_content->name }}</div>
           <div class="title_content"> Slug : <a href="{{ url($page_content->slug) }}" target="_blank"> {{ url($page_content->slug) }} </a></div>
           <div class="title_content"> Page ID : {{ $page_content->id }}</div>
           <div class="title_content"> Page Type : {{ $page_content->page_type }}</div>
           <div class="title_content"> Page Status : {{ $page_content->status == 1 ? 'Active' : 'Inactive' }}</div>

       </div>

        <button onclick="refresh_iframe()">Refresh</button>
        <div>
            @can('page create')
                {{-- <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  page" data-href="{{ route('admin.homePageManage.create', 'page_id='.$id) }}">+ Add New page</button> --}}

                <button class="btn btn-primary" onclick="document.querySelector('.add_new_item_box').classList.toggle('hide_content')">New Page Element</button>
            @endcan
        </div>

    </div>

    <div class="card-body html_element_box">
        <div class="html_render">
            <iframe class="iframe_preview" src="{{ url('previdw_page_and_fornt_page?preview_page='.$id) }}" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%"></iframe>
        </div>


        <div class="add_new_item_box hide_content">



            <div class="add_new_data_render">

                    <label for="">Select Layout </label>
                    <input type="search" placeholder="Enter Layout Name ... .. ." name="Varinatfilter" oninput="filter_variant(this)" class="filter form-control mb-2" id="Varinatfilter">

                    <div class="add_to_layout_container">
                            {{-- load by ajax --}}
                    </div>
            </div>
        </div>
    </div>

</div>










@endsection





@push('js')


<script>

    function filter_variant(thi){
    
        const filterValue = thi.value.toLowerCase(); // Get the input value and convert to lowercase
        const cards = document.querySelectorAll('.add_to_layout_container  .single_item_layout'); // Get all cards
       
        cards.forEach(card => {
            const cardTitle = card.querySelector('.title_layout').innerHTML.toLowerCase(); // Get the card's title
            console.log(cardTitle)
            if (cardTitle.includes(filterValue)) {
                card.classList.remove('d-none'); // Show the card if it matches the filter
            } else {
                card.classList.add('d-none'); // Hide the card if it doesn't match the filter
            }
        });
    };


    function refresh_iframe() {
        const iframe = document.querySelector('.iframe_preview');
        iframe.contentWindow.location.reload();
    }

    function format_layout(data){
        var html_output = '';

        data.forEach(element => {
            console.log(element.image)
                html_output +=  `
                <div class="single_item_layout mb-3" onclick="add_to_items(${element.id}, {{ $id }})" style="    border: 1px solid #3e444a;cursor: pointer;">
                    <img src="${element.image }" alt="" class="img-fulid" style="width: fit-content; max-width: 100%;">
                    <div class="title_layout" style="background: #3e444a; color: white; padding: 1px 7px; border-radius: 0px;">${element.title}</div>


                </div>`;
        });

        return html_output;
    }




    function load_template(data = ''){
        $.ajax({
            type:'get',
            url:'{{ route('admin.VarinatSuggession.select') }}',
            data:{
                q:data
            },
            success:function(data){
                data= JSON.parse(data)
                data_items = format_layout(data.items);
                $('.add_to_layout_container').html(data_items);

            }

        });
    }



    load_template();




    function add_to_items(items_id, page_id){
        $.ajax({
            type:'get',
            url:'{{ route('admin.homePageManage.store') }}',
            method:'post',
            data:{
                page_id:page_id,
                items_id:items_id
            },
            success:function(data){
                data= JSON.parse(data)

                if(data.type == 'success'){
                    refresh_iframe();
                }


            }

        });
    }



</script>
@endpush


@push('css')
<style>


    .html_element_box{
        display: flex;
        gap: 25px;
    }
    .html_render{
        width: 100%;
    }

    .add_new_item_box {
        background: #ffffff;
        padding: 10px;
        box-shadow: 0px 0px 5px #e1dbdb;
        overflow: auto;
        height: calc( 100vh - 155px );
        position: sticky;
        top: 84px;
        width: 600px;
        transition: 1s ease-in-out;
    }

    .add_new_item_box.hide_content{
        width: 0px;
        opacity: 0;
        padding: 0;
        overflow: hidden;
    }

</style>
@endpush
