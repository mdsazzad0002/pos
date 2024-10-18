@if(settings('pwa_status', 20))

<div class="add-to m-3 text-center" style="display: block;">
    <button class="p-3 rounded border shadow-sm add-to-btn" id="install-button"><i class="bi bi-app-indicator"></i> &nbsp;Install our web app. Next time find easyest this site </button>
</div>

<input type="text" value="{{ url('/') }}" id="local_url_pwa">

<script src="{{ asset('pwa.install.js') }}"></script>

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

@endif
