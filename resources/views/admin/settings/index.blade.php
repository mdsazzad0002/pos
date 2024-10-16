
{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}


{{--  Content Extends  --}}



    @include( 'admin.settings.partials.main-setting', ['slug' => $slug])




@push('js')
<script>
{{--
flasher.warning("Are you sure you want to proceed ?");

flasher.info("Welcome back");  --}}

    function submit_setting(thi){
        var form_data = $(thi).closest('form');
        var formData = form_data.serialize();

          // Make AJAX GET request
            $.ajax({
                url: form_data.attr('action'),   // URL to submit to (from form's action attribute)
                type: 'GET',                // HTTP method (GET or POST)
                data: formData,             // Form data to send
                success: function(response) {
                    // Handle success response here
                    console.log('AJAX request successful');
                    if(response == 'success'){
                        {{--  console.log(response);  --}}
                        flasher.success("Data has been saved successfully!");
                    }else{
                        flasher.error("Oops! Something went wrong!");
                    }
                },
                error: function(xhr, status, error) {
                    // Handle error response here
                    {{--  console.error('AJAX request error:', status, error);  --}}
                    flasher.error('AJAX request error: '+ status + error);
                }
            });
    }


    function submit_setting_post(thi) {
        {{--  event.preventDefault(); // Prevent default form submission  --}}

        var form_data = $(thi).closest('form');
        var form_data_f= new FormData(form_data[0]);;

        // Add CSRF token to formData manually
        var csrfToken = '{{ csrf_token() }}';

        // Make AJAX POST request
        $.ajax({
            url: form_data.attr('action'),   // URL to submit to (from form's action attribute)
            type: 'POST',                   // HTTP method (POST)
            data: form_data_f,   // Serialize form data
            processData: false,  // Important: tell jQuery not to process the data
            contentType: false,
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },                // Form data to send
            success: function(response) {
                // Handle success response here
                console.log('AJAX request successful');
                if (response == 'success') {
                    flasher.success("Data has been saved successfully!");
                } else {
                    flasher.error("Oops! Something went wrong!");
                }
            },
            error: function(xhr, status, error) {
                // Handle error response here
                console.error('AJAX request error:', status, error);
                flasher.error('AJAX request error: ' + status + error);
            }
        });
    }




</script>
@endpush

