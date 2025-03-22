<form action="{{ $brand ?  route('admin.brand.update', $brand->id) : route('admin.brand.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($brand)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="brand_name">brand Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $brand ? $brand->name : '' }}" placeholder="Enter your name">
    </div>


    <div class="col-lg-6">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $brand ? $brand->upload_id : 0 }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset( $brand ? $brand->upload_id : 0 ) }}" alt="">
        </label>
    </div>
    
    <label for="status"> brand Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$brand ? ( $brand->status == 1 ? 'checked' : '' ) : ''   }} id="status" value="1">
    </label>


    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
