{{--  @extends('frontend.protfilio_theme.layout.master')  --}}
@extends('layout.frontend_ajuba.master')


@section('content')



@include('frontend.protfilio_theme._banner_card._bannar_card1')
@foreach ($homepagemanage as $items)

    @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])

@endforeach



@endsection

