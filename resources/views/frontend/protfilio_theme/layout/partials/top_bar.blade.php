
<div class="topbar d-flex align-items-center light-background">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:{{ settings('app_email', 9) }}">{{ settings('app_email', 9) }}</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>{{ settings('app_tel', 9) }}</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="{{ settings('app_twitter', 9) }}" class="twitter"><i class="bi bi-twitter-x"></i></a>
        <a href="{{ settings('app_facebook', 9) }}" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="{{ settings('app_telegram', 9) }}" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="{{ settings('app_linkedin', 9) }}" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </div><!-- End Top Bar -->
