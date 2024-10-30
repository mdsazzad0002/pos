<form action="{{ route('admin.page.store') }}" method="post" enctype="multipart/form-data">
    @csrf


    <div class="form-group mb-2">
        <label for="name">Name</label>
        <input type="text" name="name" class="form-control mb-2" value="" id="name" placeholder="Enter name">
    </div>

    <div class="form-group mb-2">
        <label for="slug">slug</label>
        <input type="text" name="slug" class="form-control mb-2" value="" id="slug" placeholder="Enter slug">
    </div>

    <label for="status"> Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle" checked  placeholder="page Status" name="status" id="status" value="1">
    </label>

    <label for="homepage"> Make As Home Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="homepage"   value="0">
        <input type="checkbox" class="toggle"  placeholder="page homepage" name="homepage" id="homepage" value="1">
    </label>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
