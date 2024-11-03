<form action="{{ route('admin.supplier.update', $supplier->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $supplier->name }}" placeholder="Enter supplier name">
    <input type="text" name="email" class="form-control mb-2" value="{{ $supplier->email }}" placeholder="Enter supplier email">
    <input type="text" name="phone" class="form-control mb-2" value="{{ $supplier->phone }}" placeholder="Enter supplier phone">
    <input type="text" name="location" class="form-control mb-2" value="{{ $supplier->location }}" placeholder="Enter supplier location">
    <div class="input-group">
        <select  name="area" required class="form-control select2 input-group-prepend" data-ajax="true" data-url="{{ route('admin.area.select') }}" id="">
            <option value="{{ $supplier->area }}"> {{$supplier->areaItem->name ?? ''}} </option>
        </select>
        <a target="_blank" href="{{ route('admin.area.index') }}" class="btn btn-priamry">+</a>
    </div>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" value="{{ $supplier->upload_id }}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset( $supplier->upload_id) }}" alt="">
        </label>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
