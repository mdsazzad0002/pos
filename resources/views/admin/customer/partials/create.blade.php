<form action="{{ route('admin.customer.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter customer name">
    <input type="text" name="email" class="form-control mb-2" placeholder="Enter customer email">
    <input type="text" name="phone" class="form-control mb-2" placeholder="Enter customer phone">
    <input type="text" name="location" class="form-control mb-2" placeholder="Enter customer address">

    {{--  <input type="file" name="image" class="form-control mb-2" >  --}}

    <label  type="button" onclick="upload_select(this)">

        <input type="text" name="image" id="image" class="form-control mb-2" hidden >
        <img style="max-width: 100px" src="{{ dynamic_asset(0) }}" alt="">
    </label>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

