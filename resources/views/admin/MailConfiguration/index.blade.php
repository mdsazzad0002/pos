{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', settings('MailConfigration', 10))

{{-- Content Extends  --}}
@section('content')



<div class="row">
    <div class=" col-lg-4 col-12">
        <div class="suggession_templateing">
            <div class="card">
                <div class="card-header">
                    Template & Menu
                </div>
                <div class="card-body p-0">
                    <div class="nav  flex-column flex-sm-row flex-lg-column  nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      @include('admin.MailConfiguration._partials_part.menu')
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" col-lg-8 col-12">
        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-smtp" role="tabpanel" aria-labelledby="v-pills-smtp-tab">
                @include('admin.MailConfiguration._partials_part.smtp')
            </div>
            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...</div>
            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>

        </div>
    </div>
</div>



@endsection


