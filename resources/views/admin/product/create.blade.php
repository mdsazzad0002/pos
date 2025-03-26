{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@if($product)
    @section('title', 'Product Update')
@else
    @section('title', 'Product Create')
@endif
{{-- Content Extends --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.product')
    </div>
</x-summary>


<div class="card">
    <div class="card-body">
        <form action="{{ $product ?  route('admin.product.update', $product->id) : route('admin.product.store')  }}" class="form_ajax_submit" method="post"
            enctype="multipart/form-data">
            @csrf

            @if($product)
                @method('put')
            @endif

            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                           Product Information
                        </div>
                        <div class="card-body">


                            <div class="row">
                                <div class="col-lg-12">
                                    <label for="">Name</label>
                                    <input type="text" name="name" class="form-control mb-2"
                                        placeholder="Enter product name" value="{{ $product->name ?? '' }}" required oninput="generateSlugMake(this, '#generateSlug')">
                                </div>
                                <div class="col-lg-12">
                                    <label for="">Slug</label>
                                    <input type="text" name="slug" class="form-control mb-2"
                                        placeholder="Enter slug name" id="generateSlug" value="{{ $product->slug ?? '' }}">
                                </div>
                                <div class="col-lg-6">
                                    <label for="">Sku</label>
                                    <input type="text" name="sku" class="form-control mb-2"
                                        placeholder="Enter product sku" value="{{ $product->sku ?? '' }}">
                                </div>

                                <div class="col-lg-6">
                                    <label for="">Unit</label>
                                    <div class="input-group mb-3">
                                        <select type="text" name="unit" data-url="{{ route('admin.unit.select') }}"
                                            data-ajax="true" class="form-control input-group-prepend select2"
                                            placeholder="Username" aria-label="Username"
                                            aria-describedby="basic-addon1">
                                            @if($product)
                                                <option value="{{ $product->unit ?? 0 }}">{{ $product->unit_info->name ?? '' }}</option>
                                            @else
                                                <option value="0">unit</option>
                                            @endif
                                        </select>
                                        <button type="button" class="btn btn-primary input-group-append"
                                            data-dialog="modal-dialog-scrollable modal-dialog-centered"
                                            onclick="button_ajax(this)" data-title="Add New  unit"
                                            data-href="{{ route('admin.unit.create') }}">+</button>
                                    </div>
                                </div>

                            </div>


                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="">Category</label>
                                    <div class="input-group mb-3">
                                        <select type="text" name="category"
                                            data-url="{{ route('admin.category.select') }}" data-ajax="true"
                                            class="form-control input-group-prepend select2 category_select"
                                            placeholder="Username" aria-label="Username"
                                            aria-describedby="basic-addon1">
                                            @if($product)
                                                <option value="{{ $product->category ?? 0 }}">{{ $product->category_info->name ?? '' }}</option>
                                            @else
                                                <option value="0">category</option>
                                            @endif
                                        </select>
                                        <button type="button" class="btn btn-primary input-group-append"
                                            data-dialog=" modal-dialog-scrollable modal-dialog-centered"
                                            onclick="button_ajax(this)" data-title="Add New  Category"
                                            data-href="{{ route('admin.category.create') }}">+</button>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <label for="">Sub Category</label>
                                    <div class="input-group mb-3">
                                        <select type="text" name="subcategory"
                                            data-url="{{ route('admin.subcategory.select') }}" data-ajax="true"
                                            class="form-control input-group-prepend select2 select_subcategory"
                                            placeholder="Username" aria-label="Username"
                                            aria-describedby="basic-addon1">
                                            @if($product)
                                                <option value="{{ $product->sub_category ?? 0 }}">{{ $product->sub_category_info->name ?? '' }}</option>
                                            @else
                                                <option value="0">subcategory</option>
                                            @endif
                                        </select>
                                        <button type="button" class="btn btn-primary input-group-append"
                                            data-dialog=" modal-dialog-scrollable modal-dialog-centered"
                                            onclick="button_ajax(this)" data-title="Add New  subcategory"
                                            data-href="{{ route('admin.subcategory.create') }}">+</button>
                                    </div>
                                </div>
                                </div>

                                <div class="row">

                                <div class="col-lg-6">
                                    <label for="">Brand</label>
                                    <div class="input-group mb-3">
                                        <select type="text" data-url="{{ route('admin.brand.select') }}"
                                            data-ajax="true" name="brand"
                                            class="form-control input-group-prepend select2" placeholder="Brand"
                                            aria-label="Username" aria-describedby="basic-addon1">
                                            @if($product)
                                                <option value="{{ $product->brand ?? 0 }}">{{ $product->brand_info->name ?? '' }}</option>
                                            @else
                                                <option value="0">Brands</option>
                                            @endif
                                        </select>

                                        <button type="button" class="btn btn-primary input-group-append"
                                            data-dialog=" modal-dialog-scrollable modal-dialog-centered"
                                            onclick="button_ajax(this)" data-title="Add New  brand"
                                            data-href="{{ route('admin.brand.create') }}">+</button>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <label for="">Vat</label>
                                    <div class="input-group mb-3">
                                        <select type="text" name="vat" data-url="{{ route('admin.vat.select') }}"
                                            data-ajax="true" class="form-control input-group-prepend select2"
                                            placeholder="Username" aria-label="Username"
                                            aria-describedby="basic-addon1">
                                            @if($product)
                                                <option value="{{ $product->vat ?? 0 }}">{{ $product->vat_info->name ?? '' }}</option>
                                            @else
                                                <option value="0">Vat</option>
                                            @endif
                                        </select>
                                        <button type="button" class="btn btn-primary input-group-append"
                                            data-dialog=" modal-dialog-scrollable modal-dialog-centered"
                                            onclick="button_ajax(this)" data-title="Add New  Vat"
                                            data-href="{{ route('admin.vat.create') }}">+</button>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <label for="">Old Price</label>
                                    <input type="number" step="0.1" name="old_price" class="form-control mb-2"
                                        placeholder="Old Price" value="{{ $product ? $product->old_price : 0 }}">
                                </div>

                                <div class="col-lg-6">
                                    <label for="">Selling Price</label>
                                    <input type="number" step="0.1" name="selling_price" value="{{ $product ? $product->selling_price : 0 }}" class="form-control mb-2"
                                        placeholder="Selling Price">
                                </div>

                                <div class="col-lg-6">
                                    <label for="">Discount</label>
                                    <div class="input-group mb-3">
                                        <select type="text" name="discount_id[]" multiple
                                            data-url="{{ route('admin.discount.select') }}" data-ajax="true"
                                            class="form-control input-group-prepend select2" placeholder="Username"
                                            aria-label="Username" aria-describedby="basic-addon1">
                                            @if($product)
                                                @foreach ($product->discounts_info() as $items)
                                                    <option selected value="{{ $items->id ?? '' }}">{{ $items->name ?? '' }}</option>
                                                @endforeach
                                            @else
                                                <option value="0">discount</option>
                                            @endif

                                        </select>
                                        <button type="button" class="btn btn-primary input-group-append"
                                            data-dialog=" modal-dialog-scrollable modal-dialog-centered"
                                            onclick="button_ajax(this)" data-title="Add New  discount"
                                            data-href="{{ route('admin.discount.create') }}">+</button>
                                    </div>
                                </div>

                                @if (config('app.env') == 'local')
                                    <div class="col-lg-6">
                                        <label for="">Alert Quantaty</label>
                                        <input type="number" name="alert_quantity" value="{{ $product ? $product->alert_quantity : 0 }}" class="form-control mb-2">
                                    </div>
                                @endif
                                <div class="col-lg-6">
                                    <label for="">Weight</label>
                                    <input type="text" name="weight" value="{{ $product ? $product->weight : 0 }}" class="form-control mb-2">
                                </div>

                                <div class="col-lg-12">
                                    <label for="">Short Description</label>
                                    <textarea type="text" name="short_description" class="form-control mb-2 "
                                        placeholder="short_description">{{ $product ? $product->short_description : '' }}</textarea>
                                </div>
                                <div class="col-lg-12">
                                    <label for="">Description</label>
                                    <textarea type="text" name="description" class="form-control mb-2 summernote"
                                        placeholder="Description">{{ $product ? $product->description : '' }}</textarea>
                                </div>
                                <div class="col-lg-12 pt-3">
                                    <label for="">Additional Description</label>
                                    <textarea type="text" name="additional_description" class="form-control mb-2 summernote"
                                        placeholder="Additional Description">{{ $product ? $product->additional_description : '' }}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                           Image & Slider
                        </div>
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-6">
                                    <label type="button" onclick="upload_select(this, 600, 600)"> Image  <span class="text-danger">Size : 600px x 600px</span><br>
                                        <input type="text" name="image" id="image" class="form-control mb-2" value="{{ $product ? $product->upload_id : 0 }}" hidden>
                                        <img style="max-height: 60px" src="{{ dynamic_asset( $product ? $product->upload_id : 0 ) }}" alt="">
                                    </label>
                                </div>
                                <div class="col-lg-6">
                                    Image Slides <span class="text-danger">Size : 600px x 600px</span>
                                    <div class="items_container_image">
                                        <div class="items_filed_iamge">
                                            {{-- items --}}
                                            @if($product)
                                                @foreach (dynamic_assets($product->uploads_id) as $key =>  $item)
                                                    <div class="image_items_removeable">
                                                        <label type="button" class="multiple" onclick="upload_select(this, 600, 600)"> 
                                                        <input type="text" hidden name="images_multiple[]" value="{{ $key }}" id="image" class="form-control mb-2"/>
                                                        <img style="max-height: 60px" src="{{ $item }}" alt=""/>
                                                    </label>
                                                    <span  onclick="remove_element_image(this)">x</span>
                                                    </div>
                                                @endforeach
                                            @endif
                                            {{-- items --}}

                                        </div>
                                        <button type="button" class="add_image_filed btn btn-primary" onclick="add_more_filed_image(600, 600)">
                                            +
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                           Status Feature
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6 col-xl-4">
                                    <label for="feature"> Feature <br />
                                        <input type="checkbox" checked class="" hidden name="feature" value="0">
                                        <input type="checkbox" {{ $product ? ($product->feature ? 'checked' : '') : '' }} class="toggle" placeholder="Feature" name="feature"
                                            id="feature" value="1">
                                    </label>
                                </div>
                                <div class="col-6 col-xl-4">
                                    <label for="service"> Service <br />
                                        <input type="checkbox" checked class="" hidden name="service" value="0">
                                        <input type="checkbox" class="service toggle" {{ $product ? ($product->service ? 'checked' : '') : '' }}  placeholder="service" name="service"
                                            id="service" value="1">
                                    </label>
                                </div>
                                <div class="col-6 col-xl-4">
                                    <label for="service"> Status <br />
                                        <input type="checkbox" checked class="" hidden name="status" value="0">
                                        <input type="checkbox" class="status toggle" {{ $product ? ($product->status ? 'checked' : '') : '' }}  placeholder="status" name="status"
                                            id="service" value="1">
                                    </label>
                                </div>
                                <div class="col-6 col-xl-4">
                                    <label for="for_selling"> For Selling <br />
                                        <input type="checkbox" checked class="" hidden name="for_selling" value="0">
                                        <input type="checkbox" class="status toggle" {{ $product ? ($product->for_selling ? 'checked' : '') : '' }}  placeholder="status" name="for_selling"
                                            id="service" value="1">
                                    </label>
                                </div>
                                <div class="col-6 col-xl-4">
                                    <label for="free_delivery"> Free Delivery <br />
                                        <input type="checkbox" checked class="" hidden name="free_delivery" value="0">
                                        <input type="checkbox" class="status toggle" {{ $product ? ($product->free_delivery ? 'checked' : '') : '' }}  placeholder="status" name="free_delivery"
                                            id="service" value="1">
                                    </label>
                                </div>


                            </div>
                        </div>
                    </div>

                    {{-- Storeing information --}}
                    <div class="card">
                        <div class="card-header">
                          Storeing Information
                        </div>
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-6">
                                    <label for="">Garage</label>
                                    <input type="text" name="garage" value="{{ $product ? $product->garage : 0 }}" class="form-control mb-2">
                                </div>
                                <div class="col-lg-6">
                                    <label for="">Route</label>
                                    <input type="text" name="route" value="{{ $product ? $product->route : 0 }}" class="form-control mb-2">
                                </div>

                            </div>
                        </div>
                    </div>
                    {{-- end storeing information --}}
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                          Landing Page Information
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="landing_page_bg">Landing Page BG</label>
                                    <input type="color" name="landing_page_bg" value="{{ $product ? $product->landing_page_bg : 0 }}" class="form-control mb-2"
                                        placeholder="Landing Page BG">
                                </div>

                                <div class="col-lg-6">
                                    <label for="landing_page_color">Landing Page Color</label>
                                    <input type="color" name="landing_page_color" value="{{ $product ? $product->landing_page_color : 0 }}" class="form-control mb-2"
                                        placeholder="Landing Page Color">
                                </div>
                                <div class="col-lg-12 mt-3">
                                    <label for="Youtube_Video">Youtube Video</label>
                                    <textarea name="youtube_video" id="Youtube_Video" class="form-control"
                                        placeholder="Iframe Full TAG">{{ $product ? $product->youtube_video : 0 }}</textarea>
                                </div>

                                {{--  <div class="col-lg-6">
                                    <label for="landing_page_color">Landing Page Variant</label>
                                    <div class="text-light p-3 bg-danger border"> Working on it</div>
                                </div>  --}}

                                {{--  <div class="col-lg-6">
                                    <label for="landing_page_color">Landing Page Variant</label>
                                    <div class="text-light p-3 bg-danger border"> Working on it</div>
                                </div>  --}}
                                <div class="col-12">
                                    <br>
                                    <div class="text-center">=========== FAQ =========</div>
                                    <div class="faq_container">
                                        @if( $product && $product->product_faq)
                                            @foreach ($product->product_faq as $faq)
                                                <div class="single_faq d-flex my-3">
                                                    <div class="w-100">
                                                        <input type="text" name="faq_id[]" value="{{ $faq->id }}" hidden>
                                                        <div class="faq_question">
                                                            <label for="faq_title">FAQ Title</label>
                                                            <input type="text" name="faq_title[]" value="{{ $faq->question }}" class="faq_title form-control">
                                                        </div>
                                                        <div class="faq_answer">
                                                            <label for="faq_answer">FAQ Answer</label>
                                                            <textarea type="text" name="faq_answer[]" class="faq_title form-control">{{ $faq->answer }} </textarea>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <button type="button" class="btn btn-danger" onclick="control_data_faq(this, '.single_faq', '-')">x</button>
                                                    </div>
                                                </div>
                                                @endforeach
                                            @endif


                                        </div>
                                        <button type="button" onclick="control_data_faq(this, '.single_faq', '+')" class="faq btn btn-primary btn-block">+ Add New FAQ</button>

                                </div>




                            </div>


                        </div>
                    </div>
                </div>


            </div>




            {{-- Its for Variant Part --}}
            <div class="variant_option my-4">
                <div class="card">
                    <div class="card-header">
                        Variant Option
                        <div class="float-right">

                            <input type="checkbox" checked class="" hidden name="variant_on" value="0">
                            <input type="checkbox" class="toggle" placeholder="variant_on" name="variant_on"
                                id="variant_on" {{ $product ?( $product->variant_on ? 'checked' : '') : '' }} value="1">

                        </div>
                    </div>
                    <div class="card-body variant_body" style="display: {{ $product ?( $product->variant_on ? 'block' : 'none') : 'none' }}">
                        <div class="variant_input">
                            <div class="row mb-2">

                                <div class="col-12">
                                    <span  class="text-primary">NB: Every items separate by
                                        `,` Comma example <span
                                            class="cursor-pointer text-danger">`red,yellow,blue`</span> </span>
                                </div>


                                <div class="col-12 items_container_key_header">
                                    @if($product)
                                        @php
                                            if( $product->variant_on){
                                                $data_items_variant_json = json_decode($product->variant_option);
                                            }
                                        @endphp


                                        @if( $product->variant_on && (is_array($data_items_variant_json->variant_key) || is_object($data_items_variant_json->variant_key)))
                                            @foreach ($data_items_variant_json->variant_key as $key => $items)
                                            <div class=" key_items_header" style="background:#1595859e">
                                                <div>
                                                    <label for="variant_key_name">Key Key Name</label>
                                                    <input type="text" class="form-control variant_key_name" id="variant_key_name" name="variant_key_name[]" value="{{ $items ?? '' }}" placeholder="Variant Key">
                                                </div>
                                                <div>
                                                    <label for="variant_name_key">Variant Name Separate By comma(,)</label>
                                                    <input type="text" class="form-control variant_name_key" id="variant_name_key" value="{{  $data_items_variant_json->vairant_value[$key] ?? '' }}" name="variant_name_key[]"
                                                        placeholder="Variant Value">
                                                </div>
                                                <button onclick="removeParents(this, '.key_items_header')" type="button" class="btn btn-sm btn-danger btn_items remove_btn ">x</button>
                                            </div>
                                            @endforeach
                                        @endif

                                        @if( $product->variant_on)
                                            @if(is_array($data_items_variant_json->variant_details_key) || is_object($data_items_variant_json->variant_details_key))
                                                @foreach ($data_items_variant_json->variant_details_key as $key => $items)
                                                <div class=" key_items_header" style="background:#b2971b4d">
                                                    <div>
                                                        <label for="variant_key_name_details">Key Name</label>
                                                        <input type="text" class="form-control variant_key_name_details" id="variant_key_name_details" name="variant_key_name_details[]" value="{{ $items ?? '' }}" placeholder="Variant Key">
                                                    </div>
                                                    <div>
                                                        <label for="variant_name_key_details">Variant Name</label>
                                                        <input type="text" class="form-control variant_name_key_details" id="variant_name_key_details" value="{{  $data_items_variant_json->variant_details_value[$key] ?? '' }}" name="variant_name_key_details[]"
                                                            placeholder="Variant Value">
                                                    </div>
                                                    <button onclick="removeParents(this, '.key_items_header')" type="button" class="btn btn-sm btn-danger btn_items remove_btn ">x</button>
                                                </div>
                                                @endforeach
                                            @endif
                                        @endif
                                    @endif

                                    {{-- variant item container key --}}
                                </div>


                                <div class="col-12 ">
                                    <div class="btn-group w-100">

                                        <button type="button" class="btn btn-success mt-4" onclick="create_filed_variant(this, 1)"> + Add Variant Combination </button>
                                        <button type="button" class="btn btn-warning mt-4" onclick="create_filed_variant(this, 2)">  + Add Variant Details </button>
                                        <button type="button" class="btn btn-primary mt-4" onclick="generate_variant_filed()">  Generate Filed  </button>
                                    </div>
                                </div>



                            </div>
                        </div>
                        {{-- <div>
                            <div class="row text-center font-weight-bold text-primary mt-3">
                                <div class="col-md-4">Variant Name</div>
                                <div class="col-md-4">Old Price</div>
                                <div class="col-md-4">New Price</div>
                            </div>
                        </div> --}}
                        <div class="variant_output">
                            {{--  variant outpur  --}}
                            @if($product && $product->variant_on == 1 )
                                    <div class="d-flex  bg-info rounded variant_heading">
                                        <div class="single_heading">Key</div>
                                        @if((is_array($data_items_variant_json->variant_details_key) || is_object($data_items_variant_json->variant_details_key)))
                                            @foreach ($data_items_variant_json->variant_details_key as $key => $item)
                                                <div class="single_heading">{{ $item ?? '' }}</div>
                                            @endforeach
                                            {{-- @foreach ($data_items_variant_json->variant_key as $key => $item)
                                                <div class="single_heading">{{ $item ?? '' }}</div>
                                            @endforeach --}}

                                        @endif
                                        <div class="single_heading">Old Price</div>
                                        <div class="single_heading">Selling Price</div>
                                        <div class="single_heading">Close</div>
                                    </div>

                                    @foreach ($product->variant_option_info as $key => $items)



                                    <div class="row mb-2 items_parents">
                                                <div class="items">
                                                    <input type="text" name="variant_key[]" value="{{ $items->name ?? ''  }}" class="form-control"
                                                        placeholder="variant key" id="">
                                                </div>

                                                @if(is_array($data_items_variant_json->variant_details_key) || is_object($data_items_variant_json->variant_details_key))
                                                    @for($i = 0; $i < count($data_items_variant_json->variant_details_key); $i++)
                                                        <div class="items">
                                                            <input type="text" name="details_key_value_{{ $i }}[]" class="form-control"
                                                                placeholder="Details" value="{{  $items->{"details_key_value_".$i} ?? '' }}" id="">
                                                        </div>
                                                        {{-- @php
                                                            $key_items_key_name = explode(":", $items->name);
                                                        @endphp
                                                        @foreach ( $key_items_key_name as $key => $key_name_item)
                                                            <div class="items">
                                                                <input disabled type="text" class="form-control"
                                                                    placeholder="Details" value="{{  $key_name_item }}" id="">
                                                            </div>

                                                        @endforeach --}}



                                                    @endfor

                                                @endif




                                               <div class="items">
                                                    <input type="text" name="old_price_v[]" class="form-control"
                                                        placeholder="Old Price" id="" value="{{ $items->old_price ?? 0 }}">
                                                </div>
                                                  <div class="items">
                                                    <input type="text" name="selling_price_v[]" class="form-control"
                                                        placeholder="Current Price" id="" value="{{ $items->selling_price ?? 0 }}">
                                                </div>
                                                <div class="items">
                                                    <button type="button" class="btn btn-danger" onclick="removeParents(this, '.items_parents')">x</button>
                                                </div>
                                         </div>
                                    @endforeach
                            @endif
                            {{--  variant outpur  --}}
                        </div>
                    </div>
                </div>

            </div>
            {{-- End Variant Part --}}




            <div class="d-flex justify-content-end">
                <button class="btn btn-warning mr-1" type="button" onclick="document.querySelector('.form_ajax_submit').reset()">Reset</button>
                <button class="btn btn-warning" type="submit">Save</button>
            </div>

        </form>
    </div>
</div>


<script>
      function generateSlugMake(thi) {
            var text = thi.value;

            let output = text
                .toLowerCase()                  // Convert to lowercase
                .trim()                          // Trim spaces
                .replace(/[^a-z0-9\s-]/g, '')    // Remove special characters
                .replace(/\s+/g, '-')            // Replace spaces with dashes
                .replace(/-+/g, '-');            // Remove multiple dashes


            document.querySelector('#generateSlug').value = output;

        }

    // generate faq items
    function control_data_faq(thi, key_class, type){
        if(type == '-'){
            $(thi).parents(key_class).remove();
        }else if(type == '+'){
            let data =`<div class="${key_class.replace('.', '')} d-flex my-3">
                <div class="w-100">
                    <input type="text" name="faq_id[]" value="" hidden>
                    <div class="faq_question">
                        <label for="faq_title">FAQ Title</label>
                        <input type="text" name="faq_title[]" class="faq_title form-control">
                    </div>
                    <div class="faq_answer">
                        <label for="faq_answer">FAQ Answer</label>
                        <textarea type="text" name="faq_answer[]" class="faq_title form-control">

                        </textarea>
                    </div>

                </div>
                <div>
                    <button type="button" class="btn btn-danger" onclick="control_data_faq(this, '${key_class}', '-')">x</button>
                </div>
            </div>`;

            $('.faq_container').append(data);
        }

    }
    // end generate faq items



    // VAriant information

        // add new variant key add
        function create_filed_variant(thi, key_item = 1){
            if(key_item == 1){
                key_name = 'variant_key_name';
                key_value = 'variant_name_key';
                bg = '#1595859e';
            }else{
                key_name = 'variant_key_name_details';
                key_value = 'variant_name_key_details';
                bg = '#b2971b4d';
            }

            let data = `<div class=" key_items_header" style="background:${bg}">
                            <div>
                                <label for="${key_name}">Key Key Name</label>
                                <input type="text" class="form-control ${key_name}" id="${key_name}" name="${key_name}[]"
                                    placeholder="Variant Key">
                            </div>
                            <div>
                                <label for="${key_value}">Variant Name</label>
                                <input type="text" class="form-control ${key_value}" id="${key_value}" name="${key_value}[]"
                                    placeholder="Variant Value">
                            </div>
                            <button onclick="removeParents(this, '.key_items_header')" type="button" class="btn btn-sm btn-danger btn_items remove_btn ">x</button>
                        </div>  `;

            $('.items_container_key_header').append(data);
        }
        // end add new variant key add



        // generate variant Filed
        function generate_variant_filed(){
            // Variant key and variant value
            let variant_key_name = $('.items_container_key_header .variant_key_name');
            let variant_key_value = $('.items_container_key_header .variant_name_key');

            // Vairant details key value
            let variant_key_name_details = $('.items_container_key_header .variant_key_name_details');
            let variant_key_value_details = $('.items_container_key_header .variant_name_key_details');




            // price variant generate complate
            var items_combinations = [];
            var all_values = [];

            // Collect values from inputs
            variant_key_value.each(function () {
                var variant_key_value = $(this).val(); // Get input value
                if (variant_key_value) {
                    all_values.push(variant_key_value.split(',')); // Convert comma-separated values to an array
                }
            });

            // Generate combinations
            function generateCombinations(arr, prefix = '') {
                if (arr.length === 0) {
                    items_combinations.push(prefix.slice(0, -1)); // Remove last ":"
                    return;
                }

                arr[0].forEach(value => {
                    generateCombinations(arr.slice(1), prefix + value + ':');
                });
            }

            // Start generating combinations
            generateCombinations(all_values);

            // Join final result with ","
            var final_combination = items_combinations.join(',');




            console.log(items_combinations);







            // console.log(variant_key_name)
            // console.log(variant_key_value)



            let final_combination_output = '';

            // heading generate
            final_combination_output += `<div class="d-flex  bg-info rounded variant_heading"><div class="single_heading">Key</div>`;

            variant_key_name_details.each(function(){
                final_combination_output += `<div class="single_heading">${this.value}</div>`;
            })

            final_combination_output += `<div class="single_heading">Old Price</div>`;
            final_combination_output += `<div class="single_heading">Selling Price</div>`;
            final_combination_output += `<div class="single_heading">Close</div></div>`;
            // end heading




            items_combinations.forEach(function(item, index){
                    let rendered = ' <div class="row mb-2 items_parents">';

                        rendered +=  `
                                <div class="items">
                                    <input type="text" name="variant_key[]" value="${item}" class="form-control"
                                        placeholder="variant key" id="">
                                </div>

                                `;

                                if(variant_key_value_details.length > 0){

                                    variant_key_value_details.each(function(index, item){

                                    rendered += ` <div class="items">
                                                        <input type="text" name="details_key_value_${index}[]" class="form-control"
                                                            placeholder="Details" value="${this.value}" id="">
                                                    </div>`;
                                    })
                                }


                            rendered += `
                               <div class="items">
                                    <input type="text" name="old_price_v[]" class="form-control"
                                        placeholder="Old Price" id="">
                                </div>
                                  <div class="items">
                                    <input type="text" name="selling_price_v[]" class="form-control"
                                        placeholder="Current Price" id="">
                                </div>
                                <div class="items">
                                    <button type="button" class="btn btn-danger" onclick="removeParents(this, '.items_parents')">x</button>
                                </div>
                            `;
                            rendered += ' </div>';

                            final_combination_output += rendered;
                        });

                        $('.variant_output').html(final_combination_output);





        }
        // end generate variant Filed


        // String to array
        function string_to_array(string, separator = ' '){
            if(string.length == 0){
                return [];
            }else{
                return string.split(separator);

            }
        }
        // end String to array



</script>




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







        function removeParents(thi, items_class){
            $(thi).parents(items_class).remove();
        }





        $(".faq_container").sortable({
            placeholder: "sortable-placeholder",
            update: function (event, ui) {
            console.log("Order updated!");
            },
        });




</script>

<style>
    .sortable-placeholder {
        border: 2px dashed #cccccc5d;
        height: 40px;
        margin: 5px 0;
        background: #00000062;
        }
        .faq_container .single_faq {
        border: 1px solid #dddddd77;
        padding: 10px;
        margin: 5px 0;
        background: #00000071;
        cursor: grab;
        }
        .items_parents{
            gap: 10px;
            padding: 0 10px;
        }
        .items_container_key_header {
            display:flex;
            flex-wrap:wrap;
            gap: 10px;
        }
        .key_items_header{
            width:150px;;
            position:relative;
            width: 150px;
            padding: 6px;
            border: 1px solid #00000014;
            border-radius: 5px;
        }

        .key_items_header .remove_btn{
            position:absolute;
            top:0;
            right:0px;


            height:auto;
        }
        .variant_heading {
            padding: 12px;
            margin-bottom: 15px;
        }
        .items_parents .items input,
        .variant_heading .single_heading{
            text-align: center;
            width: 150px;
        }
</style>
@endpush
