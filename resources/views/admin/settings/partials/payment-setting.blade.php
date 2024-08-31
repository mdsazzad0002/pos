@section('title', settings('payment_setting', 10))
@section('content')
<div class="card">
    <div class="card-header">
        {{ settings('payment_setting', 10) }}
    </div>
    <div class="card-body">
        <div class='ajax_filter d-flex align-items-center justify-content-start mb-3 gap-3'>
            <input type="search" class="form-control filter" placeholder="Enter your keywords"/>
            <select class="form-control perpage_view">
                <option>10</option>
                <option>20</option>
                <option>50</option>
                <option>100</option>
                <option>500</option>
            </select>
        </div>
        <div class="ajax_table">
            @include('admin.settings.partials.helper.payment-setting-helper')
        </div>
    </div>

</div>
@endsection
@push('js')
    @include('layout.admin.ajax_paginate')
@endpush

