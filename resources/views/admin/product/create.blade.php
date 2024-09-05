{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('product_create', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-body">
        <form action="{{ route('admin.product.store') }}" class="form_ajax_submit" method="post" enctype="multipart/form-data">
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
                <select type="text" name="unit" data-url="{{ route('admin.unit.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                    <option value="">unit</option>
                </select>
                <button type="button" class="btn btn-primary input-group-append" data-dialog="modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  unit" data-href="{{ route('admin.unit.create') }}">+</button>


            </div>
        </div>

        <div class="col-lg-6">
            <label for="">Brand</label>
            <div class="input-group mb-3">
                <select type="text" data-url="{{ route('admin.brand.select') }}" data-ajax="true" name="brand" class="form-control input-group-prepend select2" placeholder="Brand" aria-label="Username" aria-describedby="basic-addon1">
                     <option value="">Brands</option>
                </select>

                <button type="button" class="btn btn-primary input-group-append" data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  brand" data-href="{{ route('admin.brand.create') }}">+</button>
            </div>

        </div>
        <div class="col-lg-6">
            <label for="">Category</label>
            <div class="input-group mb-3">
                <select type="text" name="category" data-url="{{ route('admin.category.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                    <option value="">category</option>
                </select>
                <button type="button" class="btn btn-primary input-group-append" data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  Category" data-href="{{ route('admin.category.create') }}">+</button>
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
            <label  type="button" onclick="upload_select(this)"> Image <br>
                <input type="text" name="image" id="image" class="form-control mb-2" hidden >
                <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt="">
            </label>
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
    </div>
</div>






@endsection

@push('js')
<script>


</script>
@endpush
