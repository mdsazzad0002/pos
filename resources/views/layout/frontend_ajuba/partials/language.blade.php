{{-- @php
$languages = \App\Models\language\language::where('status', 1)->get();
@endphp


<select name="" id="language_container">
    @foreach ($languages as $items)
    <option class="item dark-black"  {{ session('locale') == $items->id ? 'selected' : '' }} data-href="{{ url('locale/'.$items->id) }}">
            {{ Str::title($items->name) }}

    </option>
    @endforeach
</select>


@push('js')
<script>

    $('#language_container').on('change', function(){
        var selectedOption = $(this).find('option:selected');
                    var href = selectedOption.data('href'); // Use data('href') to get the custom data attribute
                    window.location.href = href;
    })
</script>

@endpush --}}
