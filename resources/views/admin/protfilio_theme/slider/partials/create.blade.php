<form action="{{ route('admin.slider.store') }}" method="post" enctype="multipart/form-data">
@csrf


<div class="form-group mb-2">
    <label for="slider">Title</label>
    <input type="text" name="title" class="form-control mb-2" value="" id="slider" placeholder="Enter slider">
</div>
<div class="form-group mb-2">
    <label for="slider">Description</label>
    <textarea type="text" name="description" class="form-control mb-2" value="" id="slider" placeholder="Enter description"></textarea>
</div>

<div class="form-group mb-2">
    <label for="slider">Button Title</label>
    <input type="text" name="button_title" class="form-control mb-2" value="" id="button_title" placeholder="Enter button title">
</div>
<div class="form-group mb-2">
    <label for="button_link">Button Link</label>
    <input type="text" name="button_link" class="form-control mb-2" value="" id="button_link" placeholder="Enter button link">
</div>

<label  type="button" onclick="upload_select(this)">
    Image <br/>
    <input type="text" name="image" id="image" class="form-control mb-2" hidden >
    <img style="max-width: 100px" src="{{ dynamic_asset(0) }}" alt="">
</label>

<label  type="button" onclick="upload_select(this)">
    Background Image <br/>
    <input type="text" name="upload_bg" id="upload_bg" class="form-control mb-2" hidden >
    <img style="max-width: 100px" src="{{ dynamic_asset(0) }}" alt="">
</label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

