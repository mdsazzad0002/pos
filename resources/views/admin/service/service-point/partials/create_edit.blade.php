<form 
@if($service_point)
action="{{ route('admin.service-request.service-point.update', $service_point->id) }}"
@else
action="{{ route('admin.service-request.service-point.store') }}" 
@endif
method="post" enctype="multipart/form-data">
    @csrf

    @if ($service_point)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="service_point_name"> Service Point Name </label>
        <input type="text" name="name" class="form-control mb-2"  id="service_point_name" value="{{ $service_point ? $service_point->name : ''}}" placeholder="Enter your name">
    </div>
    
    <div class="mb-2">
        <label for="service_point_location"> Service Point Location </label>
        <textarea type="text" name="location" class="form-control mb-2" id="service_point_location" placeholder="Enter Service location">{{ $service_point ? $service_point->location : ''}}</textarea>
    </div>
    <div class="mb-2">
        <label for="service_point_location_url"> Service Point Location Url </label>
        <textarea type="text" name="location_url" class="form-control mb-2" id="service_point_location_url" placeholder="Enter Service location url">{{ $service_point ? $service_point->url : ''}}</textarea>
    </div>


    <label for="status"> Service Status Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{ $service_point ? ($service_point->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $service_point ? $service_point->upload_id : 0}}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($service_point ? $service_point->upload_id : 0) }}" alt="">
        </label>
    </div>
   

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
