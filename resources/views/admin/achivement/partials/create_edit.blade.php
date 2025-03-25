
<form action="{{ $achivement ? route('admin.achivement.update', $achivement->id) : route('admin.achivement.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($achivement)
        
    @method('put')
    @endif

    <div class="mb-2">
        <label for="achivement_name"> Counter </label>
        <input type="number" name="counter" class="form-control mb-2" value="{{$achivement ? $achivement->counter : '' }}" placeholder="Enter your Counter">
    </div>
    <div class="mb-2">
        <label for="achivement_name"> Title </label>
        <input type="text" name="title" class="form-control mb-2" value="{{$achivement ? $achivement->title : '' }}" placeholder="Enter your title">
    </div>
    <div class="mb-2">
        <label for="achivement_name">Sub Title </label>
        <input type="text" name="sub_title" class="form-control mb-2" value="{{$achivement ? $achivement->sub_title : '' }}" placeholder="Enter your sub title">
    </div>
    <div class="mb-2">
        <label for="achivement_name"> Icon <a href="https://fontawesome.com/v5.15/icons" target="_blank">Reference</a> </label>
        <input type="text" name="icon" class="form-control mb-2" value="{{$achivement ? $achivement->icon : '' }}" placeholder="Enter your icon class">
    </div>


    <label for="status">  Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$achivement ? ( $achivement->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
    </label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
