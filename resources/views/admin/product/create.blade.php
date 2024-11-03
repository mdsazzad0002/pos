{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('product_create', 10))

{{--  Content Extends  --}}
@section('content')
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.product.store') }}" class="form_ajax_submit" method="post"
                enctype="multipart/form-data">
                @csrf
<div class="row">
    <div class="col-md-6">
        <div class="row">
            <div class="col-lg-12">
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
                    <select type="text" name="unit" data-url="{{ route('admin.unit.select') }}"
                        data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username"
                        aria-label="Username" aria-describedby="basic-addon1">
                        <option value="">unit</option>
                    </select>
                    <button type="button" class="btn btn-primary input-group-append"
                        data-dialog="modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)"
                        data-title="Add New  unit" data-href="{{ route('admin.unit.create') }}">+</button>
                </div>
            </div>


            <div class="col-lg-6">
                <label for="">Brand</label>
                <div class="input-group mb-3">
                    <select type="text" data-url="{{ route('admin.brand.select') }}" data-ajax="true"
                        name="brand" class="form-control input-group-prepend select2" placeholder="Brand"
                        aria-label="Username" aria-describedby="basic-addon1">
                        <option value="">Brands</option>
                    </select>

                    <button type="button" class="btn btn-primary input-group-append"
                        data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)"
                        data-title="Add New  brand" data-href="{{ route('admin.brand.create') }}">+</button>
                </div>
            </div>

            <div class="col-lg-6">
                <label for="">Category</label>
                <div class="input-group mb-3">
                    <select type="text" name="category" data-url="{{ route('admin.category.select') }}"
                        data-ajax="true" class="form-control input-group-prepend select2 category_select" placeholder="Username"
                        aria-label="Username" aria-describedby="basic-addon1" >
                        <option value="">category</option>
                    </select>
                    <button type="button" class="btn btn-primary input-group-append"
                        data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)"
                        data-title="Add New  Category" data-href="{{ route('admin.category.create') }}">+</button>
                </div>
            </div>


            <div class="col-lg-6">
                <label for="">Sub Category</label>
                <div class="input-group mb-3">
                    <select type="text" name="subcategory" data-url="{{ route('admin.subcategory.select') }}"
                        data-ajax="true" class="form-control input-group-prepend select2 select_subcategory" placeholder="Username"
                        aria-label="Username" aria-describedby="basic-addon1">
                        <option value="">subcategory</option>
                    </select>
                    <button type="button" class="btn btn-primary input-group-append"
                        data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)"
                        data-title="Add New  subcategory"
                        data-href="{{ route('admin.subcategory.create') }}">+</button>
                </div>
            </div>



        </div>
    </div>
</div>
                <div class="row">



                    <div class="col-lg-6">
                        <label for="">Vat</label>
                        <div class="input-group mb-3">
                            <select type="text" name="vat" data-url="{{ route('admin.vat.select') }}"
                                data-ajax="true" class="form-control input-group-prepend select2" placeholder="Username"
                                aria-label="Username" aria-describedby="basic-addon1">
                                <option value="">Vat</option>
                            </select>
                            <button type="button" class="btn btn-primary input-group-append"
                                data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)"
                                data-title="Add New  Vat" data-href="{{ route('admin.vat.create') }}">+</button>
                        </div>

                    </div>





                    <div class="col-lg-6">
                        <label for="">Old Price</label>
                        <input type="number" step="0.1" name="old_price" class="form-control mb-2"
                            placeholder="Old Price">
                    </div>

                    <div class="col-lg-6">
                        <label for="">Selling Price</label>
                        <input type="number" step="0.1" name="selling_price" class="form-control mb-2"
                            placeholder="Selling Price">
                    </div>

                    <div class="col-lg-6">
                        <label for="landing_page_bg">Landing Page BG</label>
                        <input type="color" name="landing_page_bg" class="form-control mb-2"
                            placeholder="Landing Page BG">
                    </div>

                    <div class="col-lg-6">
                        <label for="landing_page_color">Landing Page Color</label>
                        <input type="color" name="landing_page_color" class="form-control mb-2"
                            placeholder="Landing Page Color">
                    </div>

                    <div class="col-lg-6">
                        <label for="landing_page_color">Landing Page Variant</label>
                        ------ Under Constraction ----
                    </div>

                    <div class="col-lg-6">
                        <label for="">Discount</label>
                        <div class="input-group mb-3">
                            <select type="text" name="discount_id" multiple
                                data-url="{{ route('admin.discount.select') }}" data-ajax="true"
                                class="form-control input-group-prepend select2" placeholder="Username"
                                aria-label="Username" aria-describedby="basic-addon1">
                                <option value="">discount</option>
                            </select>
                            <button type="button" class="btn btn-primary input-group-append"
                                data-dialog=" modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)"
                                data-title="Add New  discount"
                                data-href="{{ route('admin.discount.create') }}">+</button>
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
                        <label for="">Garage</label>
                        <input type="text" name="garage" class="form-control mb-2">
                    </div>
                    <div class="col-lg-6">
                        <label for="">Route</label>
                        <input type="text" name="route" class="form-control mb-2">
                    </div>
                    <div class="col-lg-6">
                        <label for="feature"> Feature <br />
                            <input type="checkbox" checked class="" hidden name="feature" value="0">
                            <input type="checkbox" class="toggle" placeholder="Feature" name="feature" id="feature"
                                value="1">
                        </label>
                    </div>
                    <div class="col-lg-6">
                        <label for="service"> Service <br />
                            <input type="checkbox" checked class="" hidden name="service" value="0">
                            <input type="checkbox" class="service" placeholder="service" name="feature" id="service"
                                value="1">
                        </label>
                    </div>

                    <div class="col-lg-6">
                        <label for="">For Selling</label>
                        <select name="for_selling" id="" class="form-control mb-2">
                            <option value="1">YES</option>
                            <option value="0">NO</option>
                        </select>
                    </div>


                    <div class="col-lg-6">
                        <label type="button" onclick="upload_select(this)"> Image <br>
                            <input type="text" name="image" id="image" class="form-control mb-2" hidden>
                            <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt="">
                        </label>
                    </div>

                    <div class="col-lg-12">
                        <label for="">Description</label>
                        <textarea type="text" name="description" class="form-control mb-2 summernote" placeholder="Description"></textarea>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <label for="Youtube_Video">Youtube Video</label>
                        <textarea name="youtube_video" id="Youtube_Video" class="form-control" placeholder="Iframe Full TAG"></textarea>
                    </div>
                </div>





            {{--  Its for Variant Part  --}}
                <div class="variant_option my-4">
                    <div class="card">
                        <div class="card-header">
                            {{ __('product.variant_option') }}
                            <div class="float-right">

                                    <input type="checkbox" checked class="" hidden name="variant_on" value="0">
                                    <input type="checkbox" class="toggle" placeholder="variant_on" name="variant_on" id="variant_on"
                                        value="1">

                            </div>
                        </div>
                        <div class="card-body variant_body" style="display: none">
                            <div class="variant_input">
                                <div class="row mb-2">
                                    <div class="col-12">
                                        <span onclick="demo_varinat_data()" class="text-primary">NB: Every items separate by `,` Comma example <span  class="cursor-pointer text-danger">`red,yellow,blue`</span> </span>
                                    </div>
                                    <div class="col-4">
                                        <label for="variant_name">Variant Name</label>
                                        <input type="text" class="form-control" id="variant_name"
                                        placeholder="Variant Name">
                                    </div>
                                    <div class="col-4">
                                        <label for="variant_option">Variant Option</label>
                                        <input type="text" class="form-control" id="variant_option"
                                            placeholder="Variant Option">
                                    </div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-primary mt-4" onclick="generate_variant_filed()">
                                            Generate Filed
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="variant_output">

                            </div>
                        </div>
                    </div>

                </div>
            {{--  End Variant Part  --}}




                <div class="d-flex justify-content-end">
                    <button class="btn btn-warning" type="submit">Save</button>
                </div>

            </form>
        </div>
    </div>






