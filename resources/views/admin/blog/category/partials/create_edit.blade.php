<form 
@if($category)
action="{{ route('admin.blog.category.update', $category->id) }}"
@else
action="{{ route('admin.blog.category.store') }}" 
@endif
method="post" enctype="multipart/form-data">
    @csrf

    @if ($category)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="category_name"> Category Name </label>
        <input type="text" name="name" class="form-control mb-2" oninput="generateSlugMake(this, '#category_slug')" value="{{ $category ? $category->name : ''}}" placeholder="Enter your name">
    </div>

    <div class="mb-2">
        <label for="category_slug"> Slug </label>
        <input type="text" name="slug" class="form-control mb-2" id="category_slug" placeholder="Enter About Category" value="{{ $category ? $category->slug : ''}}">
    </div>

    <label for="status"> category Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{ $category ? ($category->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $category ? $category->upload_id : 0}}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($category ? $category->upload_id : 0) }}" alt="">
        </label>
    </div>
   

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
