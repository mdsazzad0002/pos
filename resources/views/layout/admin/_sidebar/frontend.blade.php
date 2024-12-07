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
            <a href="{{ route('admin.slider.index') }}" class="nav-link ">
                <i class="fas fa-book-open nav-icon"></i>
                <p>Slider / Hero </p>
            </a>
            <a href="{{ route('admin.service.index') }}" class="nav-link ">
                <i class="fab fa-servicestack nav-icon"></i>
                <p>Service</p>
            </a>
            <a href="{{ route('admin.offerbanner.index') }}" class="nav-link ">
                <i class="fab  nav-icon">%</i>
                <p>Offer & Banner</p>
            </a>
            <a href="{{ route('admin.testimonial.index') }}" class="nav-link ">
                <i class="fas fa-star-half-alt nav-icon"></i>
                <p>Testimonial</p>
            </a>
            <a href="{{ route('admin.faq.index') }}" class="nav-link ">
                <i class="fas fa-question nav-icon"></i>
                <p>Faq</p>
            </a>
        </li>

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
                    <a href="{{ route('admin.footerlinkheading.index') }}" class="nav-link ">
                        <i class="fa fa-bezier-curve nav-icon"></i>
                        <p>Footer Link Heading</p>
                    </a>
                    <a href="{{ route('admin.footerlinksubheading.index') }}" class="nav-link ">
                        <i class="fas fa-link nav-icon"></i>
                        <p>Footer Link</p>
                    </a>
                </li>
            </ul>
        </li>

        <li class="nav-item">
            <a href="{{ route('admin.header.index') }}" class="nav-link ">
                <i class="fas fa-book nav-icon"></i>
                <p>Header Manage</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('admin.page.index') }}" class="nav-link {{ Request::routeIs('admin.homePageManage.*') ? 'active' :''  }}">
                <i class="fas fa-book nav-icon"></i>
                <p>Page Management</p>
            </a>
        </li>

    </ul>
</li>
