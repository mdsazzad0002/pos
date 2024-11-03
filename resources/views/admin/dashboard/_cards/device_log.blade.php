    {{--  payment Report  --}}
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="device_log" where="" title="Total Device" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan

    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="device_log" where="suspanded_device" title="Suspended Device" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-warning" items="device_log" where="active_device" title="Active Device" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-danger" items="device_log" where="lastactive" title="Last Active Time" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan
    {{--  End payment Report  --}}
