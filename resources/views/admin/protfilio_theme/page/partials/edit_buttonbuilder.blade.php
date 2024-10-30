{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('pages', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Page
        <div>
            @can('page create')
                <button class="btn btn-primary" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  page" data-href="{{ route('admin.homePageManage.create', 'page_id='.$id) }}">+ Add New page</button>
            @endcan
        </div>
        <button onclick="html_render()">Refresh</button>

    </div>

    <div class="card-body html_render">

        Please Wait


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
     
      
      function  html_render(){
        $.ajax({
            type: 'get',
            url : '{{ route('admin.homePageManage.show', $id) }}',
            success:function(data){
                $('.html_render').html(data);
                sorting();
                submit_ajax_builder()
            }
        })
      }
      html_render()

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


</style>
@endpush
