@php
    $footer_heading = App\Models\FooterLinkHeading::where('status', 1)->get();
@endphp

<footer id="footer" class="footer dark-background">

    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-4 col-md-6 footer-about">
            <a href="index.html" class="logo d-flex align-items-center">
              <span class="sitename">{{ settings('app_name_short', 9) }}</span>
            </a>
            <div class="footer-contact pt-3">
              <p><a href="{{ settings('app_maps',9) }}"></a>{!! settings('app_address', 9) !!}</p>
              <p class="mt-3"><strong>Phone:</strong> <span>{{ settings('app_tel', 9) }}</span></p>
              <p><strong>Email:</strong> <span>{{ settings('app_email', 9) }}</span></p>
            </div>
          </div>

          @foreach ($footer_heading as $items)
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>{{ $items->title }}</h4>
            <ul>
                
                @foreach ($items->sub_heading as $links)
                    <li> <i class="{{ $links->icon }}"></i><a href="{{ $links->url }}">{{ $links->title }}</a></li>
                @endforeach

            </ul>
          </div>
          @endforeach

        </div>
      </div>
    </div>

    <div class="copyright text-center">
      <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

        <div class="d-flex flex-column align-items-center align-items-lg-start">
          <div>
            © Copyright <strong><span>{{ settings('app_name_short', 9) }}</span></strong>. All Rights Reserved
          </div>
        </div>

        <div class="social-links order-first order-lg-last mb-3 mb-lg-0">
          <a href="{{ settings('app_twitter', 9) }}"><i class="bi bi-twitter-x"></i></a>
          <a href="{{ settings('app_facebook', 9) }}"><i class="bi bi-facebook"></i></a>
          <a href="{{ settings('app_instagram', 9) }}"><i class="bi bi-instagram"></i></a>
          <a href="{{ settings('app_linkedin', 9) }}"><i class="bi bi-linkedin"></i></a>
        </div>

      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  @if(settings('app_preloader_status', 9))


  <!-- Preloader -->
<div id="preloader">
    <div></div>
    <div></div>
    <div></div>
    <div></div>
  </div>
  @endif
  <!-- Vendor JS Files -->
