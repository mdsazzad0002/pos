<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>slider Info : </td>
    </tr>

    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($slider->upload_id) }}" alt=""></td>
    </tr>
    <tr>
        <td>Title</td>
        <td>{{ $slider->title }}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>{{ $slider->short_description }}</td>
    </tr>
    <x-quick.table_action_info :info='$slider'/>
</table>
