<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $discount->name ?? '' }}</td>
    </tr>
    <tr>
        <td>Type</td>
        <td>{{ $discount->type ? 'Fixed' : 'Percent' }}</td>
    </tr>
    <tr>
        <td>Amount</td>
        <td>{{ $discount->amount }}{{ $discount->type ? 'Taka' : '%' }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $discount->user->name ?? ''  }}</td>
    </tr>
    <tr>
        <td>Updater Info</td>
        <td>{{ $discount->updater->name ?? ''  }}</td>
    </tr>
</table>
