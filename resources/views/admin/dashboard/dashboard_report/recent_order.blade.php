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

        <div class="preloader_body">
            <div class="spinner"></div>
            <br>
            <h3>Please Wait ...</h3>
        </div>

        <div class="table-responsive">
            <table class="table m-0">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Quantaty</th>
                        <th>Status</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody class="order_items_sales">
                    {{-- ajax load --}}
                </tbody>
            </table>
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
<!-- /.card -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        let latest_order = document.querySelector('.latest_order');
        let data_append = latest_order.querySelector('.order_items_sales');
        let preloader = latest_order.querySelector('.preloader_body');
        $.ajax({
            'type': 'get',
            'url': '{{ route('latest_order') }}',
            'data': {

            },
            success: function(response) {
                // response = JSON.parse(response)
                // console.log(response)

                Object.keys(response).forEach(([key, value]) => {
                   // console.log(response[key])
                    let data = `  <tr>
                    <td><a href="">#${response[key].order_id}</a></td>
                    <td>${response[key].customer.name}</td>
                    <td>${response[key].quantity}</td>
                    <td><span class="badge badge-success">${response[key].order_status}</span></td>
                    <td>
                    <div class="sparkbar" data-color="#00a65a" data-height="20">${response[key].price}</div>
                    </td>
                </tr>`;

                    $(data_append).append(data);
                    $(preloader).remove();

                })

            }
        })
    })
</script>
