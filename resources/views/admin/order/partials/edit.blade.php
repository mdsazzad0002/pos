<form action="{{ route('admin.purchase.update', $purchase->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <select type="text" name="status" class="form-control mb-2" value="{{ $purchase->name }}" placeholder="Enter your name">
        <option @if($purchase->status == 1) selected @endif value="1">Approved</option>
        <option @if($purchase->status == 2) selected @endif value="2">Cancel</option>
    </select>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
