{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('category', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Stock Management
       
    </div>
    <div class="card-body">
        <table id="users" class="table table-bordered table-striped table-hover">
            <thead>
                <th>
                    Actions
                 </th>
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
                        <div class="dropdown">
                            <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="productActions" data-toggle="dropdown" aria-expanded="false">
                                Actions
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="productActions">
                                <li>
                                    <a class="dropdown-item text-warning" href="{{route('admin.product.edit', $items->id)}}">Edit Product</a>
                                </li>
                                <li>
                                    <a class="dropdown-item text-primary" href="{{route('admin.purchase.create')}}">Buy Product</a>
                                </li>
                                <li>
                                    <a class="dropdown-item text-danger" href="#">History Unser working</a>
                                </li>
                                <li>
                                    <a class='dropdown-item text-primary' 
                                         href="javascript:void(0)"
                                        data-target="#ajax_modal_dialog_add"
                                        data-dialog='modal-dialog-scrollable modal-xl'  
                                        onclick='button_ajax(this)' 
                                        data-title='Purchase History of `{{  $items->name }}`'
                                        data-href='{{ route('admin.product.purchase_history_by_product', $items->id) }}'>View Purchse Histoy</a>
                                </li>
                               
                            </ul>
                        </div>
                    </td>
                    <td>
                        {{$items->name ?? ''}} 

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
    <div class="mx-auto my-2">
        {{$stock_data->links()}}
    </div>
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

