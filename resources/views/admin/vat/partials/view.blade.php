<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $vat->name }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $vat->amount }} %</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $vat->user->name ?? ''  }}</td>
    </tr>
</table>
