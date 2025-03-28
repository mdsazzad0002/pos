<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>service Info : </td>
    </tr>

    <tr>
        <td>Icon</td>
        <td> <i class="{{ $service->icon_class }}"></i></td>
    </tr>
    <tr>
        <td>Title</td>
        <td>{{ $service->title }}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($service->upload_id )}}" style="max-width: 300px" alt=""></td>
    </tr>
    <tr>
        <td>Image BG</td>
        <td><img src="{{ dynamic_asset($service->bg_upload_id )}}" style="max-width: 300px" alt=""></td>
    </tr>
    <tr>
        <td>Short Description</td>
        <td>{{ $service->short_description }}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>{!! $service->description !!}</td>
    </tr>
    <x-quick.table_action_info :info='$service'/>
</table>
