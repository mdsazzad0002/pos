@php
    /**
     * @param string $items_name
     * @param string $settings_value
     * @param string $items_name optional
     */

    if (!isset($settings_value)) {
        $settings_value = settings($items_name, $key);
    }

@endphp

<label for="{{ $items_name }}">{{ Str::title(Str::replace('_', ' ', $items_name)) }}
    @if(isset($reference))
        <a href="{{ $reference }}" target="_blank">reference</a>
    @endif
</label>
<br />


@if (collect(['image', 'logo', 'icon'])->contains(fn($word) => str_contains($items_name, $word)))
    <div class="">
        <label type="button" onclick="upload_select(this)">
            <input type="text" name="{{ $items_name }}" id="image" class="form-control mb-2" hidden>
            <img style="max-height: 60px" src="{{ $settings_value }}" alt="">
        </label>
    </div>
@elseif(str_contains($items_name, 'color'))
    <input type="color" class="form-control" placeholder="Enter App Name"
        name="multiple_settings[{{ $items_name }}]" id="{{ $items_name }}" value="{{ $settings_value }}">
@elseif(str_contains($items_name, 'text'))
    <textarea class="form-control summernote" name="multiple_settings[{{ $items_name }}]" id="{{ $items_name }}">{{ $settings_value }}</textarea>
@elseif(str_contains($items_name, 'code'))
    <textarea class="form-control" name="multiple_settings[{{ $items_name }}]" id="{{ $items_name }}">{{ $settings_value }}</textarea>

    <script>
        CodeMirror.fromTextArea(document.getElementById("{{ $items_name }}"), {
            mode: "javascript",
            theme: "default",
            lineNumbers: true,
        });
    </script>
@elseif(str_contains($items_name, 'status'))
    <div>

        <input type="checkbox" checked="" class="" hidden=""
            name="multiple_settings[{{ $items_name }}]" value="0">
        <input type="checkbox" class="toggle" @if ($settings_value == 1) checked @endif
            placeholder="Enter App Name" name="multiple_settings[{{ $items_name }}]" id="{{ $items_name }}"
            value="1">

    </div>
@else
    <input type="text" class="form-control" placeholder="Enter App Name"
        name="multiple_settings[{{ $items_name }}]" id="{{ $items_name }}" value="{{ $settings_value }}">
@endif
