<a href="{{ url('/') }}" class="logo d-flex align-items-center">
    <!-- Uncomment the line below if you also wish to use an image logo -->
    <img src="{{ settings('app_image', 9) }}" alt="">
    {{-- <h1 class="sitename">Flattern</h1>  --}}
</a>

<nav id="navmenu" class="navmenu">
    <ul>
        <li><a href="{{ route('home') }}" class="active">Home<br></a></li>
        {{-- <li><a href="about.html">About</a></li>  --}}
        <li><a href="{{ route('service.index') }}">Services</a></li>
        <li><a href="{{ route('faq') }}">Faq</a></li>

        <li><a href="{{ route('blog') }}">Blog</a></li>
        {{-- <li class="dropdown"><a href="#"><span>Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
        <ul>
          <li><a href="#">Dropdown 1</a></li>
          <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="#">Deep Dropdown 1</a></li>
              <li><a href="#">Deep Dropdown 2</a></li>
              <li><a href="#">Deep Dropdown 3</a></li>
              <li><a href="#">Deep Dropdown 4</a></li>
              <li><a href="#">Deep Dropdown 5</a></li>
            </ul>
          </li>
          <li><a href="#">Dropdown 2</a></li>
          <li><a href="#">Dropdown 3</a></li>
          <li><a href="#">Dropdown 4</a></li>
        </ul>
      </li>  --}}

      <li><a href="{{ route('contact.index') }}">Contact</a></li>
        <li class="dropdown">
            <a href="#">
                <span>Language</span>
                <i class="bi bi-chevron-down toggle-dropdown"></i>
            </a>
            <ul>
                @foreach (language() as $items)
                <li><a href="{{ url('locale/'.$items->id) }}">{{ Str::title($items->name) }}</a></li>
                @endforeach
            </ul>
        </li>

    </ul>
    <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
</nav>
