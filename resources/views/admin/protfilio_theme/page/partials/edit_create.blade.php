<form action="{{ $page ? route('admin.page.update', $page->id) : route('admin.page.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($page)
        @method('put')
    @endif

    <div class="form-group mb-2">
        <label for="name">Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $page ?  $page->name : '' }}" id="name" placeholder="Enter page">
    </div>

    <div class="form-group mb-2">
        <label for="slug">slug</label>
        <input type="text" name="slug"  value="{{ $page ?   $page->slug : ''}}" class="form-control mb-2" value="" id="slug" placeholder="Enter slug">
    </div>

    <label for="status"> Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  {{$page ?  ( $page->status == 1 ? 'checked' : '') : '' }} checked  placeholder="page Status" name="status" id="status" value="1">
    </label>

    <label for="page_type"> Page Type <br/>
        <select name="page_type" id="page_type" class="form-control">

             @foreach (page_type() as $page_type)
                <option @if(($page ?  $page->page_type : '') == $page_type->name) selected @endif value="{{ $page_type->name }}">{{ Str::title($page_type->name != '' ? $page_type->name : 'Default') }}</option>
             @endforeach


        </select>
     </label>

    <label for="homepage"> Make As Home Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="homepage"   value="0">
        <input type="checkbox" class="toggle"   {{$page ?  ( $page->homepage == 1 ? 'checked' : '') : '' }} placeholder="page homepage" name="homepage" id="homepage" value="1">
    </label>






    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
