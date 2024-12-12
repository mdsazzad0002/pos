@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', __('setting.payment-settings'))
@section('content')


<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.payment')
    </div>
</x-summary>


<div class="row">


    @foreach ($payment_credentials as $items)

    <div class="col-md-6 col-lg-">
        <div class="card">
            <div class="card-header">
                {{ __('settings.'.$items->provider) }}
            </div>
            <div class="card-body">
                <form action="{{ route('admin.settings.courier-configration.update', $items->id) }}" method="POST" class="form_ajax_submit">
                    @csrf
                    @method('put')
                    @foreach ($items->getAttributes() as $key => $value)

                        @if($key == 'id' || $value == '' || $key == 'provider')
                        @continue
                        @elseif($key == 'creator')
                        @break
                        @endif

                        <div class="form-group mb-2">
                            <label for="{{ $key.$items->id }}"> {{ __('settings.'.$key) }}</label>
                            @include('admin.settings.partials.main-setting-helper', ['key' => $key.$items->id, 'items_key'=> $key, 'items_value' => $value])
                        </div>
                    @endforeach

                    <div class="form-group mt-2">
                        <button class="btn btn-success" type="submit">Save</button>
                    </div>

                    {{-- <a target="_blank" href="{{ route('admin.settings.payment-configration.show', $items->id) }}">Test Payment</a> --}}

                </form>
            </div>
        </div>
    </div>


    @endforeach
</div>



@endsection
