<form action="{{ route('admin.courier.action', $order) }}" method="POST">
    @csrf
    <div class="row">
        <div class="col-lg-6">
            <label for="order_id">Order Id</label> <br/>
            <input class="form-control" type="text" disabled name="order_id" value="{{ $order->order_id }}">
            <input class="form-control" type="text" hidden name="order_id" value="{{ $order->order_id }}">
        </div>
        <div class="col-lg-6">
            <label for="order_id">Order Create</label> <br/>
            <input class="form-control" type="text" disabled name="create" value="true">
            <input class="form-control" type="text" hidden name="create" value="true">
            <input class="form-control" type="text" value="{{ $request->courier_id }}" hidden name="courier_id" value="true">
        </div>
        <div class="col-lg-6">
            <label for="order_id">Payable Amount</label><br/>
            <input class="form-control" type="number" step="0.01"   name="amount" value="{{ $order->current_cash_collection() }}">
        </div>
        <div class="col-lg-6">
            <label for="order_id">Receiver Name</label><br/>
            <input class="form-control" type="text"   name="name" value="{{ $order->billing_info->name ?? $order->address_info->name ?? $order->customer->name ?? '' }}">
        </div>
        <div class="col-lg-6">
            <label for="order_id">Receiver Phone</label><br/>
            <input class="form-control" type="text"   name="phone" value="{{ $order->billing_info->phone ?? $order->address_info->phone ?? $order->customer->phone ?? '' }}">
        </div>
        <div class="col-lg-6">
            <label for="order_id">Receiver address</label><br/>
            <input class="form-control" type="text"  name="address"  value="{{ $order->billing_info->address ?? $order->address_info->address ?? $order->customer->address ?? '' }}"/>
        </div>
        <div class="col-lg-6">
            <label for="order_id">Receiver Note</label><br/>
            <input class="form-control" type="text"   name="note" value="{{ $order->note ?? $order->note ?? $order->note ?? '' }}">
        </div>

        <div class="col-12 mt-3">
            <button class="btn btn-primary btn-block" style="submit">Process To Submit</button>
        </div>
    </div>

</form>

