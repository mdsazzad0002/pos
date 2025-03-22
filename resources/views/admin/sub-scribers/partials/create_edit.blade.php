<form 
@if($subScriber)
action="{{ route('admin.sub-scribers.update', $subScriber->id) }}"
@else
action="{{ route('admin.sub-scribers.store') }}" 
@endif
method="post" enctype="multipart/form-data">
    @csrf

    @if ($subScriber)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="service_point_name">  Name </label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $subScriber ? $subScriber->name : ''}}" placeholder="Enter name ">
    </div>

    <div class="mb-2">
        <label for="service_point_email">  Email </label>
        <input type="text" name="email" class="form-control mb-2" value="{{ $subScriber ? $subScriber->email : ''}}" placeholder="Enter Email address">
    </div>


    <label for="status"> Verify <br/>
        <input type="checkbox" checked class="" hidden  name="verified"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" verified" name="verified" {{ $subScriber ? ($subScriber->verified == 1 ? 'checked' : '') : '' }} id="verified" value="1">
    </label>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
