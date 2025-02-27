<table class="table table-border table-striped table-hover">
    <thead>
        <tr>
            <th>Variant Name</th>
            <th>Unit</th>
            <th>Quantity</th>
            <th> Price</th>
            <th> Total</th>
            <th>Buying Date</th>
            <th>Supplier</th>
            <th>Entry</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($product_purchase as $items)
            <tr>
                <td>{{ $items->variant?->name ?? 'No Variant' }}</td>
                <td>{{ $items->unit?->name ?? 'Not Found'  }}</td>
                <td>{{ $items->quantity ?? 'Not Found' }}</td>
                <td>{{ $items->price }}</td>
                <td>{{ $items->total }}</td>
                <td>{{ $items->buying_date  }}</td>
                <td>{{ $items->supplier?->name ?? 'Not Found' }}</td>
                <td>{{ $items->user->name ?? 'Not Found'  }}</td>
            </tr>
        @endforeach
    </tbody>
</table>

{{ $product_purchase->links() }}