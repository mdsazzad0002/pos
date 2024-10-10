<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $LeadDealStage->name }}</td>
    </tr>

 
    <tr>
        <td>Creator</td>
        <td>{{ $LeadDealStage->user->name ?? ''  }}</td>
    </tr>
    <tr>
        <td>Updated At</td>
        <td>{{ $LeadDealStage->updated_at->format('d-F-Y h:i:s A') ?? ''  }}</td>
    </tr>
    <tr>
        <td>Created At</td>
        <td>{{ $LeadDealStage->created_at->format('d-F-Y h:i:s A') ?? ''  }}</td>
    </tr>
</table>
