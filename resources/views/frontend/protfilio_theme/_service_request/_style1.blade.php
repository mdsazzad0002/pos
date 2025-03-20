
<x-frontend_section :info="$variant_info" class="_service_request_style1" css="_service_request/_style1.css">
<div class="container-fluid">
    <form id="informationForm">

        <h4 class="headding-title">Basic Information</h4>

        <!-- Image loader -->
        <div id="loader">
            <img src="{{ asset('preset/loder.gif') }}">
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
                    <input type="number" class="form-control" id="mobile" placeholder="Enter Your Mobile Number"
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
                    <label for="type">Service Center: *</label>
                    <select id="serviceCenter" class="form-control select2-hidden-accessible" name="serviceCenter"
                        tabindex="-1" aria-hidden="true">
                        <option value="">-</option>
                      
                    </select><span class="select2 select2-container select2-container--default" dir="ltr"
                        style="width: 289.984px;"><span class="selection"><span
                                class="select2-selection select2-selection--single" role="combobox"
                                aria-haspopup="true" aria-expanded="false" tabindex="0"
                                aria-labelledby="select2-serviceCenter-container"><span
                                    class="select2-selection__rendered" id="select2-serviceCenter-container"
                                    title="-">-</span><span class="select2-selection__arrow"
                                    role="presentation"><b role="presentation"></b></span></span></span><span
                            class="dropdown-wrapper" aria-hidden="true"></span></span>
                    <div id="serviceCenter-error" class="text-danger"></div>
                </div>
            </div>
        </div>

        <h4 class="headding-title">Incident Information</h4>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="brand">Brand: *</label>
                    <input type="text" class="form-control" id="brand" placeholder="Brand" value="WALTON"
                        name="brand" disabled="">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label for="productList">Product: *</label>
                    <select id="productList" class="form-control select2-hidden-accessible" name="productList"
                        tabindex="-1" aria-hidden="true">
                        <option value="">-</option>
                        <option>3D TELEVISION</option>
                        <option>AIRCONDITIONER</option>
                        <option>COFFEE VENDING MACHINE</option>
                        <option>COLOR TELEVISION</option>
                        <option>DISH DRYER</option>
                        <option>E-BIKE</option>
                        <option>EXHAUST FAN</option>
                        <option>FREEZER</option>
                        <option>GAS STOVE</option>
                        <option>GENERATOR</option>
                        <option>IPS</option>
                        <option>KITCHEN HOOD</option>
                        <option>LAPTOP</option>
                        <option>LCD TELEVISION</option>
                        <option>LED SMART TELEVISION</option>
                        <option>LED TELEVISION</option>
                        <option>MICROWAVE OVEN</option>
                        <option>OVEN</option>
                        <option>PEDESTAL FAN</option>
                        <option>REFRIGERATOR</option>
                        <option>Room Heater</option>
                        <option>TABLE FAN</option>
                        <option>TELEVISION</option>
                        <option>TORNADO FAN</option>
                        <option>VRF(ODU+IDU)</option>
                        <option>WALL FAN</option>
                        <option>WASHING MACHINE</option>
                        <option>WATER HEATER</option>
                        <option>WATER PUMP</option>
                        <option>WATER PURIFIER</option>
                        <option>Water Dispenser</option>
                    </select><span class="select2 select2-container select2-container--default" dir="ltr"
                        style="width: 450px;"><span class="selection"><span
                                class="select2-selection select2-selection--single" role="combobox"
                                aria-haspopup="true" aria-expanded="false" tabindex="0"
                                aria-labelledby="select2-productList-container"><span
                                    class="select2-selection__rendered" id="select2-productList-container"
                                    title="-">-</span><span class="select2-selection__arrow"
                                    role="presentation"><b role="presentation"></b></span></span></span><span
                            class="dropdown-wrapper" aria-hidden="true"></span></span>
                    <div id="productList-error" class="text-danger"></div>
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
                    <input type="hidden" name="token" id="token">

                    <input type="submit" class="btn btn-primary" value="Submit">
                </div>
            </div>
        </div>
    </form>

</div>
</x-frontend_section>