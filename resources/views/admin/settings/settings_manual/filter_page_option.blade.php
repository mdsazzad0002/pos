@extends('layout.admin.master')

@section('title', 'Filter Page Option')
@section('content')

    <x-summary>
       <div class="row">
            @php
                $filter_page = \App\Models\Page::where('page_type', 'filter')->first();
            @endphp
              <x-dashboard.link_card column="col-lg-3 col-6" count="Visit"  bg="bg-primary"  icon="fas fa-globe" title=" Filter Page" link="{{ url($filter_page->slug) }}" sort="sort_3" />
              <x-dashboard.link_card column="col-lg-3 col-6" count="Manage"  bg="bg-primary"  icon="fas fa-globe" title=" Filter Page" link="{{ route('admin.homePageManage.index') }}?id={{ $filter_page->id }}&url={{ $filter_page->slug }}" sort="sort_3" />
              <x-dashboard.link_card column="col-lg-3 col-6" count="Manage"  bg="bg-primary"  icon="fas fa-globe" title=" Page" link="{{ route('admin.page.index') }}" sort="sort_3" />
       </div>
    </x-summary>
 


    <div class="card">
        <div class="card-header d-flex align-items-center justify-content-between">
            Filter Page Option
        </div>
        <div class="card-body">
            @php

                $data = [
                    // =========================================================================
                    // Whatsapp button
                    ['name' => 'show_filter_by_category_status', 'key' => '80', 'image' => 'filter_page_option/category_wise.png'],
                    ['name' => 'show_filter_by_price_status', 'key' => '80', 'image' => 'filter_page_option/price_wise.png'],
                    ['name' => 'show_filter_by_brand_status', 'key' => '80', 'image' => 'filter_page_option/brand_wise.png'],
                    ['name' => 'show_filter_by_rating_status', 'key' => '80', 'image' => 'filter_page_option/rating_wise.png'],
                    ['name' => 'show_filter_feature_product_status', 'key' => '80', 'image' => 'filter_page_option/feature_wise.png'],
                    ['name' => 'show_filter_offer_product_status', 'key' => '80', 'image' => 'filter_page_option/offer_product_side_bar.png'],
                    ['name' => 'show_filter_weight_product_status', 'key' => '80', 'image' => 'filter_page_option/weight_wise.png'],
                    ['name' => 'service_show_status', 'key' => '80'],
                    ['name' => 'product_show_status', 'key' => '80'],


                    // =========================================================================
                ];
                $data_object =json_decode(json_encode($data));
            @endphp

            <div class="row border py-2 border-dark">
                @foreach ($data_object as $setting)
                    <div class="col-4">
                        @include('admin.settings.partials.main-setting', ['key' => 77])
                    </div>
                @endforeach
            </div>

        </div>
    </div>


    <link rel="stylesheet" href="{{ asset('vendor/glightbox/css/glightbox.min.css') }}">
    <script src="{{ asset('vendor/glightbox/js/glightbox.min.js') }}"></script>

    <script>
          const lightbox = GLightbox({
              
          });
    </script>

@endsection
