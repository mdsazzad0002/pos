<form action="{{ route('admin.supplier.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter supplier name">
    <input type="text" name="email" class="form-control mb-2" placeholder="Enter supplier email">
    <input type="text" name="phone" class="form-control mb-2" placeholder="Enter supplier phone">
    <input type="text" name="location" class="form-control mb-2" placeholder="Enter supplier location">
   <div class="input-group">
       <select  name="area" required class="form-control select2 input-group" data-ajax="true" data-url="{{ route('admin.area.select') }}" id="">
           <option value="">-- area -- </option>
       </select>
    <div class="input-group-append">
        <a target="_blank" href="{{ route('admin.area.index') }}" class="btn btn-primary">+</a>
    </div>

   </div>
    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt="">
        </label>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

