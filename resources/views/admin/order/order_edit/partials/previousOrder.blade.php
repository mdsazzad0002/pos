@php
if($order->product_json != null){
    $product_data =(json_decode($order->product_json));
}else{
    $product_data =[];
}
@endphp
@foreach ($product_data as $key=> $items )

<tr class="curent_parents_data items{{ $items->id }}">
    <td>
        {{ $items->name }}
        <input type="text" hidden name="productId[]" value="{{ $items->id }}">
    </td>
    <td>
        <input oninput="calclute_inline('.items{{ $items->id }}')" type="number" class="quantaty" name="quantaty[]" value="{{ (int) $items->order_quantity }}">
    </td>
    <td>
        <input disabled oninput="calclute_inline('.items{{ $items->id }}')" type="numberr" class="price" name="price[]" value="{{ $items->selling_price }}">
    </td>
    <td>

        <input disabled value="{{ $items->order_price }}" class="total"/>
    </td>
    <td>
        <div>
            <button type="button" class="btn btn-danger" onclick="this.closest('.curent_parents_data').remove()">X</button>
        </div>
    </td>
</tr>

@endforeach
