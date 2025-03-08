<ul id="sortable" class="accordion">
    @foreach ($page_content->home_page as $items)
    <li id="{{ $items->id }}" class="menu_of_settings_page_container">
        <div class="row">
            <div class="col-md-12 menu_of_settings_page">
                @include('admin.protfilio_theme.page.partials._builder_partials',['item'=>$items])
            </div>
        </div>
    </li>
    @endforeach
</ul>


<div class="text-center">
    <button type="button" class="btn btn-primary    mt-2" data-toggle="modal" data-target="#exampleModal">New Component</button>
</div>