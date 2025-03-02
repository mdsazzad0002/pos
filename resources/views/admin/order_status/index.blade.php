{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', 'Order Status')

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Order Status
        <div>
          
                @can('order_status create')

                <button class="btn btn-primary btn-sm" onclick="button_ajax(this)" data-dialog="modal-lg modal-dialog-centered" data-title="Add New Order Status"  data-href="{{ route('admin.order_status.create') }}">+ Add New Order Status</button>
                @endcan
          
        </div>
    </div>
    <div class="card-body">

        <table id="users" class="table table-bordered table-striped table-hover"> 
            <thead>
                <th>
                    SI
                </th>
                <th>
                    Name
                </th>
                <th>
                    Action
                </th>
            </thead>
            <tbody></tbody>
                @foreach($order_status as $key => $order_status)
                    <tr>
                        <td>
                            {{ $order_status->id }}
                        </td>
                        <td class="pr-0">
                            <div class="row">
                                <div class="col-5 pr-0">
                                   <div class="bg-success p-2 text-white ">{{ $order_status->name }}  </div> 
                                    Quantaty Manage Status : {{ $order_status->qty_status == 0 ? 'No' : 'Yes' }}  </br>
                                    Items Add Remove Status : {{ $order_status->qty_add_remove == 0 ? 'No' : ($order_status->qty_add_remove == 1 ? 'Add' : 'Remove') }}

                                </div>
                                <div class="col-7 pl-0">
                                    @if ($order_status->under_items != null)
                                        @php
                                            $under_order_items = App\Models\OrderStatus::whereIn('id', json_decode($order_status->under_items))->where('id', '!=', $order_status->id)->get();
                                            
                                        @endphp
        
                                        @foreach ($under_order_items as $item)
                                      
                                            <table class=" bg-success text-white">
                                                <tr>
                                                    <td>
                                                        {{ $item->name }}
                                                    </td>
                                                    <td>
                                                        @can('order_status edit')
                                                             <button class="btn btn-primary btn-sm" onclick="button_ajax(this)" data-title="Edit Order Status" data-dialog="modal-lg modal-dialog-centered" data-href="{{ route('admin.order_status.edit', $item->id) }}">Edit</button>
                                                        @endcan
                                                     </td>

                                                </tr>
                                            </table>
                                                
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                         

                        </td>
                        <td>
                            @can('order_status edit')
                                 <button class="btn btn-primary btn-sm" onclick="button_ajax(this)" data-title="Edit Order Status" data-dialog="modal-lg modal-dialog-centered" data-href="{{ route('admin.order_status.edit', $order_status->id) }}">Edit</button>
                            @endcan
                            @can('order_status delete')
                                 <button class="btn btn-primary btn-sm" onclick="button_ajax(this)" data-title="Delete Order Status" data-href="{{ route('admin.order_status.delete', $order_status->id) }}">Delete</button>
                            @endcan
                        </td>
                    </tr>
                @endforeach

        </table>
    </div>
</div>



@endsection

@push('js')

@endpush
