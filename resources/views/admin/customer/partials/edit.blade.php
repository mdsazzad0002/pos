<form action="{{ route('admin.customer.update', $customer->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $customer->name }}" placeholder="Enter customer name">
    <input type="text" name="email" class="form-control mb-2" value="{{ $customer->email }}" placeholder="Enter customer email">
    <input type="text" name="phone" class="form-control mb-2" value="{{ $customer->phone }}" placeholder="Enter customer phone">
    <input type="text" name="location" class="form-control mb-2" value="{{ $customer->location }}" placeholder="Enter customer location">



    <div class="input-group">
        <select  name="area" required class="form-control select2 input-group-prepend" data-ajax="true" data-url="{{ route('admin.area.select') }}" id="">
            <option value="{{ $customer->area }}"> {{$customer->areaItem->name ?? ''}} </option>
        </select>
        <a target="_blank" href="{{ route('admin.area.index') }}" class="btn btn-priamry">+</a>
    </div>

    <div class="text-danger">
        If You WholeSeller
    </div>

    <input type="text" name="shop_name"  value="{{ $customer->shop_name }}" class="form-control mb-2" placeholder="Enter Shop Name">
    <input type="text" name="shop_phone"  value="{{ $customer->shop_phone }}" class="form-control mb-2" placeholder="Enter Shop Phone">
    <input type="text" name="shop_address"  value="{{ $customer->shop_address }}" class="form-control mb-2" placeholder="Enter Shop Adddress">
    <select name="type" id="" class="form-control select2">
        <option @if($customer->type == 0) checked @endif value="0">Retail</option>
        <option @if($customer->type == 1) checked @endif value="1">Wholesale</option>
    </select>


    <label  type="button" onclick="upload_select(this)">

        <input type="text" name="image" id="image" value="{{ $customer->upload_id }}" class="form-control mb-2" hidden >
        <img style="max-width: 100px" src="{{ dynamic_asset($customer->upload_id) }}" alt="">
    </label>


    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
