@php
    if(!isset($service)){
        $service = null;
    }
@endphp

<form
@if($service)
    action="{{ route('admin.service.update', $service->id) }}" method="post"
@else
    action="{{ route('admin.service.store') }}" method="post"
@endif
    enctype="multipart/form-data">
    @csrf

@if($service)
    @method('put')
@endif

    <div class="form-group mb-2">
        <label for="service">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="{{ $service ? $service->title : '' }}" id="service" placeholder="Enter service">
    </div>

    <div class="form-group mb-2">
        <label for="icon_class">Service Icon</label>
        <input type="text" name="icon_class" class="form-control mb-2" value="{{  $service ? $service->icon_class :  ''}}" id="icon_class" placeholder="Enter service icon">
    </div>


    <div class="form-group mb-2">
        <label for="service">Short Description</label>
        <textarea type="text" name="short_description" class="form-control mb-2"  id="short_description"
            placeholder="Enter short description">{{ $service ? $service->short_description : '' }}</textarea>
    </div>


    <label type="button" class="mb-2" onclick="upload_select(this)">
        <label for="service">Service Image</label> <br/>
        <input type="text" name="image" value="{{ $service ? $service->upload_id : 0 }}" id="image" class="form-control mb-2" hidden="">
        <img style="max-width: 100px" src="{{ dynamic_asset($service ? $service->upload_id : 0) }}" alt="">
    </label>
    
    <label type="button" class="mb-2" onclick="upload_select(this)">
        <label for="bg_upload_id">Service BG</label> <br/>
        <input type="text" name="bg_upload_id" value="{{ $service ? $service->bg_upload_id : 0 }}" id="bg_upload_id" class="form-control mb-2" hidden="">
        <img style="max-width: 100px" src="{{ dynamic_asset($service ? $service->bg_upload_id : 0) }}" alt="">
    </label>


    <div class="form-group mb-2">
        <label for="service">Description</label>
        <textarea type="text" name="description" class="form-control mb-2 summernote" id="description"
            placeholder="Enter description">{{  $service ? $service->description : ''}}</textarea>
    </div>


    <label for="status"> Service Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="service Status" name="status" {{  $service ? ($service->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
