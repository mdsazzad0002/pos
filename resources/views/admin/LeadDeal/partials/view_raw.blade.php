<table class="table talbe-bordered border table-striped table-hover">
    <tr colspan="2">
        <td>Deal Info : </td>
    </tr>
    <tr>
        <td>Note</td>
        <td>{{ $LeadDeal->note }}</td>
    </tr>
    <tr>
        <td>Amount</td>
        <td>{{ $LeadDeal->amount }}</td>
    </tr>
    <tr>
        <td>Stage</td>
        <td>{{ $LeadDeal->stage->name }}</td>
    </tr>
    <tr>
        <td>Date</td>
        <td>{{ $LeadDeal->date }}</td>
    </tr>

    <x-quick.table_action_info :info='$LeadDeal'/>
</table>
