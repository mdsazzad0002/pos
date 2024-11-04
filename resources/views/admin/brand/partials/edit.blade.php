<form action="{{ route('admin.brand.update', $brand->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="mb-2">
        <label for="brand_name">Brand Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $brand->name }}" placeholder="Enter your name">
    </div>


    <div class="col-lg-6">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $brand->upload_id }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($brand->upload_id) }}" alt="">
        </label>
    </div>
    
    <label for="status"> Brand Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{ $brand->status == 1 ? 'checked' : '' }} id="status" value="1">
    </label>


    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
