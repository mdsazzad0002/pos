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
</table>
