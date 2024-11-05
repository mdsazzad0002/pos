<div class="top-bar mb-16">
    <h5>{{ $title_data }}</h5>
    <ul class="nav nav-tabs " id="myTab-{{ Str::slug($title_data) }}" role="tablist">

           <li class="nav-item" role="presentation">
                <button class="nav-link active" id="all-tab"  data-id="0" data-bs-toggle="tab"
                    data-bs-target="#all-{{ Str::slug($title_data) }}" type="button" role="tab" aria-controls="all"
                    aria-selected="true">All Products </button>
            </li>
            @foreach ($category as $key => $items )
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="{{ $items->slug }}-tab" data-id="{{ $items->id }}" data-bs-toggle="tab"
                        data-bs-target="#{{ $items->slug }}-{{ Str::slug($title_data) }}" type="button" role="tab"
                        aria-controls="{{ $items->slug }}" aria-selected="false">{{ $items->name }}</button>
                </li>
            @endforeach
    </ul>
</div>
<div class="tab-content " id="myTabContent-{{ Str::slug($title_data) }}">
    <div class="tab-pane fade show active" id="all-{{ Str::slug($title_data) }}" role="tabpanel"
        aria-labelledby="all-tab">

    </div>
    @foreach ($category as $items )
        <div class="tab-pane fade" id="{{ $items->slug }}-{{ Str::slug($title_data) }}" role="tabpanel"
            aria-labelledby="laptop-tab">

        </div>
    @endforeach

</div>
