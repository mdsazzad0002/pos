<form action="{{ route('admin.product.store') }}" method="post" enctype="multipart/form-data">
    @csrf

    <div class="row">
        <div class="col-lg-6">
            <label for="">Name</label>
            <input type="text" name="name" class="form-control mb-2" placeholder="Enter product name">
        </div>
        <div class="col-lg-6">
            <label for="">Sku</label>
            <input type="text" name="sku" class="form-control mb-2" placeholder="Enter product sku">
        </div>
        <div class="col-lg-6">
            <label for="">Unit</label>
            <div class="input-group mb-3">
                <select type="text" name="unit" data-url="{{ route('admin.unit.select') }}" data-model="true" data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                    <option value="">Category</option>
                </select>
                <button class="btn btn-primary input-group-append" data-dialog="modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  unit" data-href="{{ route('admin.unit.create') }}">+ Add New unit</button>


            </div>
        </div>

        <div class="col-lg-6">
            <label for="">Brand</label>
            <div class="input-group mb-3">
                <select type="text" data-url="{{ route('admin.brand.select') }}" data-model="true" data-ajax="true" name="brand" class="form-control input-group-prepend select2" placeholder="Brand" aria-label="Username" aria-describedby="basic-addon1">
                     <option value="">Brands</option>
                </select>

                <button class="btn btn-primary input-group-append" data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  brand" data-href="{{ route('admin.brand.create') }}">+ Add New brand</button>
            </div>

        </div>
        <div class="col-lg-6">
            <label for="">Category</label>
            <div class="input-group mb-3">
                <select type="text" name="category" data-url="{{ route('admin.category.select') }}" data-model="true" data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                    <option value="">category</option>
                </select>
                <button class="btn btn-primary input-group-append" data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  Category" data-href="{{ route('admin.category.create') }}">+ Add New Category</button>
            </div>

        </div>

        <div class="col-lg-6">

            <label for="">Selling Price</label>
            <input type="number" name="selling_price" class="form-control mb-2">
        </div>

        <div class="col-lg-6">
            <label for="">Alert Quantaty</label>
            <input type="number" name="alert_quantity" value="0" class="form-control mb-2">
        </div>

        <div class="col-lg-6">
            <label for="">Weight</label>
            <input type="text" name="weight" class="form-control mb-2">
        </div>

        <div class="col-lg-6">
            <label for="">For Selling</label>
            <select name="for_selling" id=""  class="form-control mb-2">
                <option value="1">YES</option>
                <option value="0">NO</option>
            </select>
        </div>


        <div class="col-lg-6">
            <label for="">Image</label>
            <input type="file" name="image" class="form-control mb-2">
        </div>

        <div class="col-lg-12">
            <label for="">Description</label>
            <textarea type="text" name="description" class="form-control mb-2 summernote" placeholder="Description"></textarea>
        </div>
    </div>


        <div class="d-flex justify-content-end">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>

</form>


