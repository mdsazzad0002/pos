<form action="{{ route('admin.brand.update', $brand->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $brand->name }}" placeholder="Enter your name">
    <div class="row">
        <div class="col-md-8">
            <input type="file" name="image" class="form-control mb-2">
        </div>
        <div class="col-md-4">
            <img src="{{ dynamic_asset($brand->upload_id) }}" style="width: 100px" alt="">
        </div>
    </div>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
