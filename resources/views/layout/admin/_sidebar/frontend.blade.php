@canany(['slider read', 'service read', 'offerbanner read', 'testimonial read', 'faq read'])

<li class="nav-item">
    <a href="#" class="nav-link ">
        <i class="nav-icon fas fa-tv"></i>
        <p>
            Frontend Theme
            <i class="fas fa-angle-left right"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            @can('slider read')
                <a href="{{ route('admin.slider.index') }}" class="nav-link ">
                    <i class="fas fa-book-open nav-icon"></i>
                    <p>Slider / Hero </p>
                </a>  
            @endcan
        
            
            @can('service read')
            <a href="{{ route('admin.service.index') }}" class="nav-link ">
                <i class="fab fa-servicestack nav-icon"></i>
                <p>Service</p>
            </a>
            @endcan

            @can('offerbanner read')
            <a href="{{ route('admin.offerbanner.index') }}" class="nav-link ">
                <i class="fab  nav-icon">%</i>
                <p>Offer & Banner</p>
            </a>
            @endcan

            @can('testimonial read')
            <a href="{{ route('admin.testimonial.index') }}" class="nav-link ">
                <i class="fas fa-star-half-alt nav-icon"></i>
                <p>Testimonial</p>
            </a>
            @endcan

            @can('faq read')
            <a href="{{ route('admin.faq.index') }}" class="nav-link ">
                <i class="fas fa-question nav-icon"></i>
                <p>Faq</p>
            </a>
            @endcan
        </li>


      
        @canany(['footerlinkheading read', 'footerlinksubheading read'])
        <li class="nav-item">
            <a href="#" class="nav-link ">
                <i class="nav-icon fab fa-staylinked"></i>
                <p>
                   Footer
                    <i class="fas fa-angle-left right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    @can('footerlinkheading read')
                    <a href="{{ route('admin.footerlinkheading.index') }}" class="nav-link ">
                        <i class="fa fa-bezier-curve nav-icon"></i>
                        <p>Footer Link Heading</p>
                    </a>
                    @endcan

                    @can('footerlinksubheading read')
                    <a href="{{ route('admin.footerlinksubheading.index') }}" class="nav-link ">
                        <i class="fas fa-link nav-icon"></i>
                        <p>Footer Link</p>
                    </a>
                    @endcan
                </li>
            </ul>
        </li>
        @endcanany


        <li class="nav-item">
            <a href="#" class="nav-link ">
                <i class="nav-icon fab fa-staylinked"></i>
                <p>
                   Part Setting
                    <i class="fas fa-angle-left right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="{{ route('admin.setting.index', ['footer_style', '88']) }}" class="nav-link">
                        <i class="fas nav-icon">F</i>
                        <p>{{ __('sidebar.Footer_Style') }}</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('admin.setting.index', ['header_style', '80']) }}" class="nav-link">
                        <i class="fas  nav-icon">H</i>
                        <p>{{ __('sidebar.Header_Style') }}</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.setting.index', ['variant_part_status', '99']) }}" class="nav-link">
                        <i class="fas  nav-icon">P</i>
                        <p>{{ __('sidebar.variant_part_status') }}</p>
                    </a>
                </li>
            </ul>
        </li>

        @can('headernav read')
            <li class="nav-item">
                <a href="{{ route('admin.header.index') }}" class="nav-link ">
                    <i class="fas fa-book nav-icon"></i>
                    <p>Header Manage</p>
                </a>
            </li>            
        @endcan

        @can('page read')
             <li class="nav-item">
            <a href="{{ route('admin.page.index') }}" class="nav-link {{ Request::routeIs('admin.homePageManage.*') ? 'active' :''  }}">
                <i class="fas fa-book nav-icon"></i>
                <p>Page Management</p>
            </a>
        </li>
        @endcan
       
    </ul>
</li>
    
@endcanany
