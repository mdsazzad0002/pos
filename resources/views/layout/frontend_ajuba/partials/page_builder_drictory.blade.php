@if (auth()->check() && isset($homepage))
<div class="element_page_editor bg-secondary">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between py-1">
            <div class="text-light">Title : <span class="text-white">{{ $homepage->name ?? '' }}</span> (&nbsp;{{$homepage->slug ?? ''}}&nbsp;)</div>
            <div class="btn-group">
                <a class="btn btn-warning" target="_blank" 
                href="{{ route('admin.homePageManage.index') }}?id={{ $homepage->id }}&url={{ $edit_url }}">
                    <span class="btn_grouped"><i class="fas fa-edit"></i></span>
                    Edit Page
                </a>
                <a href="{{ url('/admin') }}"  target="_blank" class="btn btn-primary"><i class="fas fa-user"></i> Admin</a>
            </div>
        </div>
    </div>
</div>
@endif
