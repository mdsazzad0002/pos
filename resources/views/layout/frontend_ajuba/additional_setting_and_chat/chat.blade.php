@if(settings('tawk_to_status', 31))
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function() {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = '{{ settings('s1_src_link_tawk_to', 31) }}';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
@endif

@if(settings('crisp_chat_status', 31))
<script type="text/javascript">
    window.$crisp=[];
    window.CRISP_WEBSITE_ID="{{ settings('crisp_chat_id', 31) }}";
    (function(){d=document;s=d.createElement("script");
    s.src="https://client.crisp.chat/l.js";
    s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();
</script>
@endif



