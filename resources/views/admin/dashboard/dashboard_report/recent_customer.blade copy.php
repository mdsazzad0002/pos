

    <!-- USERS LIST -->
    <div class="card latest_customer">
      <div class="card-header">
        <h3 class="card-title">Latest customer</h3>

        <div class="card-tools">
          <span class="badge badge-danger"><span class="new_cus">0</span> New Customer</span>
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

        <ul class="users-list clearfix">

          {{-- ajax load --}}

        </ul>
        <!-- /.users-list -->
      </div>
      <!-- /.card-body -->
      <div class="card-footer text-center">
        <a href="{{ route('admin.customer.index') }}">View All Users</a>
      </div>
      <!-- /.card-footer -->
    </div>
    <!--/.card -->

  <!-- /.col -->
<!-- /.card -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        let latest_customer = document.querySelector('.latest_customer');
        let data_append = latest_customer.querySelector('.users-list');
        let preloader = latest_customer.querySelector('.preloader_body');
        let new_cus = latest_customer.querySelector('.new_cus');
        $.ajax({
            'type': 'get',
            'url': '{{ route('latest_customer') }}',
            'data': {

            },
            success: function(response) {
                // response = JSON.parse(response)
                console.log(response)

                Object.keys(response['customer']).forEach(([key, value]) => {
                    console.log(response[key])
                    let data = `  <li>
                        <img src="${response['customer'][key].upload_image}" alt="User Image">
                        <a data-dialog=" modal-dialog-centered"  onclick="button_ajax(this)" data-title="${response['customer'][key].name} info" data-href="{{ url('admin/customer') }}/${response['customer'][key].id}" class="users-list-name" href="#">${response['customer'][key].name}</a>
                        <span class="users-list-date">${response['customer'][key].time_ago}</span>
                    </li>`;

                    $(data_append).append(data);
                    $(preloader).remove();

                })
                new_cus.innerHTML = response['count'];


            }
        })
    })
</script>

