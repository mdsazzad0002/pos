<form action="{{ route('admin.supplier.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter supplier name">
    <input type="text" name="email" class="form-control mb-2" placeholder="Enter supplier email">
    <input type="text" name="phone" class="form-control mb-2" placeholder="Enter supplier phone">
    <input type="text" name="location" class="form-control mb-2" placeholder="Enter supplier location">

    <input type="file" name="image" class="form-control mb-2" >

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

