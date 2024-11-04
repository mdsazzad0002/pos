<form action="{{ route('admin.category.update', $category->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="mb-2">
        <label for="category_name"> {{ __('category.name') }} </label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $category->name }}" placeholder="Enter your name">
    </div>

    <div class="mb-2">
        <label for="category_description"> {{ __('category.description') }} </label>
        <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About Category">{{ $category->description }}</textarea>
    </div>

    <label for="status"> category Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{ $category->status == 1 ? 'checked' : '' }} id="status" value="1">
    </label>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $category->upload_id }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($category->upload_id) }}" alt="">
        </label>
    </div>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
