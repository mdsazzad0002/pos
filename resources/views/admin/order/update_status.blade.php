<form action="{{ route('admin.order.update_status_post', $order->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    <table class="table table-bordered table-hover table-striped">
        @foreach ($order->order_events as $event )
        <tr>
            <th>#ID{{ $order->order_id }}</th>
            <td>{{ $event->status_data->name }}</td>
            <td>{{ $event->status_data->note }}</td>
            <td>{{ $event->created_at->format('d-F-Y h:i:s A') }}</td>
        </tr>
            
        @endforeach
    </table>
  

    <div class="form-group mb-2">
        <label for="status">Status</label>
        <select name="status" class="form-control select2" data-model="true" id="status">
            @foreach($statuses as $status)
                <option value="{{ $status->id }}" >{{ $status->name }}</option>
            @endforeach
        </select>
    </div>

    <div class="form-group mb-2">
        <label for="note">Note</label>
        <textarea name="note" class="form-control" id="note" cols="30" rows="10"></textarea>
    </div>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
