<form action="{{ route('admin.discount.update', $discount->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $discount->name }}" placeholder="Enter your name">
    <select name="type" id="">
        <option @if($discount->type == 0) selected @endif value="0">Parsent</option>
        <option @if($discount->type == 1) selected @endif value="1">Fixed</option>
    </select>
    <input type="number" value="{{ $discount->amount }}" step="0.1" name="amount" class="form-control mb-2" placeholder="Enter discount amount">

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
