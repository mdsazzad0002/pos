@extends('layout.admin.master')

@section('title', __('settings.'.$slug))
@section('content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/mode/javascript/javascript.min.js"></script>




<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.'.$slug)
    </div>
</x-summary>


<div class="row">

    @foreach ($settings as $setting)
    <div class="col-md-6 col-xl-4">
        @include( 'admin.settings.partials.main-setting', ['slug' => $slug])
    </div>
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
                    <input value="01590084779" name="phone" type="text" class="form-control"
                        placeholder="Enter your phone number">
                    <button class="btn btn-primary border-top-left-0">See Report</button>
                </form>

            </div>
        </div>

    </div>
    @endif
</div>
{{ $settings->links() }}
@endsection