<div class="mobile-nav__wrapper">
    <div class="mobile-nav__overlay mobile-nav__toggler"></div>
    <div class="mobile-nav__content">
        <span class="mobile-nav__close mobile-nav__toggler"><i class="fa fa-times"></i></span>
        <div class="logo-box">
            <a href="{{ url('/') }}"><img src="{{settings('app_image',9)}}" alt=""></a>
        </div>
        <div class="mobile-nav__container"></div>
        <ul class="mobile-nav__contact list-unstyled">
            <li>
                <i class="fas fa-envelope"></i>
                <a href="mailto:{{ settings('app_email',9) }}">{{ settings('app_email',9) }}</a>
            </li>
            <li>
                <i class="fa fa-phone-alt"></i>
                <a href="tel:{{ settings('app_tel',9) }}">{{ settings('app_tel',9) }}</a>
            </li>
        </ul>
        <div class="mobile-nav__social">
            <a href="{{ settings('app_twitter',9) }}"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="{{ settings('app_facebook',9) }}"><i class="fab fa-facebook"></i></a>
            <a href="{{ settings('app_instagram',9) }}"><i class="fab fa-instagram"></i></a>
            <a href="{{ settings('app_whatsapp',9) }}"><i class="fab fa-whatsapp"></i></a>
            <a href="{{ settings('app_linkedin',9) }}"><i class="fab fa-linkedin"></i></a>
        </div>
    </div>
</div>
