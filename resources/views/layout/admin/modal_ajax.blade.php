<!-- Button trigger modal -->
<button type="button" hidden class="btn btn-primary" data-toggle="modal" data-target="#ajax_modal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade ajax_modal_dialog" id="ajax_modal"   tabindex="-1" role="dialog" aria-labelledby="ajax_modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content scrolla">
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



<!-- Button trigger modal -->
<button type="button" hidden class="btn btn-primary" data-toggle="modal" data-target="#ajax_modal_add">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade ajax_modal_dialog_add" id="ajax_modal_dialog_add"   tabindex="-1" role="dialog" aria-labelledby="add_modal_lLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
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
    var modalDialog = '';
    var setElement = '';
    var model = '';
    var placeholder_body = `
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
        <div class="w-100 p-2 glow_text"></div>
`;


function button_ajax(thi) {







if($(thi).data('setelement')){
    setElement =  $(thi).data('setelement');

}else{

    if($(thi).data('target')){
        model = document.querySelector($(thi).data('target'));
    }else{
        model = document.querySelector('#ajax_modal');
    }

    // console.log($(thi).data('target'))

    modalDialog = model.querySelector('.modal-dialog')

    setElement = model.querySelector('.modal-body');

    if($(thi).data('dialog')){
        if($(modalDialog).data('dialog')){
            var data_array = modalDialog.getAttribute('data-dialog').split(" ");
            data_array.forEach(function(element) {
                $(modalDialog).removeClass(element); // Remove each class from modal-dialog
            });
        }


        var dialogValue = thi.getAttribute('data-dialog');
        $(modalDialog).addClass($(thi).data('dialog'));
        // Add the data-dialog attribute value from thi to the .modal-dialog element
        modalDialog.setAttribute('data-dialog', dialogValue);
    }

      {{--  Modal Title  --}}
        if($(thi).data('title')){
            $(model).find('#eajax_modalLabel').html($(thi).data('title'));
        }else{
            if($(thi).title){
                $(model).find('#eajax_modalLabel').html($(thi).title);
            }else{
                $(model).find('#eajax_modalLabel').html('data-title or title');
            }
        }
    {{--  end modal Title  --}}


    }
    $(setElement).html(placeholder_body);



// console.log(model)

     
            let model_dialog = $(model);
            if ($(thi).data('dialogstatus') === true || $(thi).data('dialogstatus') === undefined) {
                model_dialog.modal('show');
            }
            
       



        {{--  data set  --}}
            if($(thi).data('href')){

                $.ajax({
                    'type':'get',
                    'url': thi.getAttribute('data-href'),
                    success: function (data){
                        if(isValidJSONObject(data)){
                            data = JSON.parse(data);
                            if(data.success == false){
                                flasher.error(data.message);
                            }else if(data.success == true){
                                flasher.success(data.message);
                            }

                            setTimeout(() => {
                                model_dialog.modal('hide');
                                console.log(data);
                                
                            }, 1500);
                          
                        }else{
                            $(setElement).html(data);
                        }


                        //Select2 fillelement
                        select2_caller();

                        //call all summernote render into class optional
                        summernote_render();

                        //call all form submit in dialog
                        //if($(thi).)
                       
                            
                         form_submit('#' + model.getAttribute('id') + ' form');
                       

                        tooltip_active()

                    },
                    error: function (xhr, status, error) {

                        //Error show and refresh button generate
                        var items_refresh = "<div class='text-center btn_refresh_head'>"+thi.outerHTML+"<br/><br/>AJAX Error: "+ status + error+"</div>";
                        $(model).find('.modal-body').html(items_refresh);
                        $(model).find('.btn_refresh_head .btn').html('Refresh')
                        //Error show and refresh button generate
                    }
                })
            }else{
                $(model).find('.modal-body').html('data-href');
            }


         

         

    }

    function isValidJSONObject(obj) {
    try {
        JSON.parse(obj);
        return true;
    } catch (e) {
        return false;
    }
}

    //Summernote render
    function summernote_render(class_element = null){
        if(class_element == null){
            class_element ='.summernote';
        }
        var summernote = document.querySelectorAll(class_element);
        if (summernote.length > 0) {
            summernote.forEach(function(single_note) {
                $(single_note).summernote({
                    placeholder: single_note.placeholder,
                    tabsize: 2,
                    height: 100
                });
            });
        }
    }
    // Default All sumernote render
    summernote_render();


    // All Modal Submit
    function error_show(xhr, status, error){
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



    // Capture the state before reloading
    function form_submit(class_element = null){
        var forem_reset = false;
        if(class_element == null){
            class_element = '.form_ajax_submit'
             {{--  forem_reset = true;  --}}
        }
        document.querySelectorAll(class_element).forEach(function(element){
            console.log(element);

        $(element).on('submit', function (e) {
            e.preventDefault(); // Prevent the default form submission

            $.ajax({
                type: $(this).attr('method'),    // Correct way to get form method
                url: $(this).attr('action'),     // Correct way to get form action URL
                data: new FormData(this),
                accecpt:'json',       // Correct constructor for FormData
                processData: false,              // Required for FormData
                contentType: false,              // Required for FormData
                success: function (data, status, xhr) {
                    data = JSON.parse(data);
                    console.log(data.status);          // Handle success
                    if(data.type == 'success'){
                        flasher.success(data.title);
                       
                        $(model).modal('hide');
                    }else if(data.status == 400){

                      // its for steedfast specily
                        error_show(xhr, data.status, 'Bad Request');
                    }else{
                        flasher.error(data.title);
                    }



                    if(forem_reset == true){
                        element.reset();
                    }else if(data.refresh == 'true'){
                        if (typeof datatableM === 'undefined') {
                            console.log('Data table refresh not found');
                        } else {

                            datatableM.ajax.reload();

                        }
                    }else{
                        if(data.page == 'true'){
                            window.location.href = '';
                        }else{
                            console.log('not changed');
                        }
                    }






                },
                error: function (xhr, status, error) {
                    error_show(xhr, status, error)

                }
            });
        });

    });

    }

    //Default Call for mapping
    form_submit();


    //when declare class select2 convert select2 format
    function select2_caller(){
        document.querySelectorAll('.select2').forEach(function(element){
            if($(element).data('ajax')){
                if($(element).data('model')){
                    ajax_data_request(element, true)
                }else{
                    ajax_data_request(element)
                }

            }else{
                if($(element).data('model')){
                  let  model = $(element).closest('.modal')
                    model = model[0].id;
                    model = '#'+model;
                    $(element).select2(
                      {  dropdownParent:model}
                    );
                    console.log(2342)
                }else{
                    $(element).select2();
                }

            }
        });
   }

   //Default Calling option Select2
   select2_caller();



   //select2 ajax request
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



    function tooltip_active(){
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    }
    tooltip_active()

    function copyElement(button) {

        const text = button.getAttribute('data-href');

        // Copy the text to the clipboard
        navigator.clipboard.writeText(text).then(() => {
            alert('Text copied to clipboard!');
        }).catch(err => {
            console.error('Error copying text: ', err);
        });
    }


    function load_items_card(element, retryCount = 3) {
    if ($(element).data('items') != '') {
        $.ajax({
            type: 'get',
            url: '{{ route('admin.items_load_card') }}',
            data: {
                'items': $(element).data('items'),
                'where': $(element).data('where'),
            },
            success: function(data) {
                $(element).find('.inner .overlay').css('display', 'none');
                $(element).find('h3 span').html(data);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                // Display an error message if needed
                console.error('Error loading items:', textStatus, errorThrown);
                $(element).find('.inner .overlay').css('display', 'none');

                if (retryCount > 0) {
                    console.log('Retrying... Remaining attempts:', retryCount);
                    load_items_card(element, retryCount - 1); // Retry the request
                } else {
                    $(element).find('h3 span').html('Failed to load items. Please try again later.');
                }
            }
        });
    }
}


   var card_count_loaded = document.querySelectorAll('.card_count_loaded').forEach(function(element){
     load_items_card(element);

  })
</script>


@include('layout.admin.file_manager_modal')


