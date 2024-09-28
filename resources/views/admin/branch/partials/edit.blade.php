<form action="{{ route('admin.branch.update', $branch->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

        <label for="name"> Branch Name <br/>
            <input type="text" name="name" class="form-control mb-2" value="{{ $branch->name }}" placeholder="Enter your name" id="name">
        </label>
        <label for="location"> Branch Location <br/>
            <input type="text" name="location" class="form-control mb-2" value="{{ $branch->location }}" placeholder="Enter your Location" id="location">
        </label>

        <label for="status"> Branch Status <br/>
            <input type="checkbox" checked class="" hidden  name="status"   value="0">
            <input type="checkbox" class="toggle"  placeholder="Branch Status" name="status" {{ $branch->status == 1 ? 'checked' : '' }} id="status" value="1">
        </label>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
