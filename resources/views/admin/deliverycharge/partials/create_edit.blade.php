<form action="{{ $deliverycharge ? route('admin.deliverycharge.update', $deliverycharge->id) : route('admin.deliverycharge.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($deliverycharge)
        @method('put')
    @endif

    <div class="form-group mb-2">
        <label class="form-label" for="name">Name</label>
        <input type="text" name="name" class="form-control mb-2" id="name"
            value="{{ $deliverycharge ? $deliverycharge->name : '' }}" placeholder="Enter name">
    </div>
    <div>
        <label class="form-label" for="amount">Amount ({{ settings('currency_symbol', 9) }})</label>
        <input type="text" name="amount" class="form-control mb-2" id="amount"
            value="{{ $deliverycharge ? $deliverycharge->amount : '' }}" placeholder="Enter amount">
    </div>
    <div class="form-group mb-2">
        <label for="status">  Status <br/>
            <input type="checkbox" checked class="" hidden  name="status"   value="0">
            <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$deliverycharge ? ( $deliverycharge->status == 1 ? 'checked' : '' ) : ''   }} id="status" value="1">
        </label>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
