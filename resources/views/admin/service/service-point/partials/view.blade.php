<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $service_point->name }}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>{{ $service_point->location }}</td>
    </tr>

    <tr>
        <td>Status</td>
        <td>{{ $service_point->status ? 'Active' : 'Inactive' }}</td>
    </tr>

    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($service_point->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>

</table>
