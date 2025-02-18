{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('category', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Users
       
    </div>
    <div class="card-body">
        <table id="users" class="table table-bordered table-striped table-hover">
            <thead>
             
                <th>
                    Name
                </th>
                <th>
                    Image
                </th>  <th>Stock Info</th>
                <th>
                    Sotck Alert
                </th>

            </thead>
            <tbody>
                @foreach($stock_data as $key => $items)
                <tr>
                    <td>
                        {{$items->name ?? ''}} <br/>
                        <a class="btn btn-warning" href="{{route('admin.product.edit', $items->id)}}">Edit Product</a>
                        <a class="btn btn-warning" href="{{route('admin.supplier.create')}}">Buy Product</a>
                        <a class="btn btn-warning" href="#">History Unser working</a>

                    </td>
                    <td> <img src="{{$items->image_url}}" alt="" style="max-width:80px"></td>
                  
                    <td>
                    @if($items->variant_on == 0)
                       Stock : {{$items->quantity}} <br/>
                       Stock Alert : {{$items->alert_quantity}}
                    @else
                        In Variant
                        
                    @endif
                    </td>
                    <td>
                        @if($items->variant_on == 1)
                            @foreach($items->variant_option_info as $item_key => $variant)
                                <div class="variant_stack">
                                    {{Str::title(Str::replace(':', ' - ',$variant->name))}}
                                    @if($variant->quantity > $variant->alert_quantity)
                                     <span class="badge badge-success">In Stock </span>
                                    @else
                                     <span class="badge badge-danger"> Out of Stock </span>
                                    @endif
                                    <br/>
                                    Stock : {{$variant->quantity}} <br/>
                                    Stock Alert : {{$variant->alert_quantity}}
                                </div>
                            @endforeach
                        @elseif($items->quantity > $items->alert_quantity)
                            <span class="badge badge-success">In Stock </span>
                        @else
                        <span class="badge badge-danger"> Out of Stock </span>
                        @endif
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>


    </div>
    {{$stock_data->links()}}
</div>

<style>
    .variant_stack {
    padding:8px
}

.variant_stack:nth-child(odd) {
    background: #ffffff;
}

td:has(.variant_stack){
    padding:0px
}
</style>

@endsection

