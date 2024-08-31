@section('title', settings('main_setting', 10))
@section('content')
<div class="row">
    @foreach ($settings as $setting)
        <form class="col-md-6 col-xl-4" action="{{ route('setting.store.update') }}" enctype="multipart/form-data">
            <div class="card">

                
            <div class="card-header">
                <h5>
                    {{ Str::title(str_replace('_', ' ', $setting->name)) }}
                </h5>
            </div>



                <div class="card-body">
                    <label for="{{ $setting->name }}">{{ Str::title(str_replace('_', ' ', $setting->name)) }}</label>

                    <input hidden type="text" name="name" id="" value="{{ $setting->name }}">
                    <input hidden type="text" name="key" id="" value="{{ $setting->key }}">


                    @php
                        $url = settings($setting->name, $setting->key);
                    @endphp
                    @if (filter_var( $url, FILTER_VALIDATE_URL))
                    <div class="row">
                        <div class="col-8">
                            <input type="file" class="form-control"  placeholder="Enter App Name" name="value"  id="{{ $setting->name }}">
                        </div>
                        <div class="col-4">
                            <img style="height: 40px" src="{{  $url }}" alt="">
                        </div>
                    </div>
                    <div class="pt-2 d-flex justify-content-end">
                        <button onclick="submit_setting_post(this)" type="button" class="btn btn-primary" >Save</button>
                    </div>
                    @else
                        <input type="text" class="form-control"  placeholder="Enter App Name" name="value"  id="{{ $setting->name }}" value="{{  $url}}">
                        <div class="pt-2 d-flex justify-content-end">
                            <button onclick="submit_setting(this)" type="button" class="btn btn-primary" >Save</button>
                        </div>
                    @endif




                </div>
            </div>

        </form>
    @endforeach

</div>
@endsection

