@if (count($order->courier_info) > 0)
@foreach ($order->courier_info as $items_courier)
    <div class="border p-3">
    <div class="row">
        <div class="col-6">
            Courier : {{ $items_courier?->provider_info?->provider  ?? '' }}
        </div>
        <div class="col-6">
            Courier Consumer Id : {{ $items_courier->consignment_id  ?? '' }}
        </div>
        <div class="col-6">
            Courier Tracking Code : {{ $items_courier->tracking_code  ?? '' }}
        </div>
        <div class="col-6">
            Courier Status : {{ $items_courier->name  ?? '' }}
        </div>
        <div class="col-6">
            Courier Address : {{ $items_courier->address  ?? '' }}
        </div>
        <div class="col-6">
            Courier Phone : {{ $items_courier->phone  ?? '' }}
        </div>
        <div class="col-6">
            Courier Amount : {{ $items_courier->amount  ?? '' }}
        </div>
        <div class="col-6">
            Courier Status : {{ $items_courier->status ?? '' }}
        </div>
        <div class="col-12">
            <button class="btn btn-primary btn-block"
            data-dialog='modal-lg'
            onclick='button_ajax(this)'
            data-target="#ajax_modal_dialog_add"
            data-title='{{ $order->name }} info'
            data-href='{{ route('admin.courier.action', $order) }}?tracking_code={{ $items_courier->tracking_code }}&consignment_id={{ $items_courier->consignment_id }}&status=1&courier_id={{ $items_courier->provider_id }}&order_id={{ $order->id }}'
            >Refresh Courier Status</button>
        </div>
    </div>
@endforeach
@else
<div class="border p-3">
    @php
        $courier = \App\Models\courier\CourierCredential::where('status', 1)->get();
    @endphp

    <div class="row">
        <div class="col-6">
            <select class="form-control" name="courier_id" id="courier_id" onchange="
                
                updateCourierHref(this)
                
                ">
                <option value="0">Select A Courier</option>
                @foreach ($courier as $items)
                    <option value="{{ $items->id }}">{{ $items->provider }}</option>
                @endforeach
            </select>
        </div>
        <div class="col-6">
        <button class='btn btn-primary courier_id_setup'
            data-dialog='modal-lg'
            onclick='button_ajax(this)'
            data-target="#ajax_modal_dialog_add"
            data-title='{{ $order->name }} info'
            data-href='{{ route('admin.courier.action', $order) }}'>
            Process Courier
        </button>
        </div>
        
     
</div>
   <script>
            function updateCourierHref(selectElement) {
              
                let button = document.querySelector('.courier_id_setup');
                let baseUrl = `{{ route('admin.courier.action', $order) }}`;
                button.setAttribute('data-href', `${baseUrl}?courier_id=${selectElement.value}&create_box=1`);

                console.log(button.getAttribute('data-href'))
            }
        </script>
@endif