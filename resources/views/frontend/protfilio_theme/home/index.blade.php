@extends('layout.frontend_ajuba.master')
@section('title', $homepage->name)

@section('content')



    @foreach ($homepagemanage as $items)
        @include('frontend.protfilio_theme.' . $items->key, ['variant_info' => $items])
    @endforeach

@endsection
