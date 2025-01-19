
@if(settings('google_tag_analysis_key', 24))
    <!-- Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ settings('google_tag_analysis_key', 24) }}"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', '{{ settings('google_tag_analysis_key', 24) }}');
    </script>
@endif

@if(settings('google_tag_manager_key', 24))
    <!-- Google Tag Manager -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ settings('google_tag_manager_key', 24) }}"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', '{{ settings('google_tag_manager_key', 24) }}');
    </script>
@endif

@if(settings('facebook_pixel_id', 24))
    <!-- Facebook Pixel -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window, document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '{{ settings('facebook_pixel_id', 24) }}');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1"
        src="https://www.facebook.com/tr?id={{ settings('facebook_pixel_id', 24) }}&ev=PageView&noscript=1"/>
    </noscript>
@endif

@if(settings('google_tag_analysis_key', 24))
    <!-- Facebook SDK -->
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous"
    src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v16.0"
    nonce="YOUR_NONCE"></script>
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                appId: '{{ settings('google_tag_analysis_key', 24) }}',
                autoLogAppEvents: true,
                xfbml: true,
                version: 'v16.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
@endif
