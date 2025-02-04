{{-- @extends('frontend.protfilio_theme.layout.master') --}}
@extends('layout.frontend_ajuba.master')
@section('title', $homepage->name)

@section('content')

        @include('frontend.protfilio_theme._filter_variant.partials1.test')
        @include('frontend.protfilio_theme._category_variant._category_style6')
        @include('frontend.protfilio_theme._product_variant._category_wise_product1')
        @include('frontend.protfilio_theme._product_cat_brand_wise._cat_product_sm')
        @include('frontend.protfilio_theme._product_cat_brand_wise._cat_band_wise_product')

        @foreach ($homepagemanage as $items)
            @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])
        @endforeach


        


@endsection
