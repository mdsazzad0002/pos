<form action="{{ route('admin.LeadContact.store') }}" method="post" enctype="multipart/form-data">
@csrf

<div class="form-group mb-2">
    <label class="form-label" for="name">Name</label>
    <input type="text" name="name" class="form-control mb-2" id="name" placeholder="Enter name">
</div>
<div class="form-group mb-2">
    <label class="form-label" for="phone">Phone</label>
    <input type="text" name="phone" class="form-control mb-2" id="phone" placeholder="Enter phone">
</div>
<div class="form-group mb-2">
    <label class="form-label" for="phone">Email</label>
    <input type="text" name="email" class="form-control mb-2" id="email" placeholder="Enter email">
</div>

<div class="form-group mb-2">
    <label class="form-label" for="address">Address</label>
    <input type="text" name="address" class="form-control mb-2" id="address" placeholder="Enter address">
</div>



<div class="form-group mb-2">
    <label for="account">Organization Name</label>
    <div class="input-group mb-3">
        <select type="text" id="" data-url="{{ route('admin.LeadAccount.select') }}" data-ajax="true"  data-model="true" name="account" class="form-control input-group-prepend select2" placeholder="Organization" id="account" aria-label="Username" aria-describedby="basic-addon1">
             <option value="">Organization name</option>
        </select>

        <a type="button" class="btn btn-primary input-group-append" target="_blank" href="{{ route('admin.LeadAccount.index') }}">+</a>
    </div>

</div>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
