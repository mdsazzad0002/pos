<div class="categories-sec py-24">
    <div class="container-fluid">
        <div class="row">
            <div class="categories-wrapper">
                @foreach ($categories as $items)
                    <a href="{{ url('filter') }}?category={{ $items->slug }}" class="category-block">
                        <div class="image-box mb-12">
                            <img class="rounded-circle" src="{{ dynamic_asset($items->upload_id) }}" alt="">
                        </div>
                        <p class="fw-500 mb-4p">{{ $items->name }}</p>
                        <p class="dark-gray">{{ $items->products_count }} Product</p>
                    </a>
                @endforeach
            </div>
        </div>
    </div>
</div>



@push('css')
    <style>
        .categories-wrapper{
            overflow-x: scroll;
            overflow-y: hidden;
            padding: 14px 0;
        }
    </style>
@endpush


