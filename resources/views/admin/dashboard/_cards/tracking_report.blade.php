    {{--  payment Report  --}}
    {{-- @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="payment" where="" title="Payment Method" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan

    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="payment" where="active" title="Active Payment Method" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-warning" items="payment" where="sandbox" title="Sand Box Test" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan
    @can('payment_credentials read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-danger" items="payment" where="inactive" title="Inactive Method" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" />
    @endcan --}}
    {{--  End payment Report  --}}

        {{-- <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-danger" items="payment" where="inactive" title="Inactive Method" icon="far fa-payment" link="{{ route('admin.settings.payment-configration.index') }}" sort="sort_3" /> --}}
        not ready yet
        tracking_report.blade.php
