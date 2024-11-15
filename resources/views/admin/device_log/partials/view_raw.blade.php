<table class="table talbe-bordered border table-striped table-hover">
    {{--  Action info  --}}
    <tr>
        <td colspan="2">Login Information : </td>
    </tr>
    <tr>
        <td>
            Device Type
        </td>
        <td>
            {{ $device->device_type ?? '' }}
        </td>
    </tr>
    <tr>
        <td>
            Device IP
        </td>
        <td>
            {{ $device->ip ?? '' }}
        </td>
    </tr>
    <tr>
        <td>
            Updated At
        </td>
        <td>
            {{ $device->updated_at->format('d-M-Y h:i:s A') ?? '' }}
        </td>
    </tr>
    <tr>
        <td>
            Created At
        </td>
        <td>
            {{ $device->created_at->format('d-M-Y h:i:s A') ?? '' }}
        </td>
    </tr>
</table>
