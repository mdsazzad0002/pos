<div>




    <!-- USERS LIST -->
    <div class="card latest_customer">
        <div class="card-header">
          <h3 class="card-title">Latest customer</h3>

          <div class="card-tools">
            <span class="badge badge-danger"><span class="new_cus">{{ $latest_customer }}</span> New Customer</span>
            <button type="button" class="btn btn-tool" data-card-widget="collapse">
              <i class="fas fa-minus"></i>
            </button>
            {{-- <button type="button" class="btn btn-tool" data-card-widget="remove">
              <i class="fas fa-times"></i>
            </button> --}}
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body p-0" wire:poll.{{ $pollInterval }}ms="loadCustomer">
            @if ($customer)
            <ul class="users-list clearfix">

                @foreach ($customer as $key => $items)
                <li>
                    <a data-dialog=" modal-dialog-centered"  onclick="button_ajax(this)" data-title="{{ $items->name }} info" data-href="{{ url('admin/customer') }}/{{ $items->id }}" class="users-list-name" href="javascript:void(0);">
                        <img src="{{ dynamic_asset($items->upload_id) }}" alt="User Image"> <br/>
                        {{ $items->name }} <br/>
                        <span class="users-list-date">{{ $items->created_at->diffForHumans() }}</span>
                    </a>
                </li>
                @endforeach

              </ul>
            @else
                <div class="preloader_body">
                    <div class="spinner"></div>
                    <br>
                    <h3>Please Wait ...</h3>
                </div>
                <div wire:poll.400ms.once="loadCustomer"></div>
            @endif


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





</div>
