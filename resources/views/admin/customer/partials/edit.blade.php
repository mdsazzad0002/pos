<form action="{{ route('admin.customer.update', $customer->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $customer->name }}" placeholder="Enter customer name">
    <input type="text" name="email" class="form-control mb-2" value="{{ $customer->email }}" placeholder="Enter customer email">
    <input type="text" name="phone" class="form-control mb-2" value="{{ $customer->phone }}" placeholder="Enter customer phone">
    <input type="text" name="location" class="form-control mb-2" value="{{ $customer->location }}" placeholder="Enter customer location">

    <div class="row">
        <div class="col-md-8">
            <input type="file" name="image" class="form-control mb-2">
        </div>
        <div class="col-md-4">
            <img src="{{ dynamic_asset($customer->upload_id) }}" style="width: 100px" alt="">
        </div>
    </div>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
