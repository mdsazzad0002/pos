<footer class="main-footer">
    <strong>Copyright &copy; 2024-{{ date('Y') }} <a href="{{ url('/') }}">{{  settings('app_name_short', 9)  }}</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> {{ $asset_version }}
    </div>
</footer>
