<form action="{{ route('admin.testimonial.store') }}" method="post" enctype="multipart/form-data">
@csrf

<div class="form-group mb-2">
    <label for="name">Title</label>
    <input type="text" name="name" class="form-control mb-2"  id="name" placeholder="Enter name">
</div>
<div class="form-group mb-2">
    <label for="designation">designation</label>
    <textarea type="text" name="designation" class="form-control mb-2"  id="designation" placeholder="Enter designation"></textarea>
</div>

<div class="form-group mb-2">
    <label for="description">description</label>
    <textarea type="text" name="description" class="form-control mb-2"  id="description" placeholder="Enter description"></textarea>
</div>

<label  type="button" onclick="upload_select(this)">

    <input type="text" name="image" value="0" id="image" class="form-control mb-2" hidden >
    <img style="max-width: 100px" src="{{ dynamic_asset(0) }}" alt="">
</label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

