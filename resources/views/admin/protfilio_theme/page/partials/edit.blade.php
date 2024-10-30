<form action="{{ route('admin.page.update', $page->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="name">Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $page->name }}" id="name" placeholder="Enter page">
    </div>

    <div class="form-group mb-2">
        <label for="slug">slug</label>
        <input type="text" name="slug"  value="{{ $page->slug }}" class="form-control mb-2" value="" id="slug" placeholder="Enter slug">
    </div>

    <label for="status"> Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  {{ $page->status == 1 ? 'checked' : '' }} checked  placeholder="page Status" name="status" id="status" value="1">
    </label>

    <label for="homepage"> Make As Home Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="homepage"   value="0">
        <input type="checkbox" class="toggle"   {{ $page->homepage == 1 ? 'checked' : '' }} placeholder="page homepage" name="homepage" id="homepage" value="1">
    </label>






    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
