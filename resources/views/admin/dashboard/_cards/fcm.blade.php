    {{--  payment Report  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="fcm" where="" title="Total items" icon="far fa-payment" link="{{ route('admin.fcm_notification.index')  }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="fcm" where="status" title="Status" icon="far fa-payment" link="{{ route('admin.fcm_notification.index')  }}" sort="sort_3" />


    @endcan

    {{--  End payment Report  --}}
