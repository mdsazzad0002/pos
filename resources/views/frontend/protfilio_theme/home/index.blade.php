{{-- @extends('frontend.protfilio_theme.layout.master') --}}
@extends('layout.frontend_ajuba.master')


@section('content')
@include('frontend.protfilio_theme._profile._location.variant_1')

@include('frontend.protfilio_theme._profile._profile.profile_variant_1')


        @foreach ($homepagemanage as $items)

            @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])

        @endforeach



@endsection
