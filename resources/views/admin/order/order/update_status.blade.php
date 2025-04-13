<form action="{{ route('admin.order.update_status_post', $order->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    <table class="table table-bordered table-hover table-striped">
        @foreach ($order->order_events as $event )
        <tr>
            <th>#ID{{ $order->order_id }}</th>
            <td>{{ $event->status_data->name ?? '' }}</td>
            <td>{{ $event->status_data->note ?? '' }}</td>
            <td>{{ $event->created_at->format('d-F-Y h:i:s A') }}</td>
        </tr>
            
        @endforeach
    </table>
  
    @php
        $latest_status = $order?->latestEventStatus()?->status_data ?? null;
        // dd($latest_status);
        if($latest_status){
            $child_status = $latest_status?->ChildItems() ?? [];
            
        }else{
            $child_status = [];
        }
    @endphp



   
    <div class="form-group mb-2">
        <label for="status">Status</label>
        <select name="status" class="form-control select2" data-model="true" id="status">
            @foreach($child_status as $status)
                <option value="{{ $status->id }}" >{{ $status->name }}</option>
            @endforeach
        </select>
    </div>

        @if ($latest_status)
            @if ($latest_status->qty_status == 1)
            
              @foreach ($order->order_items as $items)
                    <table class="table table-bordered table-hover">
                        <tr>
                            <th>Variant Name</th>
                            <th>Product Quantity</th>
                            <th class="text-center">Stock</th>
                        </tr>
                        <tr>
                            <td>{{ $items->variant_size->name ?? 'No Variant' }}</td>
                            <td>{{ $items->quantity ?? '' }}</td>
                            <td>
                                <input type="checkbox" checked hidden name="stock[{{ $items->id }}]" value="0" id="">
                                <input type="checkbox" class="form-control cursor-pointer" @if($items->status == 1 && $items->status > 2) checked @endif ({{ $items->stock == 1 ? 'checked' : '' }}) name="stock[{{ $items->id }}]" value="1" id="">
                            </td>
                        </tr>
                    </table>
              @endforeach
            @endif
        @endif

    <div class="form-group mb-2">
        <label for="note">Note</label>
        <textarea name="note" class="form-control" id="note" cols="30" rows="10"></textarea>
    </div>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
