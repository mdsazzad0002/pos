<!-- Button trigger modal -->
<button type="button" hidden class="btn btn-primary" data-toggle="modal" data-target="#ajax_modal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="ajax_modal" tabindex="-1" role="dialog" aria-labelledby="ajax_modalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="eajax_modalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>

        </div>
    </div>
</div>


<script>
    function button_ajax(thi) {




var placeholder_body = `
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
`;

    $('#ajax_modal .modal-body').html(placeholder_body);

        var modalDialog = document.querySelector('#ajax_modal .modal-dialog');

        {{--  Modal dialog class add remove  --}}
        if($(thi).data('dialog')){
            if($('#ajax_modal .modal-dialog').data('dialog')){
                var data_array = modalDialog.getAttribute('data-dialog').split(" ");
                data_array.forEach(function(element) {
                    $('#ajax_modal .modal-dialog').removeClass(element); // Remove each class from modal-dialog
                });
            }


            var dialogValue = thi.getAttribute('data-dialog');
            $('#ajax_modal .modal-dialog').addClass($(thi).data('dialog'));
            // Add the data-dialog attribute value from thi to the .modal-dialog element
            modalDialog.setAttribute('data-dialog', dialogValue);


        }else{
            if($('#ajax_modal .modal-dialog').data('dialog')){
                var data_array = modalDialog.getAttribute('data-dialog').split(" ");
                data_array.forEach(function(element) {
                    $('#ajax_modal .modal-dialog').removeClass(element); // Remove each class from modal-dialog
                });
            }
            modalDialog.setAttribute('data-dialog', '');
        }
    {{-- end Modal dialog class add remove  --}}

    {{--  Modal Title  --}}
    if($(thi).data('title')){
        $('#ajax_modal #eajax_modalLabel').html($(thi).data('title'));
    }else{
        if($(thi).title){
            $('#ajax_modal #eajax_modalLabel').html($(thi).title);
        }else{
            $('#ajax_modal #eajax_modalLabel').html('data-title or title');
        }
    }
    {{--  end modal Title  --}}

    {{--  data set  --}}
        if($(thi).data('href')){
            $.ajax({
                'type':'get',
                'url': $(thi).data('href'),
                success: function (data){
                    $('#ajax_modal .modal-body').html(data);

                    select2_caller();




                    var summernote = document.querySelectorAll('.summernote');
                    if (summernote.length > 0) {
                        summernote.forEach(function(single_note) {
                            $(single_note).summernote({
                                placeholder: single_note.placeholder,
                                tabsize: 2,
                                height: 100
                            });
                        });
                    }

                    $('#ajax_modal form').on('submit', function (e) {
                        e.preventDefault(); // Prevent the default form submission

                        $.ajax({
                            type: $(this).attr('method'),    // Correct way to get form method
                            url: $(this).attr('action'),     // Correct way to get form action URL
                            data: new FormData(this),        // Correct constructor for FormData
                            processData: false,              // Required for FormData
                            contentType: false,              // Required for FormData
                            success: function (data) {
                                data = JSON.parse(data);
                                //console.log(data);          // Handle success
                                if(data.type == 'success'){
                                    flasher.success(data.title);
                                    $('#ajax_modal').modal('hide');
                                }else{
                                    flasher.error(data.title);
                                }

                                if(data.refresh == 'true'){
                                    datatableM.ajax.reload();
                                }else{
                                    if(data.page){
                                        window.location.href = '';
                                    }else{
                                        console.log('not changed');
                                    }
                                }




                            },
                            error: function (xhr, status, error) {
                                var response_error = JSON.parse(xhr.responseText);

                                if(response_error.errors){
                                    const errors = response_error.errors;
                                    var i = 0;
                                    Object.keys(errors).forEach(function(key) {
                                        i++
                                        if(i==1){
                                            $('input[name="'+key+'"]').focus();
                                        }
                                        errors[key].forEach(function(errorMessage) {
                                            flasher.error(errorMessage);
                                        });
                                    });
                                }else if(response_error.message){
                                    flasher.error(response_error.message);
                                }else{
                                    //Error show and refresh button generate
                                  var items_refresh = "<div class='text-center btn_refresh_head'>"+thi.outerHTML+"<br/><br/>AJAX Error: "+ status + error+"</div>";
                                  $('#ajax_modal .modal-body').html(items_refresh);
                                  $('.btn_refresh_head .btn').html('Refresh')
                                  //Error show and refresh button generate

                                }





                            }
                        });
                    });

                },
                error: function (xhr, status, error) {

                    //Error show and refresh button generate
                    var items_refresh = "<div class='text-center btn_refresh_head'>"+thi.outerHTML+"<br/><br/>AJAX Error: "+ status + error+"</div>";
                    $('#ajax_modal .modal-body').html(items_refresh);
                    $('.btn_refresh_head .btn').html('Refresh')
                     //Error show and refresh button generate
                }
            })
        }else{
            $('#ajax_modal .modal-body').html('data-href');
        }
    {{--  end data set  --}}



        $('#ajax_modal').modal('show');
    };



    function select2_caller(){
        document.querySelectorAll('.select2').forEach(function(element){
       if($(element).data('ajax')){
           if($(element).data('model')){
               ajax_data_request(element, true)
           }else{
               ajax_data_request(element)
           }

       }else{
           $(element).select2();
       }
   });
   }
   select2_caller();



    function ajax_data_request(thi, model = false){
        if(model == true){
            model = $(thi).closest('.modal')
            model = model[0].id;
            model = '#'+model;
        }

        $(thi).select2({
            dropdownParent:model,
            placeholder: $(thi).placeholder,
            ajax: {
                url: $(thi).data('url'), // Replace with your API endpoint
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        q: params.term, // Search term
                    };
                },
                processResults: function(data, params) {
                    // Parse the results into the format expected by Select2
                    return {
                        results: data.items, // The array of items
                    };
                },
                cache: true
            },
            minimumInputLength: 0 // Minimum length of input to trigger search
        });
    }


</script>
