<nav class="main-header navbar navbar-expand navbar-white navbar-light
 {{ settings('theme_dropdown-legacy', 1) ? 'dropdown-legacy' :'' }}
 {{ settings('theme_border-bottom-0', 1) ? 'border-bottom-0' :'' }}
 {{ settings('theme_navbar_bg', 1) ?? 'bg-white' }}

">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{ route('admin.order.create') }}" class="nav-link">Home</a>
        </li>
        @can('order read')
        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{ route('admin.order.index') }}" class="nav-link">Order</a>
        </li>
        @endcan
        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{ route('admin.pos.index') }}" class="nav-link">POS</a>
        </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">




        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                <i class="fas fa-expand-arrows-alt"></i>
            </a>
        </li>
        @can('theme read')
        <li class="nav-item">
            <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
                <i class="fas fa-th-large"></i>
            </a>
        </li>
        @endcan
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown dashboard_profile_dropdown">
            <a class="nav-link dashboard_profile" data-toggle="dropdown" href="#">
                <i class="fas fa-user dashboard_profile_icon"></i> &nbsp; {{ mb_strimwidth(auth()->user()->name ?? '', 0,12,'...') }}
            </a>
            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">


                {{-- <div class="dropdown-divider"></div>  --}}
                <a href="{{ route('admin.profile.edit') }}" class="dropdown-item">
                    <i class="fas fa-user"></i> Profile
                </a>
                <form action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button onclick="confirm('Do you want to logout?')" class="dropdown-item">
                        <i class="fas fa-user"></i> Logout
                    </button>
                </form>
                {{-- <div class="dropdown-divider"></div>  --}}

            </div>
        </li>
    </ul>
</nav>
