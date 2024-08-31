<form action="{{ route('admin.supplier.update', $supplier->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $supplier->name }}" placeholder="Enter supplier name">
    <input type="text" name="email" class="form-control mb-2" value="{{ $supplier->email }}" placeholder="Enter supplier email">
    <input type="text" name="phone" class="form-control mb-2" value="{{ $supplier->phone }}" placeholder="Enter supplier phone">
    <input type="text" name="location" class="form-control mb-2" value="{{ $supplier->location }}" placeholder="Enter supplier location">

    <div class="row">
        <div class="col-md-8">
            <input type="file" name="image" class="form-control mb-2">
        </div>
        <div class="col-md-4">
            <img src="{{ dynamic_asset($supplier->upload_id) }}" style="width: 100px" alt="">
        </div>
    </div>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
