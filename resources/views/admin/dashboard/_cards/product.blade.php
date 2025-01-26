    {{--  payment Report  --}}
    @can('product read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="products" where="" title="Total products" icon="far fa-payment" link="{{ route('admin.product.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="products" where="active" title="Active" icon="far fa-payment" link="{{ route('admin.product.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-danger" items="products" where="inactive" title="Inactive" icon="far fa-payment" link="{{ route('admin.product.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-info" items="products" where="feature" title="Feature" icon="far fa-payment" link="{{ route('admin.product.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-secondadry" items="products" where="selling" title="For Selling" icon="far fa-payment" link="{{ route('admin.product.index') }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-warning" items="products" where="service" title="Service" icon="far fa-payment" link="{{ route('admin.product.index') }}" sort="sort_3" />

    @endcan

    {{--  End payment Report  --}}
