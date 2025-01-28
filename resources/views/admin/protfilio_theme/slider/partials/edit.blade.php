<form
@if($slider)
    action="{{ route('admin.slider.update', $slider->id) }}" method="post"
    enctype="multipart/form-data">
    @method('put')
@else
    action="{{ route('admin.slider.store') }}"  method="post"
    enctype="multipart/form-data">
@endif

    @csrf

    <div class="form-group mb-2">
        <label for="slider">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="{{ $slider?->title }}" id="slider" placeholder="Enter slider">
    </div>
    <div class="form-group mb-2">
        <label for="slider">Description</label>
        <textarea type="text" name="description" class="form-control mb-2" value="" id="slider" placeholder="Enter description">{{ $slider?->short_description }}</textarea>
    </div>
    <div class="form-group mb-2">
        <label for="sub_description">sub_description</label>
        <textarea type="text" name="sub_description" class="form-control mb-2" value="" id="slider" placeholder="Enter description">{{ $slider?->sub_description }}</textarea>
    </div>

    <div class="form-group mb-2">
        <label for="slider">Button Title</label>
        <input type="text" name="button_title" class="form-control mb-2" value="{{ $slider?->button_title }}" id="button_title" placeholder="Enter button title">
    </div>
    <div class="form-group mb-2">
        <label for="button_link">Button Link</label>
        <input type="text" name="button_link" class="form-control mb-2" value="{{ $slider?->button_link }}" id="button_link" placeholder="Enter button link">
    </div>

    <label  type="button" onclick="upload_select(this)">
        Image <br/>
        <input type="text" name="image" value="{{ $slider?->upload_id ?? 0 }}" id="image" class="form-control mb-2" hidden >
        <img style="max-width: 100px" src="{{ dynamic_asset($slider?->upload_id) }}" alt="">
    </label>

    <label  type="button" onclick="upload_select(this)">
        Background Image <br/>
        <input type="text" name="upload_bg" id="upload_bg" value="{{ $slider?->upload_bg }}" class="form-control mb-2" hidden >
        <img style="max-width: 100px" src="{{ dynamic_asset($slider?->upload_bg) }}" alt="">
    </label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
