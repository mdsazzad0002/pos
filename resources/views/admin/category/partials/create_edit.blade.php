<form action="{{ $category ? route('admin.category.update', $category->id) : route('admin.category.store') }}" method="post" enctype="multipart/form-data">
    @csrf

    @if ($category)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="category_name"> {{ __('category.name') }} </label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $category ? $category->name : '' }}" placeholder="Enter your name">
    </div>

    <div class="mb-2">
        <label for="category_description"> {{ __('category.description') }} </label>
        <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About Category">{{ $category->description }}</textarea>
    </div>

    <label for="status"> Service Status <br/>
        <input type="checkbox" checked class="" hidden  name="service_status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Service Status" name="service_status" {{ $category ? ($category->service_status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    <label for="status"> category Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="Status" name="status" {{ $category ? ($category->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{  $category ? $category->upload_id : 0 }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset( $category ? $category->upload_id : 0) }}" alt="">
        </label>
    </div>
    <div class="">
        <label  type="button" onclick="upload_select(this)"> Background <br>
            <input type="text" name="background" id="background" class="form-control mb-2"  value="{{ $category ? $category->upload_bg : 0}}" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset( $category ? $category->upload_bg : 0) }}" alt="">
        </label>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
