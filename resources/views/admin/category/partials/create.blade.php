<form action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter category name">

    <input type="file" name="image" class="form-control mb-2" >

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

