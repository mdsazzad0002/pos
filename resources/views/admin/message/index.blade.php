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
                <img src="{{ settings('app_image', 9) }}" alt="Avatar" class="header-avatar">
                <span class="header-name">{{ settings('app_name', 9) }}</span>
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

        function sidebarThreadPrint(key, element) {

            var data_html = '';
            data_html += `<div class="message_sidebar-item sidebar${element.id}" onclick="show_tabs(${element.id}, this)" data-name="${element.name}" data-image="${element.image}" data-id="${element.subject}" data-type="${element.id}">
                        <div>
                            <img src="${element.image}" alt="Avatar" class="message_sidebar-avatar">
                        </div>
                        <div class="d-flex flex-column">
                            <div class="d-flex flex-row align-items-baseline">
                                <span class="message_sidebar-name">${element.name}</span>
                                <span class="status-indicator ${ element.last_active }"></span>
                            </div>
                            <div style="color:#c5c5c5" class="latest_message">
                                ${ element.latest_message }
                            </div>
                        </div>
                    </div> `;
            if ($('.sidebar' + element.id).length == 0) {
                $('.contactList').prepend(data_html)
            }

        }

        function theradLoad() {
            $.ajax({
                type: 'get',
                url: '{{ route('admin.thread.index') }}',
                success: function(data) {
                    // console.log(data);
                    data = JSON.parse(data)

                    Object.entries(data).forEach(([key, element]) => {
                        sidebarThreadPrint(key, element);
                        // console.log(element);
                    })
                    setTimeout(() => {
                        let items_select = $('.message_sidebar-item')[0];
                        show_tabs(items_select.dataset.type, items_select);
                        headerinfo(items_select);
                    }, 1500);

                }
            })
        }
        theradLoad();
        
        {{--  end thread  --}}

        // Scroll to bottom
        function scrollbottom() {
            $('.chat-window .chat-box').scrollTop($('.chat-box')[0].scrollHeight);
        }
        // End Scroll


        // TAb Switch
        function show_tabs(id, thi) {
            var items_data_ret = '';
            message_selected_id = id;
            $('.items_body_per').css('display', 'none')
            $('.message_sidebar-item').removeClass('active');
            $('.sidebar' + message_selected_id).addClass('active');

            if ($('.items_body_per.thread_items' + id).length > 0) {
                $('.items_body_per.thread_items' + id).css('display', 'flex');
                headerinfo(thi);
                scrollbottom();
            }
        }
        // End Tab Switch

        {{--  Filtering for message  --}}

        function filter_contact() {
            let searchInput = document.getElementById('contactSearch');
            let contacts = Array.from(contactList.getElementsByClassName('message_sidebar-item'));

            searchInput.addEventListener('input', function() {
                const searchQuery = searchInput.value.toLowerCase();
                contacts.forEach(contact => {
                    const contactName = contact.querySelector('.message_sidebar-name').textContent
                        .toLowerCase();
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






        function headerinfo(thi) {
            $('.header-name').html(thi.dataset.name);
            $('.header-avatar').attr('src', thi.dataset.image);
        }

        function add_to_message_list(key, element, thi) {
            $.ajax({
                type: 'get',
                url: '{{ route('admin.message.thread.create') }}',
                data: {
                    key: key,
                    items: element
                },
                success: function(data) {
                   
                    headerinfo(thi);

                    sidebarThreadPrint(data.id, data)
                    show_tabs(data.id);
                    document.getElementById('contactSearch').value = '';
                    filter_new_contact('');
                }
            })

        }

        //Format sidebar filter items 
        function format_sidebar_items(data) {
            var return_data = '';

            Object.entries(data).forEach(([key, items]) => {
                if (key == 'users') {
                    items.forEach(element => {
                        return_data += `<div class="message_sidebar-item" onclick="add_to_message_list('${key}', ${element.id}, this)" data-name="${element.name}" data-image="${element.image}" data-id="${element.name}" data-type="1">
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
        // end format sidebar items


        
        // filterable contact
        function filter_new_contact(value_input) {
            if (value_input.length == 0) {
                $('.content_list_search').html('');
            } else {
                $.ajax({
                    type: 'get',
                    url: '{{ route('admin.message.user.filter') }}',
                    dataType: "json",
                    data: {
                        'inpute': value_input,
                    },
                    success: function(data) {

                        var return_data = format_sidebar_items(data)
                        $('.content_list_search').html(return_data);
                    }
                })
            }
        }
        // end filterable contact



        // send message
        $('.message_sender_form').on('submit', function(e) {
            e.preventDefault();

            var submitButton = $(this).find('button[type="submit"]');
            submitButton.prop('disabled', true);

            var formData = new FormData($(this)[0]);
            formData.append('_token', '{{ csrf_token() }}'); // Append CSRF token to FormData
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
                    $('.message_sender_form')[0].reset(); // Clear form fields
                    submitButton.prop('disabled', false); // Re-enable the button
                },
                error: function(xhr, status, error) {
                    console.error('AJAX request failed:', status, error);
                    submitButton.prop('disabled', false); // Re-enable the button
                    // Optionally, show an error message to the user
                }
            });
        });
    </script>
@endpush

@push('css')
    <link rel="stylesheet" href="{{ asset('assets/dist/css/message.css') }}">
   
@endpush
