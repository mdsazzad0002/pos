    {{--  payment Report  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="site_verification" where="" title="Total items" icon="far fa-payment" link="{{ route('admin.setting.index', ['ssite-verification-setting', '25']) }}" sort="sort_3" />


    @endcan

    {{--  End payment Report  --}}