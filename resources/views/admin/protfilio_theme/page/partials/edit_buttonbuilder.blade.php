{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('pages', 10))

{{--  Content Extends  --}}
@section('content')
@php
    $page_content = App\Models\Page::find($id);
@endphp
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
       <div class="content_parents">
           <div class="title_content"> Page : {{ $page_content->name }}</div>
           <div class="title_content"> Slug : <a href="{{ url($page_content->slug) }}" target="_blank"> {{ url($page_content->slug) }} </a></div>
           <div class="title_content"> Page ID : {{ $page_content->id }}</div>
           <div class="title_content"> Page Type : {{ $page_content->page_type }}</div>
           <div class="title_content"> Page Status : {{ $page_content->status == 1 ? 'Active' : 'Inactive' }}</div>

       </div>

        <button onclick="html_render()">Refresh</button>
        <div>
            @can('page create')
                {{-- <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  page" data-href="{{ route('admin.homePageManage.create', 'page_id='.$id) }}">+ Add New page</button> --}}

                <button class="btn btn-primary" onclick="document.querySelector('.add_new_item_box').classList.toggle('hide_content')">New Page</button>
            @endcan
        </div>

    </div>

    <div class="card-body html_element_box">
        <div class="html_render">
            <iframe class="iframe_preview" src="{{ url('previdw_page_and_fornt_page?preview_page='.$id) }}" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%"></iframe>
        </div>


        <div class="add_new_item_box hide_content">



            <div class="add_new_data_render">

                <form action="{{ route('admin.homePageManage.store') }}" method="post" enctype="multipart/form-data">
                    @csrf

                <input type="number" name="page_id" value="{{ $id }}" hidden>
                    <div class="form-group mb-2">
                        <label for="title">Title</label>
                        <input type="text" name="title" class="form-control mb-2" value="" id="title" placeholder="Enter title">
                    </div>

                    <div class="form-group mb-2">
                        <label for="subtitle">Subtitle</label>
                        <input type="text" name="subtitle" class="form-control mb-2" value="" id="subtitle" placeholder="Enter subtitle">
                    </div>

                    <div class="">
                        <label for="">Select Layout </label>
                        <div class="input-group mb-3">
                            <select required type="text" name="VarinatSuggession" data-model="true" data-url="{{ route('admin.VarinatSuggession.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="VarinatSuggession" aria-label="VarinatSuggession" aria-describedby="basic-addon1">
                                <option value="">Lead Contact</option>
                            </select>

                        </div>
                    </div>
                    <div class="layout_render_box">
                        <input type="radio" name="layout" value="1">
                        <img src="{{asset('uploads/')}}/layout/1.png" alt="">
                    </div>


                    {{-- <div class="d-flex justify-content-end">
                        <button class="btn btn-warning" type="submit">Save</button>
                    </div> --}}

                </form>

            </div>
        </div>
    </div>

</div>


@endsection

@push('js')

<script>

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
                    $('#responseMessage').append('<p>' + response.message + '</p>');
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
              },
              error: function(xhr, status, error) {
                console.error("Error updating order:", error);
              }
            });
          }
        });
        $("#sortable").disableSelection();

    }


    //   function  html_render(){
    //     $.ajax({
    //         type: 'get',
    //         url : '{{ route('admin.homePageManage.show', $id) }}',
    //         success:function(data){
    //             $('.html_render').html(data);
    //             sorting();
    //             submit_ajax_builder()
    //         }
    //     })
    //   }
    //   html_render()



</script>
@endpush



@push('css')
<style>
    ul#sortable {
        list-style: none;
        padding-left: 0;
    }

    ul#sortable li {
        padding: 15px;
        margin-bottom: 15px;
        border-radius: 5px;
        border: 2px solid white;
        cursor: move;
        position: relative;
    }
    ul#sortable li .btn.btn-danger{
        position: absolute;
            top: -20px;
            right: -20px;
    }

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
