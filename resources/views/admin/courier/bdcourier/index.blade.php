@php
    $response = json_decode($response);
@endphp
@if ($response)
    @if ($response->status == 'success')
        <table class="table talbe-bordered border table-striped table-hover">
            <tr>
                <td colspan="5">
                    <h5 class="text-center">BD Courier Report of {{ $phone }}</h5>
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td>Total Parcel</td>
                <td>Success Parcel</td>
                <td>Cancelled Parcel</td>
                <td>Success Ratio</td>
            </tr>

            @foreach ($response->courierData as $key => $report)
                <tr>
                    <td><img src="{{ asset('preset/bdcourier/' . $key . '.png') }}" style="width: 100px"
                            alt=""></td>
                    <td>{{ $report->total_parcel }}</td>
                    <td>{{ $report->success_parcel }}</td>
                    <td>{{ $report->cancelled_parcel }}</td>
                    <td>{{ $report->success_ratio }}%</td>
                </tr>
            @endforeach

        </table>
    @else
        <h3>{{ $response->message }}</h3>
    @endif
@else
    <h3 class="text-center">
        No Data Found </br>
        Please check valid phone number
    </h3>
@endif
