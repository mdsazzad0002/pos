<form action="{{ route('admin.LeadDealStage.update', $LeadDealStage->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="LeadDealStage">LeadDealStage</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $LeadDealStage->name }}" id="LeadDealStage" placeholder="Enter LeadDealStage">
    </div>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
