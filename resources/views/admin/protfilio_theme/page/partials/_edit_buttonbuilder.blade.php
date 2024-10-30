
        <h3>{{ $homePageManage->name }}</h3>
        <ul id="sortable" class="accordion">
            @foreach($homePageManage->home_page as $key => $item)
            <li id="{{ $item->id }}" >
                @include('admin.protfilio_theme.page.partials._builder_partials')
            </li>

            @endforeach
        </ul>
   