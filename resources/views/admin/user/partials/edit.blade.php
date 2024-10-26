<form action="{{ route('admin.user.update', $User->id) }}" method="post">
    @csrf
    @method('put')

    {{--  profile information  --}}
    <fieldset class="border p-2 border-dashed rounded border-success mb-2">
        <legend>Profile Information</legend>
        <div class="row">
            <div class="col-md-2">
                <div>
                    <label for="name_prefix">Prefix
                        <input type="text" value="{{ $User->prefix ?? '' }}" name="prefix" class="form-control mb-2" id="name_prefix" placeholder="Mr/ Mrs">
                    </label>
                </div>
            </div>
            <div class="col-md-5">
                <div>
                    <label for="name">Name
                        <input type="text" name="name" value="{{ $User->name ?? '' }}" class="form-control mb-2" id="name" placeholder="Enter your full name">
                    </label>
                </div>
            </div>
            <div class="col-md-5">
                <div>
                    <label for="email">Email
                        <input type="email" name="email" value="{{ $User->email ?? '' }}" class="form-control mb-2" id="email" placeholder="Enter your email">
                    </label>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label for="salary">Salary
                        <input type="number" name="salary" value="{{ $User->salary ?? '' }}" class="form-control mb-2" id="salary" placeholder="Enter your salary">
                    </label>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label for="joining_date">Email
                        <input type="date" name="joining_date" value="{{ $User->joining_date ?? '' }}" class="form-control mb-2" id="joining_date" placeholder="Enter your joining_date">
                    </label>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label for="designation">designation
                        <input type="text" name="designation" value="{{ $User->designation ?? '' }}" class="form-control mb-2" id="designation" placeholder="Enter your designation">
                    </label>
                </div>
            </div>

        </div>
    </fieldset>
    {{--  end profile information  --}}


    {{--  permission information  --}}
    <fieldset class="border p-2 border-dashed rounded border-success mb-2">
        <legend>Permission</legend>
        <div class="row">

            <div class="col-md-2">
                <div>
                    <label for="status">Status
                        <span class="d-inline-block" tabindex="0" data-toggle="tooltip" data-placement="top" title="It Enable to user login.">
                            <i class="fas fa-question-circle"></i>
                          </span>

                        <input type="checkbox" checked class="" hidden  name="status"   value="0">
                        <input type="checkbox" class="toggle" @if($User->status == 1)
                            checked
                        @endif  placeholder="Enter App Name" name="status"  id="status" value="1">


                    </label>
                </div>
            </div>
            <div class="col-md-5">
                <div>
                    @php
                         $roles_in_db =$User->getRoleNames()->toArray();
                    @endphp
                    <label for="role">Select your Role
                        <select class="select2 form-control" name="role_id[]" id="role" multiple>
                            @foreach ($roles as $key => $role)
                            <option @if(in_array($role->name, $roles_in_db))  selected  @endif value="{{ $role->id }}">{{ $role->name }}</option>
                            @endforeach
                        </select>
                    </label>
                </div>
            </div>
            <div class="col-md-5">
                <div>
                    @php
                        $branch_in_db =explode(',',$User->branch_id);
                @endphp
                    <label for="branch">Select your Branch
                        <select class="select2 form-control" name="branch_id[]" id="branch" multiple>
                            @foreach ($branchs as $key => $branch)
                            <option @if(in_array($branch->id, $branch_in_db))  selected  @endif value="{{ $branch->id }}">{{ $branch->name }}</option>
                            @endforeach
                        </select>
                    </label>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label for="password">Password
                        <input type="password" name="password" class="form-control mb-2" placeholder="Enter your password" id="password">

                    </label>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label for="c_password">Confirm password
                        <input type="password" name="c_password" class="form-control mb-2" placeholder="Enter your password" id="c_password">

                    </label>
                </div>
            </div>
        </div>
    </fieldset>
    {{--  end permission information  --}}

    {{--  permission information  --}}
    <fieldset class="border p-2 border-dashed rounded border-success mb-2">
        <legend>Sales</legend>
        <div class="row">

            <div class="col-md-2">
                <div>
                    <label for="status">Status
                        <span class="d-inline-block" tabindex="0" data-toggle="tooltip" data-placement="top" title="Enable to commision calclute your salary">
                            <i class="fas fa-question-circle"></i>
                          </span>

                        <input type="checkbox" checked class="" hidden  name="sales_status"   value="0">
                        <input type="checkbox" class="toggle" @if($User->sales_status == 1) checked @endif  placeholder="Enter App Name" name="sales_status"  id="status" value="1">

                    </label>
                </div>
            </div>

            <div class="col-md-5">
                <div>
                    <label for="sales_commision_persent">Sales Commision Parsent %
                        <input type="text" name="sales_commision_persent" value="{{ $User->sales_commission_present ?? '' }}" class="form-control mb-2" placeholder="Sales Commision %" id="sales_commision_persent">

                    </label>
                </div>
            </div>

        </div>
    </fieldset>
    {{--  end permission information  --}}

    {{--  personal information  --}}
    <fieldset class="border p-2 border-dashed rounded border-success mb-2">
        <legend>Other Information</legend>
        <div class="row">

            <div class="col-md-4">
                <div>
                    <label for="birth">Birth
                        <input type="date" name="birth" value="{{ $User->birth ?? '' }}" class="form-control mb-2" placeholder="Birth of Date" id="birth">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="gender">Gender
                        <select name="gender" class="form-control mb-2 select2" placeholder="gender" id="gender">
                            <option @if($User->gender == 1) selected @endif value="1">Male</option>
                            <option  @if($User->gender == 2) selected @endif value="2">Female</option>
                            <option  @if($User->gender == 3) selected @endif value="3">Trans Gender</option>
                        </select>
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="mariatal_status">Matrial Status
                        <select  name="mariatal_status" class="form-control mb-2 select2" placeholder="mariatal_status" id="mariatal_status">
                            <option @if($User->mariatal_status == 1) selected @endif  value="1">Married</option>
                            <option  @if($User->mariatal_status == 2) selected @endif value="2">Un Married</option>
                        </select>
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="blood_group">Blood Group
                       <input type="text" value="{{ $User->blood_group ?? '' }}" class="form-control mb-2" name="blood_group" id="blood_group" placeholder="Blood Group">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="mobile_number">Mobile Number
                       <input type="tel" value="{{ $User->mobile_number ?? '' }}" class="form-control mb-2" name="mobile_number" id="mobile_number" placeholder="Mobile Number">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="alt_mobile_number">Alternative Mobile Number
                       <input type="tel" value="{{ $User->alt_mobile_number ?? '' }}" class="form-control mb-2" name="alt_mobile_number" id="alt_mobile_number" placeholder="Alternative Mobile Number">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="family_mobile_number">Family Mobile Number
                       <input type="tel" value="{{ $User->family_mobile_number ?? '' }}" class="form-control mb-2" name="family_mobile_number" id="family_mobile_number" placeholder="Family Mobile Number">
                    </label>
                </div>
            </div>
            <div class="col-md-4">

            </div>

            <div class="col-md-6">
                <div>
                    <label for="paresent_address">Paresent Address
                       <textarea type="text" value="{{ $User->paresent_address ?? '' }}"  name="paresent_address" class="form-control mb-2" id="paresent_address" placeholder="Paresent Address"></textarea>
                    </label>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label for="p_paresent_address">Parmanent Address
                       <textarea type="text" value="{{ $User->p_present_address ?? '' }}" name="p_paresent_address" class="form-control mb-2" id="p_paresent_address" placeholder="Parmanent Address"></textarea>
                    </label>
                </div>
            </div>

        </div>
    </fieldset>
    {{--  end personal information  --}}


    {{--  Social information  --}}
    <fieldset class="border p-2 border-dashed rounded border-success mb-2">
        <legend>Social Information</legend>
        <div class="row">

            <div class="col-md-4">
                <div>
                    <label for="facebook">Facebook
                        <input type="text" name="facebook" value="{{ $User->facebook ?? '' }}" class="form-control mb-2" placeholder="Facebook Url" id="facebook">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="twitter">Twitter
                        <input type="text" name="twitter" value="{{ $User->twitter ?? '' }}" class="form-control mb-2" placeholder="Twitter Url" id="twitter">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="youtube">Youtube
                        <input type="text" name="youtube" value="{{ $User->youtube ?? '' }}" class="form-control mb-2" placeholder="Youtube Url" id="youtube">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="linkedin">linkedin
                        <input type="text" name="linkedin" value="{{ $User->linkedin ?? '' }}" class="form-control mb-2" placeholder="linkedin Url" id="linkedin">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="whatsapp">whatsapp
                        <input type="text" name="whatsapp" value="{{ $User->whatsapp ?? '' }}" class="form-control mb-2" placeholder="whatsapp Url" id="whatsapp">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="whatsapp">telegram
                        <input type="text" name="telegram" value="{{ $User->telegram ?? '' }}" class="form-control mb-2" placeholder="telegram Url" id="telegram">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="pintarest">Pintarest
                        <input type="text" name="pintarest"  value="{{ $User->pintarest ?? '' }}" class="form-control mb-2" placeholder="pintarest Url" id="pintarest">
                    </label>
                </div>
            </div>


        </div>
    </fieldset>
    {{--  end personal information  --}}


    {{--  Bank information  --}}
    <fieldset class="border p-2 border-dashed rounded border-success mb-2">
        <legend>Bank and Payment Information</legend>
        <div class="row">

            <div class="col-md-4">
                <div>
                    <label for="account_holder_name">Account Holder Name
                        <input type="text" name="account_holder_name" value="{{ $User->account_holder_name ?? '' }}" class="form-control mb-2" placeholder="Account Holder Name" id="account_holder_name">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="account_no">Account No
                        <span class="d-inline-block" tabindex="0" data-toggle="tooltip"  data-placement="top" title="Bank Account Not / Mobile Account No Like bkash nogad  etc">
                            <i class="fas fa-question-circle"></i>
                          </span>

                        <input type="text" name="account_no"  value="{{ $User->account_no ?? '' }}" class="form-control mb-2" placeholder="Account No" id="account_no">
                    </label>
                </div>
            </div>
            <div class="col-md-4">
                <div>
                    <label for="account_provider">Account Provider Name
                        <span class="d-inline-block" tabindex="0" data-toggle="tooltip" data-placement="top" title="Bank Account Provider Like Sonali Bank PLC / Mobile Account Provider Like bkash nogad  etc">
                            <i class="fas fa-question-circle"></i>
                          </span>

                        <input type="text" name="account_provider"  value="{{ $User->account_provider ?? '' }}" class="form-control mb-2" placeholder="Account Provider Name" id="account_provider">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="account_identifier_code">Bank Identifier Code

                        <input type="text" name="account_identifier_code"  value="{{ $User->account_identifier_code ?? '' }}"  class="form-control mb-2" placeholder="Bank Identifier Code" id="account_identifier_code">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="account_branch">Branch Name

                        <input type="text" name="account_branch"  value="{{ $User->account_branch ?? '' }}" class="form-control mb-2" placeholder="ranch Name" id="account_branch">
                    </label>
                </div>
            </div>

            <div class="col-md-4">
                <div>
                    <label for="account_tax_payer_id">Tax Payer ID

                        <input type="text" name="account_tax_payer_id"  value="{{ $User->account_tax_payer_id ?? '' }}" class="form-control mb-2" placeholder="Tax Payer ID" id="account_tax_payer_id">
                    </label>
                </div>
            </div>



        </div>
    </fieldset>
    {{--  end personal information  --}}


        <div class="d-flex justify-content-end">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>

    </form>

