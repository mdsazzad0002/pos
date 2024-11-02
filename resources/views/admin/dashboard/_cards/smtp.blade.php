    {{--  payment Report  --}}
    @can('smtp read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="mail_template" where="" title="Mail Template" icon="far fa-payment" link="{{ route('admin.mail.index') }}" sort="sort_3" />
    @endcan

    @can('smtp read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="mail_config" where="active" title="Active Payment Method" icon="far fa-payment" link="{{ route('admin.mail.index') }}" sort="sort_3" />
    @endcan
