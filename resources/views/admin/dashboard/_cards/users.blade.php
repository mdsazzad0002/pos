    {{--  User Report  --}}
    @can('user read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="users" where="" title="Total User" icon="far fa-user" link="{{ route('admin.user.index') }}" sort="sort_3" />
    @endcan

    @can('user read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="users" where="active" title="Active User" icon="far fa-user" link="{{ route('admin.user.index') }}" sort="sort_3" />
    @endcan
    @can('user read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-danger" items="users" where="inactive" title="Inactive User" icon="far fa-user" link="{{ route('admin.user.index') }}" sort="sort_3" />
    @endcan
    {{--  End User Report  --}}
