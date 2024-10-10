<form action="{{ route('admin.LeadSource.update', $LeadSource->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="LeadSource">LeadSource</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $LeadSource->name }}" id="LeadSource" placeholder="Enter LeadSource">
    </div>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
