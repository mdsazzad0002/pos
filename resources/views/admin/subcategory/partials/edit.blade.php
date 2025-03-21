<form 
@if ($subcategory)
    action="{{ route('admin.subcategory.update', $subcategory->id) }}"
@else
    action="{{ route('admin.subcategory.store') }}" 
@endif
  method="post" enctype="multipart/form-data">
    @csrf
    @if ($subcategory)
        @method('put')
    @endif

    <label for="subcategory_name">Category Name</label>
        <select type="text" name="category" data-url="{{ route('admin.category.select') }}"
            data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username"
            aria-label="Username" aria-describedby="basic-addon1" >
            <option value="{{ $subcategory ? $subcategory->category->id : 0 }}">{{$subcategory ?  $subcategory->category->name : ''}}</option>
        </select>
    </div>

    <div class="mb-2">
        <label for="subcategory_name">Sub CategoryName</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $subcategory ? $subcategory->name : ''}}" placeholder="Enter your name">

    </div>


    <div class="mb-2">
        <label for="description">Short Description</label>
        <textarea type="text" name="description" class="form-control mb-2" placeholder="Enter About subcategory">{{$subcategory ?  $subcategory->description : ''}}</textarea>
    </div>

    <div class="col-lg-12">
        <label for="">Description</label>
        <textarea type="text" name="primary_description" class="form-control mb-2 summernote"
            placeholder="Description">{{$subcategory ? $subcategory->primary_description : '' }}</textarea>
    </div>

    <div class="col-lg-12 pt-3">
        <label for="">Additional Description</label>
        <textarea type="text" name="additional_description" class="form-control mb-2 summernote"
            placeholder="Additional Description">{{ $subcategory ? $subcategory->additional_description : '' }}</textarea>
    </div>


    <label for="status"> Subcategory Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$subcategory ? ( $subcategory->status == 1 ? 'checked' : '') : ''}} id="status" value="1">
    </label>


    <div class="">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{$subcategory ?  $subcategory->upload_id : 0 }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($subcategory ? $subcategory->upload_id : 0) }}" alt="">
        </label>
    </div>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
