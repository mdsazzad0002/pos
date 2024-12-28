@section('title', __('settings.'.$slug))
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.'.$slug)
    </div>
</x-summary>

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
<div class="">

    @if($key==27)
        <div style="col-md-12">
            <div class="card">
                <div class="card-header">
                    Courier Report
                </div>
                <div class="card-body">
                    <form class="input-group" action="{{ route('tracking') }}">
                        <input value="01590084779" name="phone" type="text" class="form-control" placeholder="Enter your phone number">
                        <button class="btn btn-primary border-top-left-0">See Report</button>
                    </form>

                </div>
            </div>

        </div>
    @endif
</div>
{{ $settings->links() }}
@endsection
