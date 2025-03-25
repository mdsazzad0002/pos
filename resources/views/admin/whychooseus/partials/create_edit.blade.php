
<form action="{{ $whychooseus ? route('admin.whychooseus.update', $whychooseus->id) : route('admin.whychooseus.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($whychooseus)
        
    @method('put')
    @endif

    <div class="mb-2">
        <label for="whychooseus_name"> Title </label>
        <input type="text" name="title" class="form-control mb-2" value="{{$whychooseus ? $whychooseus->title : '' }}" placeholder="Enter your title">
    </div>
    <div class="mb-2">
        <label for="whychooseus_name"> Icon <a href="https://fontawesome.com/v5.15/icons" target="_blank">Reference</a> </label>
        <input type="text" name="icon" class="form-control mb-2" value="{{$whychooseus ? $whychooseus->icon : '' }}" placeholder="Enter your icon class">
    </div>


    <label for="status">  Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$whychooseus ? ( $whychooseus->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
