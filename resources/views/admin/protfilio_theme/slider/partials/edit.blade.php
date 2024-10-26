<form action="{{ route('admin.slider.update', $slider->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="slider">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="{{ $slider->title }}" id="slider" placeholder="Enter slider">
    </div>
    <div class="form-group mb-2">
        <label for="slider">Description</label>
        <textarea type="text" name="description" class="form-control mb-2" value="{{ $slider->short_description }}" id="slider" placeholder="Enter description"></textarea>
    </div>

    <div class="form-group mb-2">
        <label for="slider">Button Title</label>
        <input type="text" name="button_title" class="form-control mb-2" value="{{ $slider->button_title }}" id="button_title" placeholder="Enter button title">
    </div>
    <div class="form-group mb-2">
        <label for="button_link">Button Link</label>
        <input type="text" name="button_link" class="form-control mb-2" value="{{ $slider->button_link }}" id="button_link" placeholder="Enter button link">
    </div>

    <label  type="button" onclick="upload_select(this)">

        <input type="text" name="image" value="{{ $slider->upload_id }}" id="image" class="form-control mb-2" hidden >
        <img style="max-width: 100px" src="{{ dynamic_asset($slider->upload_id) }}" alt="">
    </label>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
