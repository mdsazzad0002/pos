{{--  {{ settings('bkash', 20) }}
{{ settings('bkash_app_key', 20) }}
{{ settings('bkash_private_key', 20) }}


{{ settings('nagad', 20) }}
{{ settings('nagad_app_key', 20) }}
{{ settings('nagad_private_key', 20) }}  --}}
<div class="row">


@foreach ($settings_data_format as $key => $items)
<form class="col-md-6 col-xl-4" action="{{ route('setting.store.update') }}" enctype="multipart/form-data">
    <div class="card">
        <div class="card-header d-flex align-items-center justify-content-between">
            <h5>
                {{ Str::title($key) }}
            </h5>

            <input type="checkbox" checked class="" hidden  name="{{ $key.'_status:'. 8 }}"   value="0">
            <input type="checkbox" class="toggle"  placeholder="{{ Str::title($key.'_status') }}" name="{{ $key.'_status:'. 8 }}" {{ settings($key.'_status', 8) ? 'checked' : '' }} id="preloader_enable" value="1">


        </div>
        <div class="card-body">
            @foreach ($items as $item)
                <label class="mb-1" for="{{ $item->name }}">{{ Str::title( str_replace("_", " ", $item->name)) }}</label>
                @if(str_contains('status', $item->name))
                <input type="checkbox" checked class=" " hidden
                name="{{$item->name.':'. $item->key }}"   value="0">

                <input type="checkbox" class="toggle mb-3"
                 name="{{ settings($item->name.':'. $item->key) }}" {{ settings($item->name, $item->key) ? 'checked' : '' }} id="{{ $item->name }}"
                 value="1">

                 @else
                 <input type="text" class="form-control mb-3"   name="{{ $item->name.':'. $item->key }}"  placeholder="{{  Str::title( str_replace("_", " ", $item->name)) }}" value=" {{ settings($item->name, $item->key)}}" id="{{ $item->name }}">
                @endif


            @endforeach
            <input hidden type="text" name="group" value="group" id="">
            <div class="pt-2 d-flex justify-content-end">
                <button onclick="submit_setting(this)" type="button" class="btn btn-primary" >Save</button>
            </div>
        </div>
    </div>
</form>
@endforeach
</div>

