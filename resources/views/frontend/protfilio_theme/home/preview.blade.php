

@foreach ($homepagemanage as $items)

    @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])

    @include('layout.frontend_ajuba.partials.css')
    @include('layout.frontend_ajuba.partials.scripts')
@endforeach

