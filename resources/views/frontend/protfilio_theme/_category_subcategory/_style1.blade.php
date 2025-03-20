@php
    $category_list = \App\Models\Category::where('status', 1)->get();
@endphp


@foreach ($category_list as $category)
    @foreach ($category->subcategories_info as $subcategory)
        <div class="col-md-6 col-lg-4 col-xl-3">

        </div>
    @endforeach
@endforeach