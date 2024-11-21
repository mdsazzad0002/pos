<section class="container-fluid mt-5 sales_partner_form">
    <div class="account account-1">
        <div class="">
            <form action="{{route('sales_partner_store')}}" method="POST" >
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">Name <span class="text-danger">*</span></label>
                            <input class="form-control"  type="text" name="name" id="name">
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
