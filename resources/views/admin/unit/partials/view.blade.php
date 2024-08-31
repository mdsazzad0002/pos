<table class="table talbe-bordered border table-striped table-hover">

    <tr>
        <td>Name</td>
        <td>{{ $unit->name }}</td>
    </tr>
    <tr>
        <td>Short name</td>
        <td>{{ $unit->sort_name }}</td>
    </tr>
    <tr>
        <td>Decemal</td>
        <td>{{ $unit->decimal == 0 ? 'NO' : 'YES' }}</td>
    </tr>
    @if($unit->sub_items_id != 0)

        <tr>
            <td>1 {{ $unit->name }} =</td>
            <td>{{ $unit->sub_items  }} ({{ $unit->child_items->name }})</td>
        </tr>

    @endif

    <tr>
        <td>Creator</td>
        <td>{{ $unit->user->name ?? ''  }}</td>
    </tr>
</table>
