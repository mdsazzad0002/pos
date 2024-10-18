@section('title', settings('main_setting', 10))
@section('content')
<div class="row">

    @foreach ($settings as $setting)
    <form class="col-md-6 col-xl-4 form_ajax_submit" action="{{ route('setting.store.update') }}" enctype="multipart/form-data" method="POST">
        @csrf
        <div class="card">
            <div class="card-header">
                <h5>
                    <label for="{{ $setting->name }}">{{ __($slug.'.'.$setting->name) }}</label>
                </h5>
            </div>

            <div class="card-body">


                <input hidden type="text" name="name" id="" value="{{ $setting->name }}">
                <input hidden type="text" name="key" id="" value="{{ $setting->key }}">


                @php
                $items_value = settings($setting->name, $setting->key);
                @endphp

                @include('admin.settings.partials.main-setting-helper', ['key' => $setting->name, 'items_key'=> 'value', 'items_value' => $items_value])



                <div class="pt-2 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>

            </div>
        </div>

    </form>
    @endforeach
</div>
{{ $settings->links() }}
@endsection
