@section('title', settings('setting_status', 10))
@section('content')
<div class="row">
    @foreach ($settings as $setting)
        <form class="col-md-6 col-xl-4" action="{{ route('setting.store.update') }}">
            <div class="card">
                <div class="card-header">
                     <h5>
                        {{ Str::title(str_replace('_', ' ', $setting->name)) }}
                    </h5>
                </div>
                <div class="card-body">
                    <label for="{{ $setting->name }}">{{ Str::title(str_replace('_', ' ', $setting->name)) }}</label><br/>

                    <input hidden type="text" name="name" id="" value="{{ $setting->name }}">
                    <input hidden type="text" name="key" id="" value="{{ $setting->key }}">


                    <input type="checkbox" checked class="" hidden  name="value"   value="0">
                    <input type="checkbox" class="toggle"  placeholder="Enter App Name" name="value" {{ settings($setting->name, $setting->key) ? 'checked' : '' }} id="preloader_enable" value="1">
                    <div class="pt-2 d-flex justify-content-end">
                        <button onclick="submit_setting(this)" type="button" class="btn btn-primary" >Save</button>
                    </div>
                </div>
            </div>
        </form>
        @endforeach

    </div>
@endsection

