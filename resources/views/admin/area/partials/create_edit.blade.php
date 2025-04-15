<form action="{{ $area ? route('admin.area.update', $area->id) : route('admin.area.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($area)
        @method('put')
    @endif


    <div class="mb-2">
        <label for="area_name">Area</label>
        <input type="text" name="name" class="form-control mb-2" value="{{  $area ? $area->name : '' }}" placeholder="Enter your name">
    </div>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" value="{{ $area ?  $area->upload_id : 0 }}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset( $area ? $area->upload_id : 0) }}" alt="">
        </label>
    </div>

    <label for="status"> Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle" checked placeholder=" Status" name="status" {{ $area ?( $area->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
