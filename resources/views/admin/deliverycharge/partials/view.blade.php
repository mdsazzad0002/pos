<table class="table talbe-bordered border table-striped table-hover">
   
    <tr>
        <td>Name</td>
        <td>{{ $deliverycharge->name ?? '' }}</td>
    </tr>


    <tr>
        <td>Amount</td>
        <td>{{ $deliverycharge->amount }}</td>
    </tr>

    <tr>
        <td>Creator</td>
        <td>{{ $deliverycharge->user->name ?? ''  }}</td>
    </tr>
    <tr>
        <td>Updater</td>
        <td>{{ $deliverycharge->updater_user->name ?? ''  }}</td>
    </tr>
</table>
