<form action="{{ route('admin.LeadAccount.update', $LeadAccount->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="form-group mb-2">
        <label class="form-label" for="name">Organization Name</label>
        <input value="{{ $LeadAccount->name ?? '' }}" type="text" name="name" class="form-control mb-2" id="name" placeholder="Enter name">
    </div>
    <div class="form-group mb-2">
        <label class="form-label" for="website">Website</label>
        <input value="{{ $LeadAccount->website ?? '' }}" type="text" name="website" class="form-control mb-2" id="website" placeholder="Enter website">
    </div>
    <div class="form-group mb-2">
        <label class="form-label" for="phone">Phone</label>
        <input value="{{ $LeadAccount->phone ?? '' }}" type="text" name="phone" class="form-control mb-2" id="phone" placeholder="Enter phone">
    </div>
    <div class="form-group mb-2">
        <label class="form-label" for="email">Email</label>
        <input value="{{ $LeadAccount->email ?? '' }}" type="text" name="email" class="form-control mb-2" id="email" placeholder="Enter email">
    </div>

    <div class="form-group mb-2">
        <label class="form-label" for="address">Address</label>
        <input value="{{ $LeadAccount->address ?? '' }}" type="text" name="address" class="form-control mb-2" id="address" placeholder="Enter address">
    </div>




        <div class="d-flex justify-content-end">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>

    </form>

