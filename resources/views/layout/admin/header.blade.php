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
            <a href="{{ route('admin.dashboard') }}" class="nav-link">Home</a>
        </li>

        @if(env('APP_ENV') == 'local')
            @can('order read')
            <li class="nav-item d-none d-sm-inline-block">
                <a href="{{ route('admin.order.index') }}" class="nav-link">Order</a>
            </li>
            @endcan

            @can('pos read')
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="{{ route('admin.pos.index') }}" class="nav-link">POS</a>
                </li>
            @endcan
        @endif
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">


                <!--begin::Messages Dropdown Menu-->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                      <i class="bi bi-chat-text"></i>
                      <span class="navbar-badge badge text-bg-danger">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                      <a href="#" class="dropdown-item">
                        <!--begin::Message-->
                        <div class="d-flex">
                          <div class="flex-shrink-0">
                            <img
                              src="../../dist/assets/img/user1-128x128.jpg"
                              alt="User Avatar"
                              class="img-size-50 rounded-circle me-3"
                            />
                          </div>
                          <div class="flex-grow-1">
                            <h3 class="dropdown-item-title">
                              Brad Diesel
                              <span class="float-end fs-7 text-danger"
                                ><i class="bi bi-star-fill"></i
                              ></span>
                            </h3>
                            <p class="fs-7">Call me whenever you can...</p>
                            <p class="fs-7 text-secondary">
                              <i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
                            </p>
                          </div>
                        </div>
                        <!--end::Message-->
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                        <!--begin::Message-->
                        <div class="d-flex">
                          <div class="flex-shrink-0">
                            <img
                              src="../../dist/assets/img/user8-128x128.jpg"
                              alt="User Avatar"
                              class="img-size-50 rounded-circle me-3"
                            />
                          </div>
                          <div class="flex-grow-1">
                            <h3 class="dropdown-item-title">
                              John Pierce
                              <span class="float-end fs-7 text-secondary">
                                <i class="bi bi-star-fill"></i>
                              </span>
                            </h3>
                            <p class="fs-7">I got your message bro</p>
                            <p class="fs-7 text-secondary">
                              <i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
                            </p>
                          </div>
                        </div>
                        <!--end::Message-->
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                        <!--begin::Message-->
                        <div class="d-flex">
                          <div class="flex-shrink-0">
                            <img
                              src="../../dist/assets/img/user3-128x128.jpg"
                              alt="User Avatar"
                              class="img-size-50 rounded-circle me-3"
                            />
                          </div>
                          <div class="flex-grow-1">
                            <h3 class="dropdown-item-title">
                              Nora Silvester
                              <span class="float-end fs-7 text-warning">
                                <i class="bi bi-star-fill"></i>
                              </span>
                            </h3>
                            <p class="fs-7">The subject goes here</p>
                            <p class="fs-7 text-secondary">
                              <i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
                            </p>
                          </div>
                        </div>
                        <!--end::Message-->
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                    </div>
                  </li>
                  <!--end::Messages Dropdown Menu-->

                   <!--begin::Notifications Dropdown Menu-->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                  <i class="bi bi-bell-fill"></i>
                  <span class="navbar-badge badge text-bg-warning">15</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                  <span class="dropdown-item dropdown-header">15 Notifications</span>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                    <i class="bi bi-envelope me-2"></i> 4 new messages
                    <span class="float-end text-secondary fs-7">3 mins</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                    <i class="bi bi-people-fill me-2"></i> 8 friend requests
                    <span class="float-end text-secondary fs-7">12 hours</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                    <i class="bi bi-file-earmark-fill me-2"></i> 3 new reports
                    <span class="float-end text-secondary fs-7">2 days</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item dropdown-footer"> See All Notifications </a>
                </div>
              </li>
              <!--end::Notifications Dropdown Menu-->


        @include('layout.frontend_ajuba.partials.language')

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
