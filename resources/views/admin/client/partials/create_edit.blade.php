<form action="{{ $client ?  route('admin.client.update', $client->id) : route('admin.client.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @if ($client)
        @method('put')
    @endif

    <div class="mb-2">
        <label for="client_name">client Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $client ? $client->name : '' }}" placeholder="Enter your name">
    </div>


    <div class="col-lg-6">
        <label  type="button" onclick="upload_select(this)"> Image <br>
            <input type="text" name="image" id="image" value="{{ $client ? $client->upload_id : 0 }}" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset( $client ? $client->upload_id : 0 ) }}" alt="">
        </label>
    </div>
    
    <label for="status"> client Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$client ? ( $client->status == 1 ? 'checked' : '' ) : ''   }} id="status" value="1">
    </label>


    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
