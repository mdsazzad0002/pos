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


            @can('client read')
            <li class="nav-item">
                    <a href="{{ route('admin.client.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-handshake"></i>
                        <p> Client</p>
                    </a>
                </li>
            @endcan
            @can('project read')
                <li class="nav-item">
                    <a href="{{ route('admin.project.index') }}" class="nav-link {{ (Route::is('admin.project.edit') || Route::is('admin.project.create') )? 'active' : '' }}">
                        <i class="nav-icon fab fa-r-project"></i>
                        <p> Project</p>
                    </a>
                </li>
            @endcan

            

            @canany(['blog category read', 'blog read'])
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-user-cog nav-icon"></i>
                        <p>
                            Blog
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @can('blog category read')
                        <li class="nav-item">
                            <a href="{{ route('admin.blog.category.index') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Category</p>
                            </a>
                        </li>
                        @endcan

                        @can('blog create')
                        <li class="nav-item">
                            <a href="{{ route('admin.blog.blog.create') }}" class="nav-link">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Blog Create</p>
                            </a>
                        </li>
                        @endcan
                        @can('blog read')
                        <li class="nav-item">
                            <a href="{{ route('admin.blog.blog.index') }}" class="nav-link {{ Route::is('admin.blog.blog.edit') ? 'active' : '' }}">
                                <i class="fas fa-user-tie nav-icon"></i>
                                <p>Blog</p>
                            </a>
                        </li>
                        @endcan

                    </ul>
                </li>    
            @endcanany


            @can('offerbanner read')
            <li class="nav-item">
            <a href="{{ route('admin.offerbanner.index') }}" class="nav-link ">
                <i class="fab  nav-icon">%</i>
                <p>Offer & Banner</p>
            </a>
            </li>
            @endcan

            @can('testimonial read')
            <li class="nav-item">
            <a href="{{ route('admin.testimonial.index') }}" class="nav-link ">
                <i class="fas fa-star-half-alt nav-icon"></i>
                <p>Testimonial</p>
            </a>
            </li>
            @endcan

            @can('faq read')
            <li class="nav-item">
            <a href="{{ route('admin.faq.index') }}" class="nav-link ">
                <i class="fas fa-question nav-icon"></i>
                <p>Faq</p>
            </a>
            </li>
            @endcan
        </li>


      
        @canany(['footerlinkheading read', 'footerlinksubheading read'])
        <li class="nav-item">
            <a href="#" class="nav-link ">
                <i class="nav-icon fab ">F</i>
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

                    @can('footerlinksubheading read')
                    <a href="{{ route('admin.footer-style.index') }}" class="nav-link ">
                        <i class="fas fa-link nav-icon"></i>
                        <p>Footer Style</p>
                    </a>
                    @endcan
                </li>
            </ul>
        </li>
        @endcanany
        

        @canany(['footerlinkheading read', 'footerlinksubheading read'])
        <li class="nav-item">
            <a href="#" class="nav-link ">
                <i class="nav-icon fab ">H</i>
                <p>
                   Header Manage
                    <i class="fas fa-angle-left right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                    @can('headernav read')
                        <li class="nav-item">
                            <a href="{{ route('admin.header.index') }}" class="nav-link ">
                                <i class="fas fa-book nav-icon"></i>
                                <p>Header Manage</p>
                            </a>
                        </li>            
                    @endcan
                
                    {{-- @can('footerlinksubheading read') --}}
                    <li class="nav-item">
                        <a href="{{ route('admin.header-style.index') }}" class="nav-link ">
                            <i class="fas fa-link nav-icon"></i>
                            <p>Header Style</p>
                        </a>
                    </li>
                    {{-- @endcan --}}
            </ul>
        </li>
        @endcanany


        <li class="nav-item">
            <a href="{{ route('admin.product-style.index') }}" class="nav-link {{ Request::routeIs('admin.product-style.*') ? 'active' :''  }}">
                <i class="fas  nav-icon">P</i>
                <p>Product Style</p>
            </a>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.whychooseus.index') }}" class="nav-link {{ Request::routeIs('admin.whychooseus.*') ? 'active' :''  }}">
                <i class="fas  nav-icon">W</i>
                <p>Why Choose Us</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('admin.achivement.index') }}" class="nav-link {{ Request::routeIs('admin.achivement.*') ? 'active' :''  }}">
                <i class="fas  nav-icon">A</i>
                <p>Achivement</p>
            </a>
        </li>

      
        @can('page read')
        <li class="nav-item">
            <a href="#" class="nav-link ">
         
                <i class="fas fa-book nav-icon"></i>
                <p>
                    <p>Page Manage  <i class="fas fa-angle-left right"></i></p>
                </p>
            </a>
            <ul class="nav nav-treeview">
 

                <li class="nav-item">
                    <a  href="{{ route('admin.page.index') }}" class="nav-link {{ Request::routeIs('admin.homePageManage.*') ? 'active' :''  }}" class="nav-link">
                        <i class="fas fa-book nav-icon"></i>
                         <p>Page </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.setting.index', ['header_style', '80']) }}" class="nav-link">
                        <i class="fas  nav-icon">F</i>
                        <p>Filter Page Option</p>
                    </a>
                </li>
            </ul>
        </li>
        @endcan
       
    </ul>
</li>
    
@endcanany
