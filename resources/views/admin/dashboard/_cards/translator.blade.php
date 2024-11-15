    {{--  payment Report  --}}
    @can('brand read')
        @foreach($languages as $key => $language)
              <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="translation" where="{{ $language->id }}" title="Total {{ $language->name }}" icon="far fa-payment" link="{{ route('admin.language.index')  }}" sort="sort_3" />

        @endforeach

    @endcan

    {{--  End payment Report  --}}
