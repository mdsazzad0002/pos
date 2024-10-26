<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>footerlinksubheading Info : </td>
    </tr>

    <tr>
        <td>Icon</td>
        <td> <i class="{{ $footerlinksubheading->icon_class }}"></i></td>
    </tr>
    <tr>
        <td>Title</td>
        <td>{{ $footerlinksubheading->title }}</td>
    </tr>
    <tr>
        <td>Short Description</td>
        <td>{{ $footerlinksubheading->short_description }}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>{!! $footerlinksubheading->description !!}</td>
    </tr>
    <x-quick.table_action_info :info='$footerlinksubheading'/>
</table>
