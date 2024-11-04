<form action="{{ route('admin.subcategory.store') }}" method="post" enctype="multipart/form-data">
@csrf

<div class="mb-2">
    <label for="subcategory_name">{{ __('category.name') }}</label>
        <select type="text" name="category" data-url="{{ route('admin.category.select') }}"
            data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username"
            aria-label="Username" aria-describedby="basic-addon1" >
            <option value="">category</option>
        </select>
    </div>

    <div class="mb-2">
        <label for="subcategory_name">{{ __('subcategory.name') }}</label>
        <input type="text" name="name" class="form-control mb-2" placeholder="Enter subcategory name">
    </div>


    <div class="mb-2">
        <label for="description">{{ __('subcategory.description') }}</label>
        <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About subcategory"></textarea>
    </div>

    <label for="status"> Subcategory Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status"  id="status" value="1">
    </label>


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

