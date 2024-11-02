<div class="brand-sec">
    <div class="container-fulid">

        <div>
            <h3 class="text-center font-weight-bold mt-4">Our Brands</h3>
        </div>
        <div class="brand-slider">
            @foreach ($brands as $brand)
                <div class="brand-block">
                    <img src="{{ dynamic_asset($brand->upload_id) }}" alt="">
                </div>
            @endforeach
        </div>
    </div>
</div>
