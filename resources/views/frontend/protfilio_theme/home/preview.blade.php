


@extends('layout.frontend_ajuba.master')


@section('content')

    <ul id="sortable" class="accordion">
            @foreach ($homepagemanage as $items)
            <li id="{{ $items->id }}" >
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
<script>
    // function submit_ajax_builder(){
    //     $('.form_ajax_submit').on('submit', function(event) {
    //         event.preventDefault(); // Prevent default form submission

    //         var form = $(this);
    //         var actionUrl = form.attr('action'); // Get the action URL

    //         $.ajax({
    //             url: actionUrl,
    //             type: 'POST',
    //             data: form.serialize(), // Serialize form data
    //             success: function(response) {
    //                 $('#responseMessage').append('<p>' + response.message + '</p>');
    //             },
    //             error: function(xhr) {
    //                 let errors = xhr.responseJSON.errors;
    //                 let errorMessages = '';
    //                 for (let key in errors) {
    //                     errorMessages += '<p>' + errors[key][0] + '</p>'; // Display the first error message
    //                 }
    //                 $('#responseMessage').append('<div class="error">' + errorMessages + '</div>');
    //             }
    //         });
    //     });

    // }

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



//   function  html_render(){
//     $.ajax({
//         type: 'get',
//         url : '{{ route('admin.homePageManage.show', $request->preview_page) }}',
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
</style>
@endpush


