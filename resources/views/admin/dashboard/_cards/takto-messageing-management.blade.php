    {{--  payment Report  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="takto" where="" title="Total items" icon="far fa-payment" link="{{ route('admin.setting.index', ['takto-messageing-management', '40']) }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="takto" where="status" title="Status" icon="far fa-payment" link="{{ route('admin.setting.index', ['takto-messageing-management', '40']) }}" sort="sort_3" />


    @endcan

    {{--  End payment Report  --}}
