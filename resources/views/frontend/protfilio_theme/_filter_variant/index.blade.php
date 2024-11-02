@extends('layouts.frontend.master')
        <!-- Main Sections -->
     @section('content')

             <!-- Title Banner Start -->
             <section class="title-banner">
                <div class="container-fluid">
                    <div class="banner-wrapper">
                        <img src="assets/media/banner/left-image.png" alt="" class="banner-image1">
                        <h1 class="dark-black fw-600">Shop</h1>
                        <img src="assets/media/banner/right-image.png" alt="" class="banner-image2">
                    </div>
                </div>
            </section>
            <!-- Title Banner End -->

            <!-- Featured Product Start -->
            <section class="featured-product-sec py-40 bg-lightest-gray">
                <div class="container-fluid">
                    <div class="row row-gap-3">
                        <div class="col-xl-3">
                            @include('frontend.filter.partials.sidebar')
                        </div>
                        <div class="col-xl-9">
                           @include('frontend.filter.partials.product_decoration_style')
                           @include('frontend.filter.partials.product')
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured Product End -->

           @endsection
