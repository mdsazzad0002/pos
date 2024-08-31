<table class="table talbe-bordered border table-striped table-hover">
    <tr>

        <td colspan="2" class="text-center"><img src="{{ dynamic_asset($supplier->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Name</td>
        <td>{{ $supplier->name }}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>{{ $supplier->email }}</td>
    </tr>
    <tr>
        <td>Phone</td>
        <td>{{ $supplier->phone }}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>{{ $supplier->location }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $supplier->user->name ?? ''  }}</td>
    </tr>
</table>
