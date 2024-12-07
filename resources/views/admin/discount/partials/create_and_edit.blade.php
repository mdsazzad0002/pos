@php
    if(!isset($discount)){
        $discount =null;
    }
@endphp

<form
    @if ($discount)
        action="{{ route('admin.discount.update', $discount->id) }}"
    @else
        action="{{ route('admin.discount.store')}}"
    @endif
    method="post" enctype="multipart/form-data">
        @csrf

    @if($discount)
        @method('put')
    @endif

    <div class="input-form mb-3">
        <label for="name">Discount Name</label>
        <input type="text" name="name" id="name" class="form-control mb-2" value="{{ $discount->name }}" placeholder="Enter your name">
    </div>
    <div class="input-form mb-3">
        <label for="discount_type">Discount Type</label>
        <select class="form-control" name="type" id="discount_type">
            <option @if($discount->type == 0) selected @endif value="0">Percent</option>
            <option @if($discount->type == 1) selected @endif value="1">Fixed</option>
        </select>
    </div>
    <div class="input-form mb-3">
        <label for="discount_amount">Discount Amount</label>
        <input type="number" id="discount_amount" value="{{ $discount->amount }}" step="0.1" name="amount" class="form-control mb-2" placeholder="Enter discount amount">
    </div>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
