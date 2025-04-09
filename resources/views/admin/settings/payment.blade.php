@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', 'Payment Settings')
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
                        {{ Str::title(Str::replace('_', ' ', $items->provider)) }}
                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.settings.payment-configration.update', $items->id) }}" method="POST"
                            class="form_ajax_submit">
                            @csrf
                            @method('put')

                            @foreach ($items->getAttributes() as $key => $value)

                                @if ($key == 'id' || $value == '' || $key == 'provider')
                                    @continue
                                @elseif($key == 'charge')
                                    @break
                                @endif

                                <div class="form-group mb-2">
                                    <label for="{{ $key . $items->id }}">
                                        {{ Str::title(Str::replace('_', ' ', $key)) }}
                                    </label>
                                    @include('admin.settings.partials.main-setting-helper', [
                                        'items_name' => $key,
                                        'key' => 'settings_value' . $key,
                                        'settings_value' => $value,
                                    ])
                                </div>
                            @endforeach

                            <div class="form-group mt-2">
                                <button class="btn btn-success" type="submit">Save</button>
                            </div>

                            <a target="_blank"
                                href="{{ route('admin.settings.payment-configration.show', $items->id) }}">Test Payment</a>

                        </form>
                    </div>
                </div>
            </div>
        @endforeach
    </div>



@endsection
