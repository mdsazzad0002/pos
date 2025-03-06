
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
            data-dialog='modal-lg modal-dialog-centered'
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
