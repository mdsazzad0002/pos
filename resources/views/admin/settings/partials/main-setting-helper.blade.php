@php
    $key = $key ?? '';
    $items_value = $items_value ?? '';
    $items_key = $items_key ?? 'value';
@endphp

@if (collect(['image', 'logo', 'icon'])->contains(fn($word) => str_contains($key, $word)))

<div class="">
    <label type="button" onclick="upload_select(this)">
        <input type="text" name="{{$items_key}}" id="image" class="form-control mb-2" hidden>
        <img style="max-height: 60px" src="{{  $items_value }}" alt="">
    </label>
</div>

@elseif(str_contains($key, 'color'))

<input type="color" class="form-control" placeholder="Enter App Name" name="{{$items_key}}" id="{{ $key }}" value="{{  $items_value}}">

@elseif(str_contains($key, 'status'))
<div>

    <input type="checkbox" checked="" class="" hidden="" name="{{$items_key}}" value="0">
    <input type="checkbox" class="toggle" @if($items_value == 1) checked   @endif placeholder="Enter App Name" name="{{$items_key}}" id="{{ $key }}" value="1">

</div>
@else

<input type="text" class="form-control" placeholder="Enter App Name" name="{{$items_key}}" id="{{ $key }}" value="{{  $items_value}}">

@endif
