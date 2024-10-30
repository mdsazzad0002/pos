<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>page Info : </td>
    </tr>


    <tr>
        <td>Title</td>
        <td>{{ $page->name }}</td>
    </tr>
    <tr>
        <td>Short Description</td>
        <td>{{ $page->slug }}</td>
    </tr>
    <tr>
        <td>Home page Status</td>
        <td>{{ $page->homepage ? 'Active' : 'Inactive' }}</td>

    </tr>
    <tr>
        <td>Status</td>
        <td>{{ $page->status ? 'Active' : 'Inactive' }}</td>

    </tr>
    <x-quick.table_action_info :info='$page'/>
</table>
