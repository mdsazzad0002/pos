<li class="nav-item ">
    <a href="#" class="nav-link">

        <i class="fas fa-tools nav-icon"></i>
        <p>
            {{__('sidebar.settings') }}
            <i class="fas fa-angle-left right"></i>
        </p>
    </a>

    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['main-setting', '9']) }}"
            class="nav-link">
                <i class="fas fa-cogs nav-icon"></i>
                <p>{{ __('settings.main_setting_sidebar')}}</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('admin.fcm_notification.index') }}"
            class="nav-link">
            <i class="fas fa-bell nav-icon"></i>
                <p>{{ __('settings.notification_sidebar') }}</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['site-verification-setting', '25']) }}"
            class="nav-link">
                <i class="fas fa-certificate nav-icon"></i>
                <p>{{ __('settings.site_verification_sidebar') }}</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['site-tag-management', '24']) }}"
            class="nav-link">
                <i class="fas fa-tags nav-icon"></i>
                <p>{{ __('settings.site-tag-management') }}</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['site-pwa-management', '20']) }}"
            class="nav-link">
                <i class="bi bi-app-indicator nav-icon"></i>
                <p>{{ __('settings.site-pwa-management') }}</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['takto-messageing-management', '31']) }}"
            class="nav-link">
                <i class="bi bi-chat-left-dots-fill nav-icon"></i>
                <p>{{ __('settings.takto_sidebar-management') }}</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['cookie-management', '40']) }}"
            class="nav-link">
                <i class="fas fa-cookie-bite nav-icon"></i>
                <p>{{ __('settings.cookie-sidebar-management') }}</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.mail.index') }}"
            class="nav-link">
                 <i class="fas fa-envelope-open-text nav-icon"></i>
                <p>{{ __('settings.email_setting_sidebar') }}</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.settings.payment-configration.index') }}" class="nav-link ">
                <i class="fas fa-money-check nav-icon"></i>
                <p> {{ __('settings.payment-configration-sidebar') }}</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.device_access_check.list') }}" class="nav-link">
                <i class="fas fa-user-tie nav-icon"></i>
                <p>{{ __('device_access_check.sidebar.list.name') }}</p>
            </a>
        </li>
        
    </ul>
</li>