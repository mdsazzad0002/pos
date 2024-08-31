<form action="{{ route('admin.product.update', $product->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')


        <div class="row">
            <div class="col-lg-6">
                <label for="">Name</label>
                <input type="text" name="name" value="{{ $product->name }}" class="form-control mb-2" placeholder="Enter product name">
            </div>
            <div class="col-lg-6">
                <label for="">Sku</label>
                <input type="text" name="sku" value="{{ $product->sku }}" class="form-control mb-2" placeholder="Enter product sku">
            </div>
            <div class="col-lg-6">
                <label for="">Unit</label>
                <div class="input-group mb-3">
                    <select type="text" name="unit" data-url="{{ route('admin.unit.select') }}" data-model="true" data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                        <option value="{{ $product->unit }}">{{ $product->unit_info->name ?? '' }}</option>
                    </select>
                    <button class="btn btn-primary input-group-append" data-dialog="modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  unit" data-href="{{ route('admin.unit.create') }}">+ Add New unit</button>


                </div>
            </div>

            <div class="col-lg-6">
                <label for="">Brand</label>
                <div class="input-group mb-3">
                    <select type="text" data-url="{{ route('admin.brand.select') }}" data-model="true" data-ajax="true" name="brand" class="form-control input-group-prepend select2" placeholder="Brand" aria-label="Username" aria-describedby="basic-addon1">
                         <option value="{{ $product->brand }}">{{ $product->brand_info->name ?? '' }}</option>
                    </select>

                    <button class="btn btn-primary input-group-append" data-dialog="modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  brand" data-href="{{ route('admin.brand.create') }}">+ Add New brand</button>
                </div>

            </div>
            <div class="col-lg-6">
                <label for="">Category</label>
                <div class="input-group mb-3">
                    <select type="text" name="category" data-url="{{ route('admin.category.select') }}" data-model="true" data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                        <option value="{{ $product->category }}">{{ $product->categpry_info->name ?? '' }}</option>
                    </select>
                    <button class="btn btn-primary input-group-append" onclick="button_ajax(this)" data-title="Add New  Category" data-dialog="  modal-dialog-scrollable modal-dialog-centered" data-href="{{ route('admin.category.create') }}">+ Add New Category</button>
                </div>

            </div>

            <div class="col-lg-6">

                <label for="">Selling Price</label>
                <input type="number" value="{{ $product->selling_price }}" name="selling_price" class="form-control mb-2">
            </div>

            <div class="col-lg-6">
                <label for="">Alert Quantaty</label>
                <input type="number" value="{{ $product->alert_quantity }}" name="alert_quantity" value="0" class="form-control mb-2">
            </div>

            <div class="col-lg-6">
                <label for="">Weight</label>
                <input type="text" value="{{ $product->weight }}" name="weight" class="form-control mb-2">
            </div>

            <div class="col-lg-6">
                <label for="">For Selling</label>
                <select name="for_selling" id=""  class="form-control mb-2">
                    <option @if($product->for_selling == 1) selected @endif value="1">YES</option>
                    <option @if($product->for_selling == 0) selected @endif value="0">NO</option>
                </select>
            </div>


            <div class="col-lg-6">
                <div class="row">
                    <div class="col-8">
                        <label for="">Image</label>
                        <input type="file" name="image" class="form-control mb-2">
                    </div>
                    <div class="col-4">
                        <img style="width: 100px;" src="{{ dynamic_asset($product->upload_id) }}" alt="">
                    </div>
                </div>

            </div>

            <div class="col-lg-12">
                <label for="">Description</label>
                <textarea type="text" name="description" class="form-control mb-2 summernote" placeholder="Description">{{ $product->description }}</textarea>
            </div>
        </div>


            <div class="d-flex justify-content-end">
                <button class="btn btn-warning" type="submit">Save</button>
            </div>

    </form>


    <style>
        .input-group{
            flex-wrap: nowrap;
        }
        .input-group button{
            white-space: nowrap;
        }
        .selection, span.select2-selection.select2-selection--single{
            height: 100% !important;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }
    </style>


