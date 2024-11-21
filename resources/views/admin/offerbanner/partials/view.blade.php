
<table class="table talbe-bordered border table-striped table-hover">
    {{--  Action info  --}}

    <tr>
        <td>Image Items : </td>
        <td> <img src="{{ dynamic_asset($offerbanner->image1 ?? 0) }}"/> </td>
    </tr>
    @if($offerbanner->type != 1 )
        <tr>
            <td>Image Items : </td>
            <td> <img src="{{ dynamic_asset($offerbanner->image2 ?? 0) }}"/> </td>
        </tr>
    @endif
    <tr>
        <td>Background Image : </td>
        <td> <img src="{{ dynamic_asset($offerbanner->image3 ?? 0) }}"/> </td>
    </tr>
    <tr>
        <td colspan="2">Action Info : </td>
    </tr>
    <x-quick.table_action_info :info='$offerbanner'/>
</table>