@endsection

@push('js')
    <script>
        document.querySelector('#variant_on').addEventListener('change', function() {
            const items = this; // 'this' refers to the element that triggered the event
            if (items.checked) {
                document.querySelector('.variant_body').style.display = 'block';
            } else {
                document.querySelector('.variant_body').style.display = 'none';
            }
        });


        $('.category_select').select2().on('change', function() {
            const selectedValue = $(this).val(); // Get the selected value
            console.log(selectedValue); // Log the selected value

            // Get the current data-url
            var data_url = $('.select_subcategory').data('url');

            // Create a URL object to manage parameters easily
            const url = new URL(data_url, window.location.origin); // Ensure base URL is included

            // Check if cat_id already exists
            if (url.searchParams.has('cat_id')) {
                // If it exists, update the existing cat_id
                url.searchParams.set('cat_id', selectedValue);
            } else {
                // If it doesn't exist, add it
                url.searchParams.append('cat_id', selectedValue);
            }

            // Update the data-url attribute
            $('.select_subcategory').data('url', url.toString());

            select2_caller();
        });


        function demo_varinat_data(){
            document.querySelector('#variant_name').value='red,yellow,blue'
            document.querySelector('#variant_option').value='S,L,T'
        }
        function render_html(items){
            rendered = '';
            items.forEach(function(item){
                rendered +=  `
                    <div class="row mb-2">
                        <div class="col-md-4">

                            <input type="text" name="variant_key[]" value="${item}" class="form-control"
                                placeholder="veriant key" id="">
                        </div>
                        <div class="col-md-4">
                            <input type="text" name="old_price_v[]" class="form-control"
                                placeholder="Old Price" id="">
                        </div>
                        <div class="col-md-4">
                            <input type="text" name="selling_price_v[]" class="form-control"
                                placeholder="Current Price" id="">
                        </div>
                    </div>`;
            });

            return rendered;
        }
        function string_to_array(string, separator = ' '){
            if(string.length == 0){
                return [];
            }else{
                return string.split(separator);

            }
        }
        function generate_variant_filed(){
            var variant_key = document.querySelector('#variant_name').value;
                 variant_key = string_to_array(variant_key, ',');
            var variant_option = document.querySelector('#variant_option').value;
            variant_option = string_to_array(variant_option, ',');

            var items_combanitaion = [];
            if(variant_key.length > 0 && variant_option.length > 0){
                variant_key.forEach(element => {
                    variant_option.forEach(option => {
                        var items = element +':'+option;
                        items_combanitaion.push(items)
                    })
                });
            }else if(variant_key.length > 0){
                items_combanitaion.concat(variant_key)
            }else if( variant_option.length){
                items_combanitaion.concat(variant_option)
            }else{
                alert('Please add Veriant key')
            }

            if(items_combanitaion.length > 0 ){
                document.querySelector('.variant_output').innerHTML = render_html(items_combanitaion);

            }



        }
    </script>
@endpush
