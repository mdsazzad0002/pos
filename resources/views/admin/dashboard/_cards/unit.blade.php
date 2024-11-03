    {{--  payment Report  --}}
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="units" where="" title="Total Unit" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />
    @endcan

    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="units" where="decimal" title="Decimal Items" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />
    @endcan
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-info" items="units" where="undecimal" title="Non Decimal Items" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />
    @endcan
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-warning" items="units" where="sub_items" title="Relation Items" icon="far fa-payment" link="{{ route('admin.unit.index') }}" sort="sort_3" />
    @endcan
    {{--  End payment Report  --}}
