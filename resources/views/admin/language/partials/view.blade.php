<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $language->name }}</td>
    </tr>


    <x-quick.table_action_info :info='$language' />
</table>
