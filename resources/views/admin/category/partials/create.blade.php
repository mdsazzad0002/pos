<form action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter category name">

    <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About Category"></textarea>

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

