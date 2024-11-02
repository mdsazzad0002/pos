<section class="featured-product-sec py-40 bg-lightest-gray">
    <div class="container-fluid">
        <div class="row row-gap-3">
            <div class="col-xl-3">
                <a href="shop-grid-2.html" class="main-card text-center"
                    style="background: url('{{ asset('uploads/bg/bg-light.png') }}') no-repeat; background-size: cover;">
                    <h4 class="fw-500 white mb-32">Special Offer</h4>
                    <div class="image mb-32">
                        <img src="{{ asset('uploads/') }}/products/main-image.png" alt="">
                    </div>
                    <h5 class="fw-500 white mb-20 text-center">Aero Control Pro Joysticks</h5>
                    <h5 class="fw-500 white text-center">$120.00</h5>
                </a>
            </div>
            <div class="col-xl-9">
                <div class="top-bar mb-16">
                    <h5>Feature Products</h5>
                    <ul class="nav nav-tabs " id="myTab" role="tablist">

                           <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="all-tab"  data-id="0" data-bs-toggle="tab"
                                    data-bs-target="#all" type="button" role="tab" aria-controls="all"
                                    aria-selected="true">All Products </button>
                            </li>
                            @foreach ($feature_sub_category as $items )
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="{{ $items->slug }}-tab" data-id="{{ $items->id }}" data-bs-toggle="tab"
                                        data-bs-target="#{{ $items->slug }}" type="button" role="tab"
                                        aria-controls="{{ $items->slug }}" aria-selected="false">{{ $items->name }}</button>
                                </li>
                            @endforeach
                    </ul>
                </div>
                <div class="tab-content " id="myTabContent">
                    <div class="tab-pane fade show active" id="all" role="tabpanel"
                        aria-labelledby="all-tab">

                    </div>
                    @foreach ($feature_sub_category as $items )
                        <div class="tab-pane fade" id="{{ $items->slug }}" role="tabpanel"
                            aria-labelledby="laptop-tab">

                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>


@push('script')
<script>
    function feature_product(){
        var i = 0;
        var features_sec =  document.querySelector('.featured-product-sec');
        features_items = features_sec.querySelectorAll('button.nav-link')
        features_items.forEach(element => {
            var id_current_target = element.getAttribute('data-bs-target');


            element.addEventListener('click', function(){
                var id = $(this).data('id');
                $.ajax({
                    type:'get',
                    data:{
                        'id' :id
                    },
                    url:'{{ route('product.feature_view') }}',
                    success: function(data) {
                        document.querySelector(id_current_target).innerHTML = data;
                        quick_view();
                    }
                })
            })
        });
        if(i == 0){
            i++
            features_items[0].click();
        }
    }
    feature_product();

</script>
@endpush
