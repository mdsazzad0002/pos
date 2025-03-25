<table class="table talbe-bordered border table-striped table-hover">


    <tr>
        <td> Name</td>
        <td>{{ $subScriber->name ?? ''}}</td>
    </tr>
    <tr>
        <td> Email</td>
        <td>{{ $subScriber->email ?? ''}}</td>
    </tr>

   

    <tr>
        <td> Created At</td>
        <td>{{ $subScriber->created_at->format('d-m-Y') ?? ''}}</td>
    </tr>


</table>
