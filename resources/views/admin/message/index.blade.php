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
     const contactList = document.getElementById('contactList');





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

    {{--  Default Thread items sidebar load  --}}
    function theradLoad(){
        $.ajax({
            type:'get',
            url:'{{ route('admin.thread.index') }}',
            success:function(data){
                console.log(data);
                data = JSON.parse(data)
                 var data_html = '';
                Object.entries(data).forEach(([key, element])=>{
                     data_html +=`<div class="message_sidebar-item sidebar${element.id}" onclick="show_tabs(${element.id})" data-id="${element.subject}" data-type="${element.id}">
                        <div>
                            <img src="${element.image}" alt="Avatar" class="message_sidebar-avatar">
                        </div>
                        <div class="d-flex flex-column">
                            <div class="d-flex flex-row align-items-baseline">
                                <span class="message_sidebar-name">${element.name}</span>
                                <span class="status-indicator ${ element.last_active }"></span>
                            </div>
                            <div>

                            </div>
                        </div>
                    </div> `;
                })

                $('.contactList').prepend(data_html)
            }
        })
    }
    theradLoad();
    {{--  end thread  --}}


    function show_tabs(id){
        var items_data_ret = '';
        message_selected_id = id;
        $('.items_body_per').css('display', 'none')
        $('.message_sidebar-item').removeClass('active')
        if($('.items_body_per.thread_items'+id).length > 0){

            $('.items_body_per.thread_items'+id).css('display', 'flex');
            $('.sidebar'+message_selected_id).addClass('active')

        }
    }

    {{--  Filtering for message  --}}
    function filter_contact(){
        const searchInput = document.getElementById('contactSearch');
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

            filter_new_contact(this.value);
        });
    }
    filter_contact();
    {{--  end filter message  --}}


    {{--  format new contact message  --}}
    function format_sidebar_items(data){
        var return_data = '';

        Object.entries(data).forEach(([key, items]) => {
            if(key == 'users'){
                items.forEach(element=>{
                    return_data += `<div class="message_sidebar-item" onclick="add_to_message_list('${key}', ${element.id})" data-id="${element.name}" data-type="1">
                        <div>
                            <img src="${element.image}" alt="Avatar" class="message_sidebar-avatar">
                        </div>
                        <div class="d-flex flex-column">
                            <div class="d-flex flex-row align-items-baseline">
                                <span class="message_sidebar-name">${element.name}</span>
                                <span class="status-indicator ${ element.last_active }"></span>
                            </div>
                            <div>
                                ${key}
                            </div>
                        </div>
                    </div>`;
                })
            }
        });

        return return_data;
    }
{{--  end new format message  --}}



function add_to_message_list(key, element){
    $.ajax({
        type:'get',
        url:'{{ route('admin.message.thread.create') }}',
        data:{
            key : key,
            items : element
        },
        success:function(data){
            console.log(data)
        }
    })

}



{{--  search new filter able contact  --}}
    function filter_new_contact(value_input){
        if(value_input.length == 0){
            $('.content_list_search').html('');
        }else{
            $.ajax({
                type:'get',
                url:'{{ route('admin.message.user.filter') }}',
                dataType: "json",
                data:{
                    'inpute' :value_input,
                },
                success:function(data){

                    var return_data = format_sidebar_items(data)
                    $('.content_list_search').html(return_data);
                }
            })
        }
    }
    {{--  end filterable contact  --}}




    $('.message_sender_form').on('submit', function(e) {
        e.preventDefault();

        var submitButton = $(this).find('button[type="submit"]');
        submitButton.prop('disabled', true);

        var formData = new FormData($(this)[0]);
        formData.append('_token', '{{ csrf_token() }}');  // Append CSRF token to FormData
        formData.append('message_id', message_selected_id);
        formData.append('sender_id', message_sender_id);

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
    #contactList{
        position: relative;
        height: 100%;
    }
    .content_list_search {
        position: absolute;
        bottom: 0;
        width: 100%;
        z-index: 999;
        background: #1f1f1f;
    }


    .items_body_per{
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
    }

    .message_sidebar-item.active {
        background: #001246;
    }
</style>
@endpush
