{{-- Master Include  --}}
@extends('layout.frontend.master')

{{-- Define Site Title  --}}
@section('title', settings('dashboard_title', 10))


{{-- Content Extends  --}}
@section('content')





<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P596LV7H" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->






<script async src="https://www.googletagmanager.com/gtag/js?id=G-7EQPB43DB5"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'G-7EQPB43DB5'); // Replace with your GA4 ID

</script>

<script>
    gtag("event", "view_item_list", {
        item_list_id: ""
        , item_list_name: "Related products"
        , items: [{
            item_id: "SKU_12345"
            , item_name: "Stan and Friends Tee"
            , affiliation: "Google Merchandise Store"
            , coupon: "SUMMER_FUN"
            , discount: 2.22
            , index: 0
            , item_brand: "Google"
            , item_category: "Apparel"
            , item_category2: "Adult"
            , item_category3: "Shirts"
            , item_category4: "Crew"
            , item_category5: "Short sleeve"
            , item_list_id: "related_products"
            , item_list_name: "Related Products"
            , item_variant: "green"
            , location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo"
            , price: 10.01
            , quantity: 3
        }]
    });

</script>
<script>
    //for brevity, we're not including the isDesktop function here
    let manifest = {
        name: "{{ settings('pwa_name', 20) }}",
        "lang": "en",
        "dir": "ltr",
        "short_name": "{{ settings('pwa_sort_name', 20) }}",
        "scope":"{{ url('/') }}",
        "start_url": "{{ url('/') }}",
        "theme_color": "{{ settings('theme_color', 20) }}",
        "orientation": "{{ settings('pwa_orientation', 20) }}",
        "background_color": "{{ settings('pwa_background_color', 20) }}",
        "display": "{{ settings('pwa_display', 20) }}",
        "description": "{{ settings('pwa_description', 20) }}",
         icons: [
            {
            src: '{{ settings('pwa_image', 20) }}',
            sizes: "{{ settings('pwa_sizes', 20) }}",
            type: "{{ settings('pwa_type', 20) }}"
        }

        ]


    };
    let content = encodeURIComponent(JSON.stringify(manifest));
    let url = "data:application/manifest+json," + content;
    let element = document.createElement('link');
    element.setAttribute('rel', 'manifest');
    element.setAttribute('href', url);
    document.querySelector('head').appendChild(element);

</script>

<div class="add-to m-3 text-center" style="display: block;">
    <button class="p-3 rounded border shadow-sm add-to-btn" id="install-button"><i class="bi bi-app-indicator"></i> &nbsp;Install our web app. Next time find easyest this site </button>
</div>
<input type="text" value="{{ url('/') }}" id="local_url_pwa">
<script src="{{ asset('pwa.install.js') }}"></script>
@endsection
