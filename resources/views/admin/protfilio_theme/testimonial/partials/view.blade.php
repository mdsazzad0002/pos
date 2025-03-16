<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>testimonial Info : </td>
    </tr>

    <tr>
        <td>Image</td>
        <td><img  class="img-fluid" src="{{ dynamic_asset($testimonial->upload_id) }}" alt=""></td>
    </tr>
    <tr>
        <td>Title</td>
        <td>{{ $testimonial->name }}</td>
    </tr>
    <tr>
        <td>Designation</td>
        <td>{{ $testimonial->designation }}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>{{ $testimonial->description }}</td>
    </tr>
    <x-quick.table_action_info :info='$testimonial'/>
</table>
