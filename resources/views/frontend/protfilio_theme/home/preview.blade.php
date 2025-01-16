


@extends('layout.frontend_ajuba.master')


@section('content')

    <ul id="sortable" class="accordion">
            @foreach ($homepagemanage as $items)
            <li id="{{ $items->id }}">
                <div class="row">
                    <div class="col-md-12">
                        @include('admin.protfilio_theme.page.partials._builder_partials',['item'=>$items])
                    </div>

                    <div class="col-md-12">
                        <div>
                            @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])
                        </div>
                    </div>

                </div>
            </li>
            @endforeach
        </ul>
@endsection



@push('js')

@include('layout.admin.file_manager_modal1')

<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

<!-- jQuery UI CSS (optional for styling) -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

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
                    // $('#responseMessage').append('<p>' + response.message + '</p>');
                    if(response.type == 'success'){
                        window.location.href= '';
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
                'id' : {{ $request->preview_page }},
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
                        window.location.href = ''
                        // console.log(data)
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

    .modal.show .modal-dialog{
        background: white;

    }
    .modal .modal-dialog{
        max-width: 500px;
    }
</style>
@endpush


