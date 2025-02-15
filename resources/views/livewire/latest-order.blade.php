<!-- TABLE: LATEST ORDERS -->
  <div class="card latest_order">
    <div class="card-header border-transparent">
        <h3 class="card-title">Latest Orders</h3>

        <div class="card-tools">

            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
            </button>
            {{-- <button type="button" class="btn btn-tool" data-card-widget="remove">
      <i class="fas fa-times"></i>
    </button> --}}
        </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0">

        {{-- <div class="preloader_body">
            <div class="spinner"></div>
            <br>
            <h3>Please Wait ...</h3>
        </div> --}}

        <div class="table-responsive"   >
            @if ($orders)
            <table class="table m-0">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Quantaty</th>
                        <th>Status</th>
                        <th>Price</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody class="order_items_sales"  wire:poll.{{ $pollInterval }}ms="loadData">
                    @foreach ($orders  as $key => $order )
                    <tr>
                        <td>
                            <a  data-dialog="modal-lg modal-dialog-centered" onclick="button_ajax(this)" data-title="Info #ID{{ $order->order_id }}" data-href="{{ url('admin/order') }}/{{ $order->id }}" href="javascript:void(0)">#{{ $order->order_id }}</a></td>
                        <td>{{ $order->customer->name }}</td>
                        <td>{{ $order->quantity }}</td>
                        <td><span class="badge badge-success">{{ $order->order_status }}</span></td>
                        <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20">{{ settings('currency_symbol', 9) }}{{ $order->price }}</div>
                        </td>
                        <td>
                            {{ $order->created_at->diffForHumans() }}
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            @else
           <div class="preloader_body">
                <div class="spinner"></div>
                <br>
                <h3>Please Wait ...</h3>
            </div>
            <div wire:poll.2000ms.once="loadData"></div>
            @endif
        </div>
        <!-- /.table-responsive -->
    </div>
    <!-- /.card-body -->
    <div class="card-footer ">
        <a href="{{ route('admin.order.index') }}" class="btn btn-sm btn-secondary float-right">View All
            Orders</a>
    </div>
    <!-- /.card-footer -->


</div>

