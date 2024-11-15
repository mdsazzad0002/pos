    {{--  payment Report  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="lanuage" where="" title="Total items" icon="far fa-payment" link="{{ route('admin.language.index')  }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="lanuage" where="active" title="Active" icon="far fa-payment" link="{{ route('admin.language.index')  }}" sort="sort_3" />

        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="lanuage" where="inactive" title="InActive" icon="far fa-payment" link="{{ route('admin.language.index')  }}" sort="sort_3" />


    @endcan

    {{--  End payment Report  --}}
