    {{--  payment Report  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="pwa" where="" title="Total items" icon="far fa-payment" link="{{ route('admin.setting.index', ['site-pwa-management', '40']) }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="pwa" where="status" title="Status" icon="far fa-payment" link="{{ route('admin.setting.index', ['site-pwa-management', '40']) }}" sort="sort_3" />


    @endcan

    {{--  End payment Report  --}}
