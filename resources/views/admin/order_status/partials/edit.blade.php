

<form
@if ($orderStatus)
    action="{{ route('admin.order_status.update', $orderStatus->id) }}"
@else
    action="{{ route('admin.order_status.store') }}"
@endif
  method="post" enctype="multipart/form-data">
    @csrf
    @if ($orderStatus)
        @method('put')
    @endif

    <div class="form-group mb-2">
        <label for="name">Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{$orderStatus ?  $orderStatus->name : '' }}" id="name" placeholder="Enter name">
    </div>

    <div class="form-group mb-2">
        <label for="status">Quantity Manage Status <br/>
            <input type="checkbox" checked class="" hidden  name="qty_status"   value="0">
            <input type="checkbox" class="toggle safe_items_toggler"  placeholder=" Status" name="qty_status" {{ $orderStatus ? ( $orderStatus->qty_status == 1 ? 'checked' : '') : '' }} id="status" value="1">
        </label>
    </div>

    @php
        $array =  $orderStatus ? (json_decode($orderStatus->under_items) ?? []) : [];
    @endphp
    <div>
        <label for="under_items">Under Items</label> <br/>
        <select name="under_items[]" id="under_items" multiple class="form-control mb-2 select2" placeholder="Under Items">
        @foreach ($order_status_all as $order_status )
            <option value="{{ $order_status->id }}" {{ in_array($order_status->id, $array) ? 'selected' : '' }}>{{ $order_status->name }}</option>
        @endforeach
        </select>
    </div>

    <div class="safe_items">
        <div class="form-group mb-2">
            <label for="qty_add_remove">Type</label>
            <select name="qty_add_remove" id="qty_add_remove" name="qty_add_remove" class="form-control mb-2">
                <option value="0" {{ $orderStatus && $orderStatus->qty_add_remove == '0' ? 'selected' : '' }}>None</option>
                <option value="1" {{ $orderStatus && $orderStatus->qty_add_remove == '1' ? 'selected' : '' }}>Adding Stock</option>
                <option value="2" {{ $orderStatus && $orderStatus->qty_add_remove == '2' ? 'selected' : '' }}>Removing Stock</option>
            </select>
        </div>

      
    </div>

    <br/>
    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
<style>
    .safe_items {
        display: none;
    }
    :has(.safe_items_toggler:checked) .safe_items {
        display: block;
    }

</style>