{{--  Master Include  --}}
@extends('layout.admin.master')

@php
    $page_content = App\Models\Page::find($id);
    $url = $url ? url($url) : url($page_content->slug);
    $url = explode('?/',$url);
    $url = $url[0];
    $separator = strpos($url, '?') !== false ? '&' : '?';
    $finalUrl = $url . $separator . 'preview_page=' . $id;

@endphp


{{--  Define Site Title  --}}
@section('title', $page_content->name .' Page Builder')

{{--  Content Extends  --}}
@section('content')

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
       <div class="content_parents">
           <div class="title_content"> Page : {{ $page_content->name }}</div>
           <div class="title_content"> Slug : <a href="{{  $url }}" target="_blank"> {{  $url }} </a></div>
           <div class="title_content"> Page ID : {{ $page_content->id }}</div>
           <div class="title_content"> Page Type : {{ $page_content->page_type }}</div>
           <div class="title_content"> Page Status : {{ $page_content->status == 1 ? 'Active' : 'Inactive' }}</div>

       </div>

        <button onclick="refresh_iframe()">Refresh</button>
        <div>
            @can('page create')

            <div class="btn-group">
                <button class="btn btn-info" onclick="document.querySelector('.add_new_item_box').classList.toggle('hide_content')"><i class="fas fa-cog"></i></button>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                New Component
                </button>
            </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">New Component</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="modal-body">
                            <div class="add_new_data_render">

                                <label for="">Select Layout </label>
                                <input type="search" placeholder="Enter Layout Name ... .. ." name="Varinatfilter"  oninput="filter_variant(this)" class="filter form-control mb-2" id="Varinatfilter">

                                <div class="add_to_layout_container">
                                        {{-- load by ajax --}}
                                </div>

                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-primary    mt-2" data-toggle="modal" data-target="#exampleModal">Close Component</button>
                            </div>
                        </div>

                    </div>
                    </div>
                </div>
            @endcan
        </div>

    </div>

    <div class="card-body html_element_box">
        <div class="html_render">
            <iframe class="iframe_preview" src="{{  $finalUrl }}" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%"></iframe>
        </div>


        <div class="add_new_item_box hide_content">
            {{-- @include('admin.protfilio_theme.page.partials._sorting_partials') --}}
            load by ajax
        </div>
    </div>

</div>










@endsection





@push('js')


<script>


