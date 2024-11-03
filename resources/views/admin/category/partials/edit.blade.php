<form action="{{ route('admin.category.update', $category->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $category->name }}" placeholder="Enter your name">

    <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About Category">{{ $category->description }}</textarea>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $category->upload_id }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($category->upload_id) }}" alt="">
        </label>
    </div>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
