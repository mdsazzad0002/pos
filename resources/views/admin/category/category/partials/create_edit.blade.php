<form action="{{ $category ? route('admin.category.update', $category->id) : route('admin.category.store') }}"
    method="post" enctype="multipart/form-data">
    @csrf

    @if ($category)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="category_name"> Category Name </label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $category ? $category->name : '' }}"
            placeholder="Enter your name">
    </div>

    <div class="mb-2">
        <label for="need_additional_check" class="cursor-pointer additional-infomation-toggler">Do you need additional
            Information?</label>
        <input type="checkbox" name="need_additional" id="need_additional_check" class=" mb-2" value="1"
            {{ $category ? ($category->need_additional == 1 ? 'checked' : '') : '' }}
            onchange="document.getElementById('additional_info').style.display = this.checked ? 'block' : 'none'">
    </div>


    <div class="mb-2" id="additional_info"
        style="display: {{ $category ? ($category->need_additional == 1 ? 'block' : 'none') : 'none' }}">
        <div class="mb-2">
            <label for="description">Short Description</label>
            <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About subcategory">{{ $category ? $category->description : '' }}</textarea>
        </div>

        <div class="col-lg-12">
            <label for="">Description</label>
            <textarea type="text" name="primary_description" class="form-control mb-2 summernote" placeholder="Description">{{ $category ? $category->primary_description : '' }}</textarea>
        </div>

        <div class="col-lg-12 pt-3">
            <label for="">Additional Description</label>
            <textarea type="text" name="additional_description" class="form-control mb-2 summernote"
                placeholder="Additional Description">{{ $category ? $category->additional_description : '' }}</textarea>
        </div>
    </div>

    <label for="status"> Service Status <br />
        <input type="checkbox" checked class="" hidden name="service_status" value="0">
        <input type="checkbox" class="toggle" placeholder=" Service Status" name="service_status"
            {{ $category ? ($category->service_status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    <label for="status"> category Status <br />
        <input type="checkbox" checked class="" hidden name="status" value="0">
        <input type="checkbox" class="toggle" placeholder="Status" name="status"
            {{ $category ? ($category->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>

    <div class="">
        <label type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $category ? $category->upload_id : 0 }}"
                class="form-control mb-2" hidden>
            <img style="max-height: 60px" src="{{ dynamic_asset($category ? $category->upload_id : 0) }}"
                alt="">
        </label>
    </div>
    <div class="">
        <label type="button" onclick="upload_select(this)"> Background <br>
            <input type="text" name="background" id="background" class="form-control mb-2"
                value="{{ $category ? $category->upload_bg : 0 }}" hidden>
            <img style="max-height: 60px" src="{{ dynamic_asset($category ? $category->upload_bg : 0) }}"
                alt="">
        </label>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
