@if (auth()->check())
<div class="element_page_editor bg-secondary">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between py-1">
            <div class="text-light">Title : <span class="text-white">{{ $homepage->name ?? '' }}</span> (&nbsp;{{$homepage->slug ?? ''}}&nbsp;)</div>
            <a class="btn btn-warning" target="_blank" 
            href="{{ route('admin.homePageManage.index') }}?id={{ $homepage->id }}&url={{ $edit_url }}">
                <span class="btn_grouped"><i class="fas fa-edit"></i></span>
                Edit Page
            </a>
        </div>
    </div>
</div>
@endif
