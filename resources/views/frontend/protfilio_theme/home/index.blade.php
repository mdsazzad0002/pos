{{-- @extends('frontend.protfilio_theme.layout.master') --}}
@extends('layout.frontend_ajuba.master')


@section('content')



        @foreach ($homepagemanage as $items)

            @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])

        @endforeach



@endsection
