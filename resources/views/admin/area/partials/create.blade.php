<form action="{{ route('admin.area.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <div class="mb-2">
        <label for="area_name">{{ __('area.name') }}</label>
        <input type="text" name="name" class="form-control mb-2" placeholder="Enter area name">
    </div>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="0" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt="">
        </label>
    </div>
    <label for="status"> {{ __('area.status') }} <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle" checked placeholder=" Status" name="status" id="status" value="1">
    </label>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

