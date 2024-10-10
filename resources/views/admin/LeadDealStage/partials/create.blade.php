<form action="{{ route('admin.LeadDealStage.store') }}" method="post" enctype="multipart/form-data">
@csrf

<div class="form-group mb-2">
    <label class="form-label" for="name">Name</label>
    <input type="text" name="name" class="form-control mb-2" id="name" placeholder="LeadDealStage name">
</div>

    

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

