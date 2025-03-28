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
                <a href="{{ url('/') }}" class="nav-link " target="_blank">

                    <i class="fas fa-external-link-alt nav-icon"></i>
                    <p>
                        Visit Site
                    </p>
                </a>
            </li>
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








                @canany(['order read', 'order create'])
                <li class="nav-item">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-luggage-cart"></i>
                        <p>
                            Order Manage
                            <i class="fas fa-angle-left right"></i>

                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('order read')
                        <li class="nav-item">
                            <a href="{{ route('admin.order.index') }}" class="nav-link ">
                                <i class="fas fa-shopping-cart nav-icon"></i>
                                <p>Order <span class="right badge badge-danger">{{ unchecked_order() }}</span></p>
                            </a>
                        </li>    
                         @endcan
                        @if(config('app.env') == 'local')
                            @can('order create')
                                <li class="nav-item">
                                    <a href="{{ route('admin.order.create') }}" class="nav-link ">
                                        <i class="fas fa-cart-plus nav-icon"></i>
                                        <p>Create</p>
                                    </a>
                                </li>
                                @endcan
                                @endif

                        <li class="nav-item">
                            <a href="{{ route('admin.transaction.index') }}" class="nav-link ">
                                <i class="fas fa-money-check-alt nav-icon"></i>
                                <p>Transaction</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endcanany


                @canany(['custom_order type read', 'custom_order bulk read', 'custom_order custom read'])
                <li class="nav-item">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-luggage-cart"></i>
                        <p>
                            Custom Order
                            <i class="fas fa-angle-left right"></i>

                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('custom_order type read')
                        <li class="nav-item">
                            <a href="{{ route('admin.whole.sele.index') }}" class="nav-link ">
                                <i class="fas fa-tags nav-icon"></i>
                                <p>Product Type</p>
                            </a>
                        </li>
                        @endcan

                        @can('custom_order bulk read')
                            <li class="nav-item">
                                <a href="{{ route('admin.bluk.order') }}" class="nav-link ">
                                    <i class="fas fa-boxes nav-icon"></i>
                                    <p>Bluk Order <span class="right badge badge-danger">{{ blukOrder() }}</span></p>
                                </a>
                            </li>
                        @endcan

                        @can('custom_order custom read')
                            <li class="nav-item">
                                <a href="{{ route('admin.custom.order') }}" class="nav-link ">
                                    <i class="fas fa-boxes nav-icon custom-order-icon"></i>
                                    <p>Custom Order <span class="right badge badge-danger">{{ customOrder() }}</span></p>
                                </a>
                            </li>
                        @endif
                    </ul>
                </li>
                @endcanany





                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Product Manage
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('product create')
                        <li class="nav-item">
                            <a href="{{ route('admin.product.create') }}" class="nav-link {{ Request::routeIs('admin.product.edit') ? 'active': ''}}">
                                <i class="fas fa-plus nav-icon"></i>
                                <p>Product Create</p>
                            </a>
                        </li>
                        @endcan


                        @can('product read')
                        <li class="nav-item">
                            <a href="{{ route('admin.product.index') }}" class="nav-link">
                                <i class="fas fa-th-large nav-icon"></i>
                                <p>Product List</p>
                            </a>
                        </li>
                        @endcan


                    </ul>
                </li>


                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-tools nav-icon "></i>
                        <p>
                            Administration
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">


                        @can('category read')
                        <li class="nav-item">
                            <a href="{{ route('admin.category.index') }}" class="nav-link @if(Request::routeIs('admin.category.category_for_order')) active @endif">
                                <i class="fab fa-linode nav-icon"></i>
                                <p>Category</p>
                            </a>
                        </li>
                        @endcan
                        @can('subcategory read')
                        <li class="nav-item">
                            <a href="{{ route('admin.subcategory.index') }}" class="nav-link ">
                                <i class="fab fa-linode nav-icon"></i>
                                <p>Subcategory</p>
                            </a>
                        </li>
                        @endcan

                        @can('area read')
                        <li class="nav-item">
                            <a href="{{ route('admin.area.index') }}" class="nav-link ">
                                <i class="fas fa-map-marker-alt nav-icon"></i>
                                <p>Area</p>
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
                        @can('discount read')
                        <li class="nav-item">
                            <a href="{{ route('admin.discount.index') }}" class="nav-link">
                                <i class="fab  nav-icon">%</i>
                                <p>Discount</p>
                            </a>
                        </li>
                        @endcan
                        @can('vat read')
                        <li class="nav-item">
                            <a href="{{ route('admin.vat.index') }}" class="nav-link">
                                <i class="fab  nav-icon">%</i>
                                <p>Vat</p>
                            </a>
                        </li>
                        @endcan

                        {{-- @can('vat read') --}}
                        <li class="nav-item">
                            <a href="{{ route('admin.order_status.index') }}" class="nav-link">
                                <i class="fas fa-toggle-on  nav-icon"></i>
                                <p>Order Status</p>
                            </a>
                        </li>
                        {{-- @endcan --}}




                    </ul>
                </li>




              
                @can('stock read')
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-boxes nav-icon"></i>
                        <p>
                            Stock Manage
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
                        @if (config('app.env') == 'local')
                            <li class="nav-item">
                                <a href="{{ route('admin.stock.stockalert') }}" class="nav-link">
                                    <i class="fab fa-dropbox nav-icon"></i>
                                    <p>Stock Alert</p>
                                </a>
                            </li>
                            
                        @endif
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
                @can('LeadContact read')
                    <li class="nav-item">
                        <a href="{{ route('admin.LeadContact.index') }}" class="nav-link">
                            <i class="fas fa-user-tie nav-icon"></i>
                            <p>Contact Message</p>
                        </a>
                    </li>
                @endcan

               
                @canany(['supplier read', 'supplier create'])
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-swatchbook nav-icon"></i>
                        <p>
                            Supplier Manage
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
                @endcanany





                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-user-cog nav-icon"></i>
                        <p>
                            User Manage 
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
                        @if(config('app.env') == 'local')

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
                        @can('cashcounter read')
                        <li class="nav-item">
                            <a href="{{ route('admin.cashcounter.index') }}" class="nav-link">

                                <i class="fas fa-circle-notch nav-icon"></i>
                                <p>Cash Counter</p>
                            </a>
                        </li>
                        @endcan
                        @endif

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

           
                @if(config('app.env') == 'local')
                @canany(['LeadAccount read', 'LeadContact read', 'LeadDeal read', 'Lead read', 'LeadDealStage read', 'LeadSource read'])
                    
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-user-cog nav-icon"></i>
                        <p>
                            CRM Manage
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
                @endcanany
                @endif





                 @canany(['service-point read', 'service-request read'])
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="fas fa-user-cog nav-icon"></i>
                            <p>
                                Service Request
                               
                                <span class="right badge badge-danger"> {{ getUnreadServiceRequest() }}</span>
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('service-point read')
                            <li class="nav-item">
                                <a href="{{ route('admin.service-request.service-request.index') }}" class="nav-link">
                                    <i class="fas fa-user-tie nav-icon"></i>
                                    <p>Service Request      <span class="right badge badge-danger"> {{ getUnreadServiceRequest() }}</span></p>
                                </a>
                            </li>
                            @endcan

                            @can('service-request read')
                            <li class="nav-item">
                                <a href="{{ route('admin.service-request.service-point.index') }}" class="nav-link">
                                    <i class="fas fa-user-tie nav-icon"></i>
                                    <p> Service Point</p>
                                </a>
                            </li>
                            @endcan
                          

                        </ul>
                    </li>    
                @endcanany


                @can('sub-scribers read')
                    <li class="nav-item">
                        <a href="{{ route('admin.sub-scribers.index') }}" class="nav-link">
                            <i class="nav-icon far fa-newspaper"></i>
                            <p> Subscribers</p>
                        </a>
                    </li>
                @endcan

                
              




                @include('layout.admin._sidebar.frontend')

                @include('layout.admin._sidebar.settings')




        </nav>



        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
