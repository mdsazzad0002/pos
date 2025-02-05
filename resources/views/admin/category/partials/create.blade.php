<form action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <div class="mb-2">
        <label for="category_name">Category Nmae</label>
        <input type="text" name="name" class="form-control mb-2" placeholder="Enter category name">
    </div>

    <div class="mb-2">
        <label for="description">Description</label>
        <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About Category"></textarea>
    </div>


    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt="">
        </label>
    </div>

    <div class="">
        <label  type="button" onclick="upload_select(this)"> Background <br>
            <input type="text" name="background" id="background" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt="">
        </label>
    </div>

    <label for="status"> category Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status"  id="status" value="1">
    </label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

