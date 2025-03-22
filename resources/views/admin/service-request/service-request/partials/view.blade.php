<table class="table talbe-bordered border table-striped table-hover">


    <tr>
        <td> Name</td>
        <td>{{ $serviceRequest->name ?? ''}}</td>
    </tr>

    <tr>
        <td> Mobile</td>
        <td>{{ $serviceRequest->mobile ?? ''}}</td>
    </tr>

    <tr>
        <td> Alternative Mobile</td>
        <td>{{ $serviceRequest->alt_mobile ?? ''}}</td>
    </tr>

    <tr>
        <td> Address</td>
        <td>{{ $serviceRequest->address ?? ''}}</td>
    </tr>
    <tr>
        <td> Comment</td>
        <td>{{ $serviceRequest->comment ?? ''}}</td>
    </tr>

    <tr>
        <td> Request Status</td>
        <td>{{ $serviceRequest->status == 1 ? 'Read' : 'Unread'}}</td>
    </tr>

    <tr>
        <td>Product / Service Name</td>
        <td>
            <button class="btn btn-primary " data-dialog=" modal-dialog-centered modal-lg" data-target="#ajax_modal_add_plus" onclick="button_ajax(this)" data-title="{{ $serviceRequest->product_info?->name ?? '' }}  info" data-href="{{ route('admin.product.show', $serviceRequest->product_id) }}">{{ $serviceRequest->product_info?->name ?? ''}}</button>
            </td>
    </tr>
    <tr>
        <td>Service Point</td>
        <td>
            <button class="btn btn-primary " data-dialog=" modal-dialog-centered" data-target="#ajax_modal_dialog_add" onclick="button_ajax(this)" data-title="{{ $serviceRequest->service_point_info?->name ?? '' }}  info" data-href="{{ route('admin.service-request.service-point.show', $serviceRequest->service_point_id) }}">
                {{ $serviceRequest->service_point_info?->name ?? ''}}
            </button>
        </td>
    </tr>

    <tr>
        <td> Created At</td>
        <td>{{ $serviceRequest->created_at->format('d-m-Y') ?? ''}}</td>
    </tr>


</table>
