<div class="message_sidebar">
    <!-- Search Bar -->
    <div class="message_sidebar-search">
        <input type="text" id="contactSearch" placeholder="Search contacts..." class="form-control">
    </div>

    <!-- Filter Buttons (Quick Filters) -->
    <div class="filter-buttons d-flex flex-wrap flex-row">
        <button class=""  id="filterGroup">Group</button>
        <button class="" id="filterCustomer">Customer</button>
        <button class="" id="filterUser">User</button>
    </div>

    <!-- Contact List -->
    <div id="contactList">
        @foreach ($users as $user)
            <div class="message_sidebar-item userid{{  $user->id }}" data-id="{{ $user->id }}" data-type="1">
                <img src="{{ dynamic_asset($user->upload_id) }}" alt="Avatar" class="message_sidebar-avatar">
                <span class="message_sidebar-name">{{ $user->name }}</span>
                <span class="status-indicator"></span>
            </div>
        @endforeach
        
        <div class="message_sidebar-item">
            <img src="https://via.placeholder.com/40" alt="Avatar" class="message_sidebar-avatar">
            <span class="message_sidebar-name">Jane Smith</span>
            <span class="status-indicator status-offline"></span>
        </div>
        <div class="message_sidebar-item">
            <img src="https://via.placeholder.com/40" alt="Avatar" class="message_sidebar-avatar">
            <span class="message_sidebar-name">Michael Brown</span>
            <span class="status-indicator"></span>
        </div>
        <div class="message_sidebar-item">
            <img src="https://via.placeholder.com/40" alt="Avatar" class="message_sidebar-avatar">
            <span class="message_sidebar-name">Emily White</span>
            <span class="status-indicator status-offline"></span>
        </div>
        <div class="message_sidebar-item">
            <img src="https://via.placeholder.com/40" alt="Avatar" class="message_sidebar-avatar">
            <span class="message_sidebar-name">Chris Black</span>
            <span class="status-indicator"></span>
        </div>
    </div>
</div>
