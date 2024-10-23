@extends('frontend.protfilio_theme.layout.master')


@section('content')
@include('frontend.protfilio_theme.home.partials.hero')
@include('frontend.protfilio_theme.home.partials.service')
@include('frontend.protfilio_theme.home.partials.team')
@include('frontend.protfilio_theme.home.partials.client')
@include('frontend.protfilio_theme.home.partials.testimonial')

{{--  @include('frontend.protfilio_theme.home.partials.call_to_action')  --}}
@endsection

