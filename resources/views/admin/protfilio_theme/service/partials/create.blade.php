<form action="{{ route('admin.service.store') }}" method="post" enctype="multipart/form-data">
    @csrf


    <div class="form-group mb-2">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="" id="title" placeholder="Enter service">
    </div>

    <div class="form-group mb-2">
        <label for="icon_class">Service Icon</label>
        <input type="text" name="icon_class" class="form-control mb-2" value="" id="icon_class" placeholder="Enter service icon">
    </div>


    <div class="form-group mb-2">
        <label for="service">Short Description</label>
        <textarea type="text" name="short_description" class="form-control mb-2" value="" id="short_description"
            placeholder="Enter short description"></textarea>
    </div>


    <div class="form-group mb-2">
        <label for="service">Description</label>
        <textarea type="text" name="description" class="form-control mb-2 summernote" value="" id="description"
            placeholder="Enter description"></textarea>
    </div>

    <label for="status"> Service Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="Service Status" name="status" id="status" value="1">
    </label>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
