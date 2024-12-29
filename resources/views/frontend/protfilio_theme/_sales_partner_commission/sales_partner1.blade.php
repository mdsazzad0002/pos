@php
    if(!isset($sales_privacy_page)){
        $sales_privacy_page = \App\Models\Page::where('page_type', 'sales_privacy')->first();
    }

    if(!isset($sales_condition_page)){
        $sales_condition_page = \App\Models\Page::where('page_type', 'sales_condition')->first();
    }
    if(!isset($lead_sources)){
        $lead_sources = \App\Models\crm\LeadSource::get();
    }

@endphp

<section class="container-fluid mt-5 sales_partner_form">
    <div class="account account-1">
        <div class="">
            <form action="{{route('sales_partner_store')}}" method="POST" id="sales_partner_registration">
                @csrf

                <div class="h2 text-center mb-5">
                    Sales Partner
                </div>
                <fieldset>
                    <legend>Personal Information</legend>
                    <div class="row">

                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="prefix">Prefix <span class="text-danger">*</span></label>
                                <input class="form-control"  placeholder="Mrs / Mr" type="text" name="prefix" id="prefix">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="name">Name <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="name" id="name">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="father">Father <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="father" id="father">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="nid">NID No <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="nid" id="nid">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="designation">Designation <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="designation" id="designation">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="religion">Religion <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="religion" id="religion">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="nationality">Nationality <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="nationality" id="nationality">
                            </div>
                        </div>
                    </div>

                </fieldset>


                <fieldset>
                    <legend>Address</legend>
                    <div class="row">
                          {{-- Present Address --}}
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label for="address_type">Address Type <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="address_type[]" placeholder="Present / Permanent" id="address_type">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label for="village">Village <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="village[]" id="village">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label for="post">Post <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="post[]" id="post">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label for="post">District <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="district[]" id="post">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label for="country">Country <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="country[]" id="country">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label for="staying">How long have you been staying? <span
                                            class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="staying[]" id="staying">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <label ></label> <br><br>
                                <button class="btn btn-warning" type="button" onclick="add_new_address(this)">+</button>
                            </div>
                        </div>
                </fieldset>


                <fieldset>
                    <legend>Contact Information</legend>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="source">Contact Type <span class="text-danger">*</span></label>
                              <select name="source[]" id="" class="form-control" id="source">
                                @foreach ($lead_sources as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                              </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="contact_info">Contact Info<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="contact_info[]" id="contact_info">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <label ></label> <br><br>
                            <button class="btn btn-warning" type="button" onclick="add_new_address(this)">+</button>
                        </div>

                    </div>
                </fieldset>

                <fieldset>
                    <legend>Payment Information</legend>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="card_holder">Account Holder <span class="text-danger">*</span></label>
                                <input class="form-control" placeholder="Like your name" type="text"
                                    name="card_holder[]" id="card_holder">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="identifier_code">Identifier Code <span class="text-danger">*</span></label>
                                <input class="form-control" placeholder="Identifier code" type="text"
                                    name="identifier_code[]" id="identifier_code">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="provider">Payment Method <span class="text-danger">*</span></label>
                                <input class="form-control" placeholder="Like bkash, nogod, roket, surecash" type="text"
                                    name="provider[]" id="provider">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="account_no">Account No<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="account_no[]" id="account_no">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="branch">Branch<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="branch[]" id="branch">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <label ></label> <br><br>
                            <button class="btn btn-warning" type="button" onclick="add_new_address(this)">+</button>
                        </div>
                    </div>

                </fieldset>


                <fieldset>
                    <legend>Product</legend>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="product_name">Product Name<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="product_name[]" id="product_name">
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="model_no">Model No<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="model_no[]" id="model_no">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="taka">Taka<span class="text-danger">*</span></label>
                                <input class="form-control" type="number" name="taka[]" id="taka">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <label ></label> <br><br>
                            <button class="btn btn-warning" type="button" onclick="add_new_address(this)">+</button>
                        </div>

                    </div>
                </fieldset>


                <fieldset>
                    <legend>Reference</legend>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="reference_no">reference_no<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="reference_no[]" id="reference_no">
                            </div>
                        </div>


                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="reference_id">reference_id<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="reference_id[]" id="reference_id">
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="account_no">Referral account_no<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="account_no[]" id="account_no">
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 ">
                            <label ></label> <br><br>
                            <button class="btn btn-warning" type="button" onclick="add_new_address(this)">+</button>
                        </div>
                    </div>

                </fieldset>



                <fieldset>
                    <legend>Authorization</legend>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="email">Email <span class="text-danger">*</span></label>
                                <input class="form-control" type="email" name="email" id="email">
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="password">Password <span class="text-danger">*</span></label>
                                <input class="form-control" type="password" name="password" id="password">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 ">
                            <div class="form-group">
                                <label for="password">Confirm Password <span class="text-danger">*</span></label>
                                <input class="form-control" type="password" name="c_password" id="password">
                            </div>
                        </div>
                    </div>
                </fieldset>








                    {{-- Product Reference --}}



                    <div class="col-12">
                        <div class="mt-3 text-center">
                            <input required type="checkbox" id="do_you_agree">&nbsp;<label for="do_you_agree"> Do you Agree <a href="{{ url($sales_privacy_page->slug ?? '') }}"> {{ $sales_privacy_page->name ?? '' }}</a> &
                            <a href="{{ url($sales_condition_page->slug ?? '') }}">{{ $sales_condition_page->name ?? '' }}</a> ?</label>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="text-center">
                            <button type="submit" class="cus-btn mt-3">Confirm Submit</button>
                        </div>
                    </div>

                </div>




            </form>
        </div>
    </div>

</section>

@push('js')
<script>

    function add_new_address(thi){
        var data = $(thi).closest('fieldset').find('.row').html();  // Find the .row within the closest fieldset
        $(thi).closest('fieldset').append('<div class="row">'+data+'</div>');
    }
   $('#sales_partner_registration').on('submit', function(e) {
    e.preventDefault();  // Prevent the form from submitting normally

    $.ajax({
        type: 'post',
        url: this.action,  // Use the form's action attribute as the URL
        processData: false,  // Important: tells jQuery not to process the data
        contentType: false,  // Important: tells jQuery not to set the content-type header
        data: new FormData(this),  // Send the form data as FormData object
        success: function(data) {
            console.log(data);  // Handle the response here
        },
        error: function(xhr, status, error) {
            console.log('Error: ' + error);  // Handle errors here
        }
    });
});

</script>

@endpush

<style>
    .sales_partner_form .form-group label {
        margin-bottom: 5px;
        margin-top: 15px;
    }
</style>
