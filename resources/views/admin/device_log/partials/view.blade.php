

@include('admin.device_log.partials.view_raw')
<table class="table talbe-bordered border table-striped table-hover">
    {{--  Action info  --}}
    <tr>
        <td colspan="2">Action Info : </td>
    </tr>
    <x-quick.table_action_info :info='$device'/>
</table>
