<form action="{{ route('admin.subcategory.update', $subcategory->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <label for="subcategory_name">{{ __('category.name') }}</label>
        <select type="text" name="category" data-url="{{ route('admin.category.select') }}"
            data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username"
            aria-label="Username" aria-describedby="basic-addon1" >
            <option value="{{ $subcategory->category->id ?? 0 }}">{{ $subcategory->category->name ?? ''}}</option>
        </select>
    </div>

    <div class="mb-2">
        <label for="subcategory_name">{{ __('subcategory.name') }}</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $subcategory->name }}" placeholder="Enter your name">

    </div>


    <div class="mb-2">
        <label for="description">{{ __('subcategory.description') }}</label>
        <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About subcategory">{{ $subcategory->description }}</textarea>
    </div>



    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $subcategory->upload_id }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($subcategory->upload_id) }}" alt="">
        </label>
    </div>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
