<form action="{{ route('admin.customer.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter customer name">
    <input type="text" name="email" class="form-control mb-2" placeholder="Enter customer email">
    <input type="text" name="phone" class="form-control mb-2" placeholder="Enter customer phone">
    <input type="text" name="location" class="form-control mb-2" placeholder="Enter customer address">
    <div class="input-group">
        <select  name="area" required class="form-control select2 input-group-prepend" data-ajax="true" data-url="{{ route('admin.area.select') }}" id="">
            <option> Select Area </option>
        </select>
        <a target="_blank" href="{{ route('admin.area.index') }}" class="btn btn-priamry">+</a>
    </div>

    <div class="text-danger">
        If You WholeSeller
    </div>

    <input type="text" name="shop_name" class="form-control mb-2" placeholder="Enter Shop Name">
    <input type="text" name="shop_phone" class="form-control mb-2" placeholder="Enter Shop Phone">
    <input type="text" name="shop_address" class="form-control mb-2" placeholder="Enter Shop Adddress">
    <select name="type" id="" class="form-control select2">
        <option value="0">Retail</option>
        <option value="1">Wholesale</option>
    </select>



    <label  type="button" onclick="upload_select(this)">

        <input type="text" name="image" id="image" class="form-control mb-2" hidden >
        <img style="max-width: 100px" src="{{ dynamic_asset(0) }}" alt="">
    </label>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

