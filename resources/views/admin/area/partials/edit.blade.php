<form action="{{ route('admin.area.update', $area->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')


    <div class="mb-2">
        <label for="area_name">{{ __('area.name') }}</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $area->name }}" placeholder="Enter your name">
    </div>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> {{ __('area.image') }} <br>
            <input type="text" name="image" value="{{ $area->upload_id }}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($area->upload_id) }}" alt="">
        </label>
    </div>

    <label for="status"> {{ __('area.status') }} <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle" checked placeholder=" Status" name="status" {{ $area->status == 1 ? 'checked' : '' }} id="status" value="1">
    </label>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
