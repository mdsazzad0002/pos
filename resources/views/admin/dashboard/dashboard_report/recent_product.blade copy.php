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
    <div class="card-body p-0">

        {{-- <div class="preloader_body">
            <div class="spinner"></div>
            <br>
            <h3>Please Wait ...</h3>
        </div> --}}
      <ul class="products-list product-list-in-card pl-2 pr-2">
        {{-- ajax --}}
      </ul>
    </div>
    <!-- /.card-body -->
    <div class="card-footer text-center">
      <a href="{{ route('admin.product.index') }}" class="uppercase">View All Products</a>
    </div>
    <!-- /.card-footer -->
  </div>


<script>
    document.addEventListener('DOMContentLoaded', function() {
        let recent_product = document.querySelector('.recent_product');
        let data_append = recent_product.querySelector('.products-list');
        let preloader = recent_product.querySelector('.preloader_body');
        $.ajax({
            'type': 'get',
            'url': '{{ route('recent_product') }}',
            'data': {

            },
            success: function(response) {
                // response = JSON.parse(response)
                // console.log(response)

                Object.keys(response).forEach(([key, value]) => {
                   // console.log(response[key])
                    let data = `
                <li class="item">
                    <div class="product-img">
                        <img src="${response[key].image_url}" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                        <a data-dialog=" modal-dialog-centered modal-lg"  href="javascript:void(0)" onclick="button_ajax(this)" data-title="${response[key].name}" data-href="{{ url('admin/product') }}/${response[key].id}" class="product-title"> ${response[key].name}
                        <span class="badge badge-success float-right">${response[key].instance_price}</span></a>
                        <span class="product-description">
                            ${response[key].short_description}
                        </span>
                    </div>
                    </li>
                `;

                    $(data_append).append(data);
                    $(preloader).remove();

                })

            }
        })
    })
</script>
