<form action="{{ route('admin.service.update', $service->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="service">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="{{ $service->title }}" id="service" placeholder="Enter service">
    </div>

    <div class="form-group mb-2">
        <label for="icon_class">Service Icon</label>
        <input type="text" name="icon_class" class="form-control mb-2" value="{{ $service->icon_class }}" id="icon_class" placeholder="Enter service icon">
    </div>


    <div class="form-group mb-2">
        <label for="service">Short Description</label>
        <textarea type="text" name="short_description" class="form-control mb-2"  id="short_description"
            placeholder="Enter short description">{{ $service->short_description }}</textarea>
    </div>


    <div class="form-group mb-2">
        <label for="service">Description</label>
        <textarea type="text" name="description" class="form-control mb-2 summernote" id="description"
            placeholder="Enter description">{{ $service->description }}</textarea>
    </div>


    <label for="status"> service Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="service Status" name="status" {{ $service->status == 1 ? 'checked' : '' }} id="status" value="1">
    </label>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
