<aside class="main-sidebar
 {{ settings('theme_sidebar-no-expand', 1) ? 'sidebar-no-expand' :''}}
 {{ settings('theme_dark_sidebar_variant', 1)}}
sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('admin.dashboard') }}" class="brand-link d-flex align-items-center
    {{ settings('theme_brand_link', 1)}}
    ">
        <img src="{{ settings('app_image', 9) }}" alt="{{ settings('app_name_short', 9) }}" class="brand-image img-circle " style="opacity: .8">
        <span class="brand-text font-weight-light">{{ settings('app_name_short', 9) }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

        @php
        $active_menu = 'active progress-bar progress-bar-striped align-items-center flex-start flex-row justify-content-start';
        @endphp
        <!-- SidebarSearch Form -->
        <div class="form-inline p-2">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>


        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column
        {{ settings('nav-flat', 1) ? 'nav-flat' :''}}
        {{ settings('theme_nav-legacy', 1) ? 'nav-legacy' :''}}
        {{ settings('theme_nav-compact', 1) ? 'nav-compact' :''}}
        {{ settings('theme_nav-child-indent', 1) ? 'nav-child-indent' :''}}
        {{ settings('theme_nav-collapse-hide-child', 1) ? 'nav-collapse-hide-child' :''}}

        " data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="{{ route('admin.dashboard') }}" class="nav-link
                    {{ Request::routeIs('admin.dashboard') ||
                    Request::routeIs('admin.home') ||
                    Request::routeIs('admin') ? $active_menu : ''
                    }}
            ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>








                @can('order read')
                <li class="nav-item">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-luggage-cart"></i>
                        <p>
                            Order management
                            <i class="fas fa-angle-left right"></i>

                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.order.index') }}" class="nav-link ">
                                <i class="fas fa-shopping-cart nav-icon"></i>
                                <p>Order</p>
                            </a>
                        </li>
                        @can('order create')
                        <li class="nav-item">
                            <a href="{{ route('admin.order.create') }}" class="nav-link ">
                                <i class="fas fa-cart-plus nav-icon"></i>
                                <p>Create</p>
                            </a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcan



                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            {{ __('sidebar.product_management') }}
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('product read')
                        <li class="nav-item">
                            <a href="{{ route('admin.product.index') }}" class="nav-link">
                                <i class="fas fa-th-large nav-icon"></i>
                                <p>{{ __('settings.product_list') }}</p>
                            </a>
                        </li>
                        @endcan
                        @can('product create')
                        <li class="nav-item">
                            <a href="{{ route('admin.product.create') }}" class="nav-link">
                                <i class="fas fa-plus nav-icon"></i>
                                <p>{{ __('sidebar.product_create') }}</p>
                            </a>
                        </li>
                        @endcan

                        @can('category read')
                        <li class="nav-item">
                            <a href="{{ route('admin.category.index') }}" class="nav-link ">
                                <i class="fab fa-linode nav-icon"></i>
                                <p>{{ __('sidebar.category') }}</p>
                            </a>
                        </li>
                        @endcan

                        @can('area read')
                        <li class="nav-item">
                            <a href="{{ route('admin.area.index') }}" class="nav-link ">
                                <i class="fas fa-map-marker-alt nav-icon"></i>
                                <p>{{ __('sidebar.area') }}</p>
                            </a>
                        </li>
                        @endcan

                        @can('brand read')
                        <li class="nav-item">
                            <a href="{{ route('admin.brand.index') }}" class="nav-link ">
                                <i class="fas fa-ring nav-icon"></i>
                                <p>Brand</p>
                            </a>
                        </li>
                        @endcan

                        @can('unit read')
                        <li class="nav-item">
                            <a href="{{ route('admin.unit.index') }}" class="nav-link">
                                <i class="fab fa-unity nav-icon"></i>
                                <p>Unit</p>
                            </a>
                        </li>
                        @endcan


                    </ul>
                </li>





                @can('stock read')
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-boxes nav-icon"></i>
                        <p>
                            Stock Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.stock.index') }}" class="nav-link ">
                                <i class="fas fa-box nav-icon"></i>
                                <p>Stock</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.stock.stockalert') }}" class="nav-link">
                                <i class="fab fa-dropbox nav-icon"></i>
                                <p>Stock Alert</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endcan


                @can('customer read')
                    <li class="nav-item">
                        <a href="{{ route('admin.customer.index') }}" class="nav-link ">
                            <i class="fas fa-user-tag nav-icon"></i>
                            <p>Customer</p>
                        </a>
                    </li>
                @endcan


                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-swatchbook nav-icon"></i>
                        <p>
                            Supplier Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">

                        @can('supplier read')
                        <li class="nav-item">
                            <a href="{{ route('admin.supplier.index') }}" class="nav-link ">
                                <i class="fas fa-user-secret nav-icon"></i>
                                <p>Supplier</p>
                            </a>
                        </li>
                        @endcan

                        @can('purchase read')
                        <li class="nav-item">
                            <a href="{{ route('admin.purchase.index') }}" class="nav-link">
                                <i class="fas fa-store-alt nav-icon"></i>
                                <p>Purchase</p>
                            </a>
                        </li>
                        @endcan

                        @can('purchase create')
                        <li class="nav-item">
                            <a href="{{ route('admin.purchase.create') }}" class="nav-link">
                                <i class="fas fa-plus nav-icon"></i>
                                <p>Purchase Create</p>
                            </a>
                        </li>
                        @endcan

                    </ul>
                </li>





                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-user-cog nav-icon"></i>
                        <p>
                            User Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('user read')
                        <li class="nav-item">
                            <a href="{{ route('admin.user.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>User</p>
                            </a>
                        </li>
                        @endcan

                        @can('user read')
                        <li class="nav-item">
                            <a href="{{ route('admin.CommisionAgent.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Commision Agent</p>
                            </a>
                        </li>
                        @endcan

                        @can('branch read')
                        <li class="nav-item">
                            <a href="{{ route('admin.branch.index') }}" class="nav-link">

                                <i class="fas fa-circle-notch nav-icon"></i>
                                <p>Branch</p>
                            </a>
                        </li>
                        @endcan

                        @can('role read')
                        <li class="nav-item">
                            <a href="{{ route('admin.permission.index') }}" class="nav-link">
                                <i class="fas fa-user-shield nav-icon"></i>
                                <p>Role</p>
                            </a>
                        </li>
                        @endcan

                    </ul>
                </li>


                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-user-cog nav-icon"></i>
                        <p>
                            CRM Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('LeadAccount read')
                        <li class="nav-item">
                            <a href="{{ route('admin.LeadAccount.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Account</p>
                            </a>
                        </li>
                        @endcan

                        @can('LeadContact read')
                        <li class="nav-item">
                            <a href="{{ route('admin.LeadContact.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Contacts</p>
                            </a>
                        </li>
                        @endcan

                        @can('LeadDeal read')
                        <li class="nav-item">
                            <a href="{{ route('admin.LeadDeal.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>LeadDeal</p>
                            </a>
                        </li>
                        @endcan


                        @can('LeadSource read')
                        <li class="nav-item">
                            <a href="{{ route('admin.LeadSource.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>LeadSource</p>
                            </a>
                        </li>
                        @endcan

                        @can('Lead read')
                        <li class="nav-item">
                            <a href="{{ route('admin.Lead.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Lead</p>
                            </a>
                        </li>
                        @endcan

                        @can('LeadDealStage read')
                        <li class="nav-item">
                            <a href="{{ route('admin.LeadDealStage.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>LeadDealStage</p>
                            </a>
                        </li>
                        @endcan



                    </ul>
                </li>
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
                                <p>{{ __('language.sidebar.name') }}</p>
                            </a>
                        </li>
                        @endcan

                        @can('Translation read')
                        <li class="nav-item">
                            <a href="{{ route('admin.Translation.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>{{ __('translate.sidebar.name') }}</p>
                            </a>
                        </li>
                        @endcan


                    </ul>
                </li>




                @include('layout.admin._sidebar.frontend')

                @include('layout.admin._sidebar.settings')




        </nav>



        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
