<div>
    <div class="card recent_product">
        <div class="card-header">
          <h3 class="card-title">Recently Added Products</h3>

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
        <div class="card-body p-0" wire:poll.{{ $productInterval }}ms="loadProducts">
            @if ($products)
            <ul class="products-list product-list-in-card pl-2 pr-2">
               @foreach ($products as $key => $product )

               <li class="item">
                   <div class="product-img">
                       <img src="{{ $product->image_url }}" alt="Product Image" class="img-size-50">
                   </div>

                   <div class="product-info">
                       <a data-dialog=" modal-dialog-centered modal-lg"  href="javascript:void(0)" onclick="button_ajax(this)" data-title="{{ $product->name }}" data-href="{{ url('admin/product') }}/{{ $product->id }}" class="product-title"> {{ $product->name }}

                        <span class="badge badge-success float-right">{{ $product->instance_price  }}</span>
                    </a>

                       <span class="product-description">
                          {{ $product->short_description }} ( <i class="fas fa-eye"></i> {{ $product->views }} )
                       </span>
                   </div>
                   </li>
               @endforeach
            </ul>
            @else
                <div class="preloader_body">
                    <div class="spinner"></div>
                    <br>
                    <h3>Please Wait ...</h3>
                </div>
                <div wire:poll.6000ms.once="loadProducts"></div>

            @endif
        </div>
        <!-- /.card-body -->
        <div class="card-footer text-center">
          <a href="{{ route('admin.product.index') }}" class="uppercase">View All Products</a>
        </div>
        <!-- /.card-footer -->
      </div>



</div>