window.addEventListener("message", function(event) {
    // Ensure the message comes from a trusted origin
    if (typeof event.data === "object" && event.data.id_selected) {

        console.log(event.data.id_selected);
        let container_element = document.querySelector('.add_new_item_box'); // The scrollable parent
        container_element.classList.remove('hide_content');


        let targetElement = document.querySelector('.' + event.data.id_selected);
        if (targetElement) {
            window.location.hash = targetElement.getAttribute('id');
            targetElement.click();



        } else {
            console.warn("Element with class '" + event.data.id_selected + "' not found.");
        }
    }
});

    function add_new_item_box(){
        let container_element = document.querySelector('.add_new_item_box'); // The scrollable parent
        $.ajax({
            url: '{{ route('admin.homePageManage.homePageManage') }}?id={{ $page_content->id }}',
            method:'get',
            success:function(response){
                container_element.innerHTML = response;
                sorting();
                delete_function_element();
                submit_ajax_builder();
            }
        })

    }
    add_new_item_box();


    function filter_variant(thi){

        const filterValue = thi.value.toLowerCase(); // Get the input value and convert to lowercase
        const cards = document.querySelectorAll('.add_to_layout_container  .single_item_layout'); // Get all cards

        cards.forEach(card => {
            const cardTitle = card.querySelector('.title_layout.main').innerHTML.toLowerCase(); // Get the card's title
            const cardTitleKey = card.querySelector('.title_layout.sm').innerHTML.toLowerCase(); // Get the card's title
          //  console.log(cardTitle)
            if (cardTitle.includes(filterValue)) {
                card.classList.remove('d-none'); // Show the card if it matches the filter
            } else if(cardTitleKey.includes(filterValue)) {
                card.classList.remove('d-none'); // Show the card if it matches the filter
            }else{
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
        // console.log(data)


        Object.keys(data).forEach((key, element) => {
            // console.log(key)
                element = data[key];
                html_output +=  `
                   <div class="single_item_layout mb-3" onclick="add_to_items(${element.id}, {{ $id }})" style="    border: 1px solid #3e444a;cursor: pointer;">
                    <img src="${element.image }" alt="" class="img-fulid" style="width: fit-content; max-width: 100%;">
                    <div class="title_layout main" style="background: #3e444a; color: white; padding: 1px 7px; border-radius: 0px;">${element.title}</div>
                    <div class="title_layout sm " style="background: #08775b; color: white; padding: 1px 7px; border-radius: 0px;">#${element.key}</div>


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
                // data= JSON.parse(data)
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
                    add_new_item_box();
                }


            }

        });
    }



    function change_title_style(e) {
        var title_style = e.value;
        var data_class = e.dataset.class;
        console.log(data_class);
        $(data_class).attr('src', "{{ asset('preset/title/') }}/"+title_style+".png");
    }
    function submit_ajax_builder(){
        $('.form_ajax_submit').on('submit', function(event) {
            event.preventDefault(); // Prevent default form submission

            var form = $(this);
            var actionUrl = form.attr('action'); // Get the action URL

            $.ajax({
                url: actionUrl,
                type: 'POST',
                data: form.serialize(), // Serialize form data
                success: function(response) {
                    // $('#responseMessage').append('<p>' + response.message + '</p>');
                    if(response.type == 'success'){
                        refresh_iframe();
                    }else{
                        alert('Something went wrong. please try again');
                    }
                },
                error: function(xhr) {
                    let errors = xhr.responseJSON.errors;
                    let errorMessages = '';
                    for (let key in errors) {
                        errorMessages += '<p>' + errors[key][0] + '</p>'; // Display the first error message
                    }
                    $('#responseMessage').append('<div class="error">' + errorMessages + '</div>');
                }
            });
        });

    }

    submit_ajax_builder();


    function sorting(){
        $("#sortable").sortable({
        update: function(event, ui) {
            var sortedIDs = $(this).sortable("toArray");
            $.ajax({
            url: '{{ route('admin.page.edit_builder_update') }}', // Your server endpoint
            method: 'POST',
            data: {
                order: sortedIDs,
                'id' : {{ $id }},
                '_token' : '{{  csrf_token() }}'
            },
            success: function(response) {
                console.log("Order updated successfully:", response);
                refresh_iframe();
            },
            error: function(xhr, status, error) {
                console.error("Error updating order:", error);
            }
            });
        }
        });
        $("#sortable").disableSelection();

    }
    sorting()



    function delete_function_element(){
        $('.delete_items').on('submit', function(e){
            e.preventDefault();
            $.ajax({
                type:this.method,
                url: this.action,
                data: $(this).serialize(),
                success:function(data){
                    if(data.type= 'success'){
                        // window.location.href = ''
                        refresh_iframe();
                        // console.log(data)
                        add_new_item_box();
                    }else{
                        alert('Something is wrong');
                    }
                }
            })
        })
    }

    delete_function_element()


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





    ul#sortable {
        list-style: none;
        padding-left: 0;

    }

    ul#sortable li {
        cursor: move;
        position: relative;
        -webkit-user-drag: element;
        app-region: drag;

    }

    .ui-sortable-helper{
        border:2px solid #ff0000;
        filter:grayscale(1);

        margin-bottom: 15px;
        border-radius: 5px;
    }

    ul#sortable li .btn.btn-danger{
        position: absolute;
        top: 10px;
        right: 10px;
        z-index: 9;
    }

</style>
@endpush
