<div class="card">
    <div class="card-header">SMTP Setting</div>
    <div class="card-body">
        <form action="" id="smtp_ajax_submit" class="form_ajax_submit" method="POST">
            @csrf
            <!-- Laravel CSRF token for protection -->

            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="from_name">From Name:</label>
                        <input type="text" class="form-control" value="{{ $mail_config->from_name }}" id="from_name" name="from_name" required placeholder="Your name or company name">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="smtp_host">SMTP Host:</label>
                        <input type="text" class="form-control" value="{{ $mail_config->smtp_host }}" id="smtp_host" name="smtp_host" required placeholder="e.g., smtp.example.com">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="smtp_port">SMTP Port:</label>
                        <input type="number" class="form-control" id="smtp_port" value="{{ $mail_config->smtp_port }}" name="smtp_port" required placeholder="e.g., 587">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="smtp_username">SMTP Username:</label>
                        <input type="text" class="form-control" value="{{ $mail_config->smtp_username }}" id="smtp_username" name="smtp_username" required placeholder="Your SMTP username">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="smtp_password">SMTP Password:</label>
                        <input type="text" class="form-control" value="{{ $mail_config->smtp_password }}" id="smtp_password" name="smtp_password" required placeholder="Your SMTP password">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="smtp_encryption">Encryption:</label>
                        <select class="form-control" id="smtp_encryption" name="smtp_encryption">
                            <option value="" @if($mail_config->smtp_encryption == "") selected @endif >Select encryption method</option>
                            <option value="tls" @if($mail_config->smtp_encryption == "tls") selected @endif >TLS</option>
                            <option value="ssl" @if($mail_config->smtp_encryption == "ssl") selected @endif >SSL</option>
                            <option value="none" @if($mail_config->smtp_encryption == "none") selected @endif >None</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="from_address">From Address:</label>
                        <input type="email" value="{{ $mail_config->from_address }}" class="form-control" id="from_address" name="from_address" required placeholder="e.g., your_email@example.com">
                    </div>
                </div>
            </div>

            <div>
                <label for="smtp_status" class="d-block">
                    SMTP Status
                </label>
                <input type="checkbox" checked class="" hidden name="status" value="0">
                <input type="checkbox" class="toggle" {{ $mail_config->status == 1 ? 'checked' : '' }} placeholder="Enter App Name" name="status" id="smtp_status" value="1">
            </div>


            <div class="text-right">
                <button type="submit" class="btn btn-primary">Save Configuration</button>
            </div>
        </form>
    </div>
</div>

<br>
<br>

<div class="card">
    <div class="card-body">
        Send a Test Mail
        <br>
        <form action="{{ route('admin.mail.test') }}" class="input-group form_ajax_submit" method="post">
            @csrf
            <input type="email" name="mail" class="form-control" placeholder="Enter email address">
            <button class="btn btn-primary submit">Send</button>
        </form>
    </div>
</div>
