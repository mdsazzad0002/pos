<x-frontend_section :info="$variant_info" class="_service_request_style1" css="_service_request/_style1.css">
    <br>
    <div class="container-fluid">
        <form id="informationForm" class="informationForm" data-action="{{ route('admin.service-request.service-request.store') }}">
            @csrf

            <div class="row align-items-center">
                <div class="d-none d-lg-block col-lg-4">
                    <img src="{{ dynamic_asset($variant_info->upload_id3) }}" alt=" " style="width: 100%">
                </div>
                <div class="col-lg-8">
                    <h4 class="headding-title">Basic Information</h4>
        
                    <!-- Image loader -->
                    <div id="loader" class="loader">
                        <img src="{{ asset('preset/loder.gif') }}" style="width: 80px; height: 80px;">
                    </div>
                    <!-- Image loader -->
        
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="customerName">Name: *</label>
                                <input type="text" class="form-control" id="customerName" placeholder="Enter Your Name"
                                    name="customerName">
                                <div id="customerName-error" class="text-danger"></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="mobile">Mobile: *</label>
                                <input type="number" class="form-control" id="mobile1" placeholder="Enter Your Mobile Number"
                                    name="mobile">
                                <div id="mobile-error" class="text-danger"></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="alternativeMobile">Alternative Mobile:</label>
                                <input type="number" class="form-control" id="alternativeMobile"
                                    placeholder="Enter Your Alternative Mobile Number" name="alternativeMobile">
                                <div id="alternativeMobile-error" class="text-danger"></div>
                            </div>
                        </div>
                    </div>
        
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="address">Address: *</label>
                                <input type="text" class="form-control" id="address"
                                    placeholder="Enter Your Address. Max 100 Characters" name="address">
                                <div id="address-error" class="text-danger"></div>
                            </div>
                        </div>
        
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="type">Service Point: *</label>
                                <select id="serviceCenter" class="form-control select2"
                                    data-href="{{ route('admin.service-request.service-request.select') }}" name="serviceCenter"
                                    tabindex="-1" aria-hidden="true">
                                    <option value="">-</option>
        
                                </select>
                            </div>
                        </div>
                    </div>
        
                    <h4 class="headding-title">Incident Information</h4>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="brand">Brand: *</label>
                                <input type="text" class="form-control" id="brand" placeholder="Brand"
                                    value="{{ settings('app_name_short', 9) }}" name="brand" disabled="">
                            </div>
                        </div>
        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="productList">Product: *</label>
                                <select id="productList" class="select2 form-control"
                                    data-href="{{ route('admin.product.select') }}" name="productList" tabindex="-1"
                                    aria-hidden="true">
                                    <option value="">-</option>
        
                                </select>
                            </div>
                        </div>
                    </div>
        
        
        
        
                    <div class="row margin-top-30">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="type">Comments:</label>
                                <textarea name="comment" class="form-control" rows="5" cols=""></textarea>
                                <div id="comment-error" class="text-danger"></div>
                            </div>
                        </div>
                    </div>
        
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <!--Hidden Input Fields -->
        
        
                                <input type="submit" class="btn btn-primary" value="Submit">
                            </div>
                        </div>
                    </div>

                </div>
            </div>


        </form>

    </div>
</x-frontend_section>

