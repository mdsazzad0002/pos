@canany(['settings main', 'settings notification', 'settings site_verification', 'settings site_tag', 'settings tracking_report', 'settings site_pwa', 'settings messagesdk', 'settings cookie'])

<li class="nav-item ">
    <a href="#" class="nav-link">

        <i class="fas fa-tools nav-icon"></i>
        <p>
          Settings
            <i class="fas fa-angle-left right"></i>
        </p>
    </a>

    <ul class="nav nav-treeview">
        @can('settings main')
            <li class="nav-item">
                <a href="{{ route('admin.setting.index', ['main-setting', '9']) }}" class="nav-link">
                    <i class="fas fa-cogs nav-icon"></i>
                    <p>Main Setting</p>
                </a>
            </li>
        @endcan

        @can('settings notification')
            <li class="nav-item">
                <a href="{{ route('admin.fcm_notification.index') }}" class="nav-link">
                    <i class="fas fa-bell nav-icon"></i>
                    <p>Notification</p>
                </a>
            </li>
        @endcan

        @can('settings site_verification')
            <li class="nav-item">
                <a href="{{ route('admin.setting.index', ['site-verification-setting', '25']) }}" class="nav-link">
                    <i class="fas fa-certificate nav-icon"></i>
                    <p>Site Verification</p>
                </a>
            </li>
        @endcan

        @can('settings site_tag')
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['site-tag-management', '24']) }}" class="nav-link">
                <i class="fas fa-tags nav-icon"></i>
                <p>Site Tag </p>
            </a>
        </li>
        @endcan

        @can('settings tracking_report')
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['tracking_report', '27']) }}" class="nav-link">
                <i class="fas fa-route nav-icon"></i>
                <p>Tracking Report</p>
            </a>
        </li>
        @endcan

        @can('settings site_pwa')
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['site-pwa-management', '20']) }}" class="nav-link">
                <i class="bi bi-app-indicator nav-icon"></i>
                <p>Site PWA </p>
            </a>
        </li>
        @endcan

        @can('settings messagesdk')
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['takto-messageing-management', '31']) }}" class="nav-link">
                <i class="bi bi-chat-left-dots-fill nav-icon"></i>
                <p>Message SDK</p>
            </a>
        </li>
        @endcan

        @can('settings cookie')
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['cookie-management', '40']) }}" class="nav-link">
                <i class="fas fa-cookie-bite nav-icon"></i>
                <p>Cookie </p>
            </a>
        </li>
        @endcan

        @can('settings custom_js_css')
        <li class="nav-item">
            <a href="{{ route('admin.setting.index', ['custom_js_css', '45']) }}" class="nav-link">
                <i class="fas fa-code nav-icon"></i>
                <p>Custom JS/CSS</p>
            </a>
        </li>
        @endcan

        @can('settings email_setting')
        <li class="nav-item">
            <a href="{{ route('admin.mail.index') }}" class="nav-link">
                <i class="fas fa-envelope-open-text nav-icon"></i>
                <p>Email Setting</p>
            </a>
        </li>
        @endcan

        @can('settings payment_configration')
        <li class="nav-item">
            <a href="{{ route('admin.settings.payment-configration.index') }}" class="nav-link ">
                <i class="fas fa-money-check nav-icon"></i>
                <p> Payment Configuration</p>
            </a>
        </li>
        @endcan

        @can('settings courier_configration')
        <li class="nav-item">
            <a href="{{ route('admin.settings.courier-configration.index') }}" class="nav-link ">
                <i class="fas fa-truck-loading nav-icon"></i>
                <p> Courier Configuration</p>
            </a>
        </li>
        @endcan
        @can('settings courier_configration')
        <li class="nav-item">
            <a href="{{ route('admin.settings.sms-configration.index') }}" class="nav-link ">
                <i class="fas fa-truck-loading nav-icon"></i>
                <p> SMS Configuration</p>
            </a>
        </li>
        @endcan


        @canany(['language read','Translation read'])
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="fas fa-user-cog nav-icon"></i>
                <p>
                    Language
                    <i class="fas fa-angle-left right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                @can('language read')
                    <li class="nav-item">
                        <a href="{{ route('admin.language.index') }}" class="nav-link">
                            <i class="fas fa-user-tie nav-icon"></i>
                            <p>Language</p>
                        </a>
                    </li>
                @endcan

                @can('Translation read')
                    <li class="nav-item">
                        <a href="{{ route('admin.Translation.index') }}" class="nav-link">
                            <i class="fas fa-user-tie nav-icon"></i>
                            <p>Translation</p>
                        </a>
                    </li>
                @endcan

            </ul>
        </li>
        @endcanany

        @can('device_access_check read')
        <li class="nav-item">
            <a href="{{ route('admin.device_access_check.list') }}" class="nav-link">
                <i class="fas fa-user-tie nav-icon"></i>
                <p>Access Log History</p>
            </a>
        </li>
        @endcan

    </ul>
</li>
@endcanany


@canany(['maintenance mode', 'maintenance debug', 'maintenance database'])
<li class="nav-item">
    <a href="{{ route('admin.maintanance') }}" class="nav-link">
        <i class="far fa-snowflake nav-icon"></i>
        <p>Maintenance</p>
    </a>
</li>
@endcanany
@canany(['imap management'])
<li class="nav-item">
    <a href="{{ route('admin.imap.index') }}" class="nav-link">
        
        <i class="fas fa-envelope-square nav-icon"></i>
        <p>Mail Inbox</p>
    </a>
</li>
@endcanany


@can('database backup')
<li class="nav-item">
    <a href="{{ route('admin.database.backup') }}" class="nav-link">
        <i class="fas fa-hdd nav-icon"></i>
        <p>Database Backup</p>
    </a>
</li>
@endcan


<li class="nav-item">
    <a href="{{ url('clear') }}" class="nav-link">
        <i class="fas fa-redo-alt nav-icon"></i>
        <p>Clear Cache</p>
    </a>
</li>
