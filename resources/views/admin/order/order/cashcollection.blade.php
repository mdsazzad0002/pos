<form action="{{ route('admin.order.cashcollection_show', $order->id) }}" method="post" enctype="multipart/form-data">
    @csrf

    <div class="form-group mb-2">
        <label class="form-label" for="amount">Amount ({{ settings('currency_symbol', 9) }})</label>
        <input type="number" step="0.01" name="amount" value="{{ $order->current_cash_collection() ?? '' }}"  max="{{ $order->current_cash_collection() }}" class="form-control mb-2" id="amount" placeholder="Enter amount">
    </div>
    {{-- <div class="form-group mb-2">
        <label class="form-label" for="date">Date</label>
        <input type="date" name="date" class="form-control mb-2" id="date" placeholder="Enter date">
    </div> --}}
    <div class="form-group mb-2"></div>
        <label class="form-label" for="payment_method">Payment Method</label>
        <input type="text" name="payment_method" class="form-control mb-2" id="payment_method" placeholder="Enter note">
    </div>
    <div class="form-group mb-2"></div>
        <label class="form-label" for="note">Note</label>
        <input type="text" name="note" class="form-control mb-2" id="note" placeholder="Enter note">
    </div>
    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>
</form>