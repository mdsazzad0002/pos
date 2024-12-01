<section class="container-fluid mt-5 sales_partner_form">
    <div class="account account-1">
        <div class="">
            <form action="{{route('sales_partner_store')}}" method="POST" >
                @csrf

                <h1 class="text-center">Sales Partner </h1>
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">Name <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="name" id="name">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="father">Father <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="father" id="father">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="nid">NID No <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="nid" id="nid">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="profession">NID No <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="profession" id="profession">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="religion">Religion <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="religion" id="religion">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="nationality">Nationality <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="nationality" id="nationality">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="whatsapp">whatsapp no <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="whatsapp" id="whatsapp">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="bankaccountno">bank Account no <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="bankaccountno" id="bankaccountno">
                        </div>
                    </div>

                    {{-- Present Address --}}
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="village">Village <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="village" id="village">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="post">Post <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="post" id="post">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="post">District <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="district" id="post">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="staying">How long have you been staying? <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="staying" id="staying">
                        </div>
                    </div>
                    {{-- end Present address --}}

                    {{-- Permanent Address --}}
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="p_village">Village <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="p_village" id="p_village">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="p_post">Post <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="p_post" id="p_post">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="p_district">District <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="p_district" id="p_district">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="p_staying">How long have you been staying? <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="p_staying" id="p_staying">
                        </div>
                    </div>
                    {{-- end Permanent address --}}

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="payment_method">Payment Method <span class="text-danger">*</span></label>
                            <input class="form-control" placeholder="Like bkash, nogod, roket, surecash"  type="text" name="payment_method" id="payment_method">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="account_no">Account No<span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="payment_method" id="account_no">
                        </div>
                    </div>


                    {{-- Product Reference --}}

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="product_name">Product Name<span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="product_name" id="product_name">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="model_no">Model No<span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="model_no" id="model_no">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="taka">Taka<span class="text-danger">*</span></label>
                            <input class="form-control"  type="number" name="taka" id="taka">
                        </div>
                    </div>




                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="reference_no">reference_no<span class="text-danger">*</span></label>
                            <input class="form-control"  type="number" name="reference_no" id="reference_no">
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="reference_id">reference_id<span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="reference_id" id="reference_id">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="account_no">account_no<span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="account_no" id="account_no">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="phone_number">phone_number<span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="phone_number" id="phone_number">
                        </div>
                    </div>



                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email">Email <span class="text-danger">*</span></label>
                            <input class="form-control"  type="email" name="email" id="email">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="password">Password <span class="text-danger">*</span></label>
                            <input class="form-control"  type="password" name="password" id="password">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="password">Confirm Password <span class="text-danger">*</span></label>
                            <input class="form-control"  type="password" name="password" id="password">
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="text-end">
                            <button type="submit" class="cus-btn mt-3">Submit</button>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mt-3">
                            Do you Agree <a href="#">Privacy Policy</a> &
                             <a href="#">Terms & Condition</a> ?
                        </div>
                    </div>

                </div>




            </form>
        </div>
    </div>

</section>


<style>
    .sales_partner_form .form-group label{
        margin-bottom: 5px;
        margin-top: 30px;
    }
</style>
