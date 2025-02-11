<form action="{{ route('admin.whole.sele.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <div class="mb-2">
        <label for="product_type_name">Name</label>
        <input type="text" name="name" class="form-control mb-2" placeholder="Enter Product Type name">
    </div>

    <label for="status"> category Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status"  id="status" value="1">
    </label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

