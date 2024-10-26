<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>footerlinkheading Info : </td>
    </tr>

    <tr>
        <td>Title</td>
        <td>{{ $footerlinkheading->title }}</td>
    </tr>

    <x-quick.table_action_info :info='$footerlinkheading'/>
</table>
