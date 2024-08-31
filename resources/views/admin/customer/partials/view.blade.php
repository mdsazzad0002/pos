<table class="table talbe-bordered border table-striped table-hover">
    <tr>

        <td colspan="2" class="text-center"><img src="{{ dynamic_asset($customer->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Name</td>
        <td>{{ $customer->name }}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>{{ $customer->email }}</td>
    </tr>
    <tr>
        <td>Phone</td>
        <td>{{ $customer->phone }}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>{{ $customer->location }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $customer->user->name ?? ''  }}</td>
    </tr>
</table>
