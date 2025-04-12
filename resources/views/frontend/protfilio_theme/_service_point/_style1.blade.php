@php
    if($variant_info->is_details_page){
        $service_list = \App\Models\ServicePoint::where('status', 1)->paginate($variant_info->items_show);
    }else{
        $service_list = \App\Models\ServicePoint::where('status', 1)->limit($variant_info->items_show)->get();
    }
@endphp

<x-frontend_section :info="$variant_info" :items="$service_list" shortbutton="true"  class="_service_request_style1" css="_service_request/_style1.css">
    <br>
    <div class="container-fluid">
        <div class="row">
            @foreach ($service_list as $service)
                <div class="col-md-6 col-lg-4 col-xl-3 mb-3">
                    <div class="card">
                        <div class="card-header p-0">
                            <img src="{{ dynamic_asset($service->upload_id) }}" alt="" class="img-fluid">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"> {{ $service->name }} </h5>
                            <p class="card-text"> {{ $service->location }} </p>
                        </div>
                    </div>
                </div>
            @endforeach

    </div>
</x-frontend_section>

