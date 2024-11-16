{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', settings('order', 10))

{{-- Content Extends  --}}
@section('content')



<div class="message_chart">
    <!-- message_sidebar -->
    @include('admin.message._partials.message_sidebar')
    <!-- Chat Window -->
    <div class="chat-window">
        <!-- Header -->
        <div class="header">
            <img src="https://via.placeholder.com/40" alt="Avatar" class="header-avatar">
            <span class="header-name">John Doe</span>
        </div>

        <!-- Chat Box -->
        @include('admin.message._partials.message_box')

        <!-- Input Box -->
        @include('admin.message._partials.message_input_box')
    </div>
</div>



<script>
    // JavaScript for searching contacts
    const searchInput = document.getElementById('contactSearch');
    const contactList = document.getElementById('contactList');
    const contacts = Array.from(contactList.getElementsByClassName('message_sidebar-item'));

    searchInput.addEventListener('input', function() {
        const searchQuery = searchInput.value.toLowerCase();
        contacts.forEach(contact => {
            const contactName = contact.querySelector('.message_sidebar-name').textContent.toLowerCase();
            if (contactName.includes(searchQuery)) {
                contact.style.display = 'flex';
            } else {
                contact.style.display = 'none';
            }
        });
    });

    // Filter buttons (Group, Customer, User)
    document.getElementById('filterGroup').addEventListener('click', function() {
        alert('Filter by Group');
    });
    document.getElementById('filterCustomer').addEventListener('click', function() {
        alert('Filter by Customer');
    });
    document.getElementById('filterUser').addEventListener('click', function() {
        alert('Filter by User');
    });





</script>


@endsection


@push('js')
<script>
    var message_selected_id = 0;
    var message_sender_id = {{ auth()->user()->id }};
    var message_selected_user_type = 0;
    var current_message_id = 0;

    document.querySelectorAll('#contactList .message_sidebar-item').forEach(element=>{
        element.addEventListener('click', function(){
            this.classList.add('active');
            message_selected_id =  this.getAttribute('data-id');
            message_selected_user_type =  this.getAttribute('data-type');
            current_message_id = 0;

        })
    })



    $('.message_sender_form').on('submit', function(e) {
        e.preventDefault();

        var submitButton = $(this).find('button[type="submit"]');
        submitButton.prop('disabled', true);

        var formData = new FormData($(this)[0]);
        formData.append('_token', '{{ csrf_token() }}');  // Append CSRF token to FormData
        formData.append('message_id', message_selected_id);
        formData.append('sender_id', message_sender_id);
        formData.append('user_type', message_selected_user_type);

        $.ajax({
            type: 'POST',
            url: '{{ route('admin.message.store') }}',
            data: formData,
            processData: false, // Don't let jQuery try to process the data
            contentType: false, // Let the browser set the content-type for FormData
            success: function(data) {
                console.log(data);
                $('.message_sender_form')[0].reset();  // Clear form fields
                submitButton.prop('disabled', false);  // Re-enable the button
            },
            error: function(xhr, status, error) {
                console.error('AJAX request failed:', status, error);
                submitButton.prop('disabled', false);  // Re-enable the button
                // Optionally, show an error message to the user
            }
        });
    });


    setInterval(function(){
        fetch('{{ route('admin.message.get_message') }}?message_id='+message_selected_id+'&sender_id='+message_sender_id+'&current_message_id='+current_message_id)  // URL to send the GET request to
            .then(response => {
                if (!response.ok) {
                throw new Error('Network response was not ok');
                }
                return response.json(); // Convert the response to JSON
            })
            .then(data => {
                console.log(data);  // Process the response data
            })
            .catch(error => {
                console.error('There was a problem with the fetch operation:', error);
            });

    },2500);


</script>
@endpush

@push('css')
<link rel="stylesheet" href="{{ asset('assets/dist/css/message.css') }}">
<style>
    .sidebar-mini-xs.sidebar-collapse .main-header {
        display: none;
        margin-top: 0px;
    }

    .container-fluid.pt-4 {
        padding-top: 0px !important;
    }

    .layout-navbar-fixed .wrapper .main-header.border-bottom-0~.content-wrapper {
        margin-top: 0px;
        padding: 0px;
    }

    .layout-navbar-fixed .wrapper .main-header,
    .main-footer {
        display: none;
    }

    .content,
    .container-fluid {
        padding: 0px;
    }

</style>
@endpush
