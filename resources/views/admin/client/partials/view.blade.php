<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $client->name }}</td>
    </tr>
    
    <tr>
        <td>Status</td>
        <td>{{ $client->status }}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($client->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Creator</td>
        <td>{{ $client->user->name ?? ''  }}</td>
    </tr>
</table>
