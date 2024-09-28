<form action="{{ route('admin.branch.store') }}" method="post" enctype="multipart/form-data">
    @csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter branch name">
    <input type="text" name="location" class="form-control mb-2" placeholder="Enter location name">


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

