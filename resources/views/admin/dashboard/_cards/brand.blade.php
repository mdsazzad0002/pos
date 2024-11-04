    {{--  payment Report  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="brands" where="" title="Total brands" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="brands" where="active" title="Active" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-danger" items="brands" where="inactive" title="Inactive" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />

    @endcan

    {{--  End payment Report  --}}
