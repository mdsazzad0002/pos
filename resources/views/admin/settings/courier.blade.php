@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', 'Courier Settings')
@section('content')


    <x-summary>
        <div class="row connectedSortable mb-2">
            <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" count="Shipping" title="Shipping Charge"
                    icon="far fa-payment" link="{{ route('admin.deliverycharge.index') }}" sort="sort_3" />
           
        </div>
    </x-summary>


    <div class="row">
        @php
            $payment_credentials = \App\Models\courier\CourierCredential::get();

        @endphp

        @foreach ($payment_credentials as $items)
            <div class="col-md-6 col-lg-">
                <div class="card">
                    <div class="card-header">
                        {{ $items->provider }}
                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.settings.courier-configration.update', $items->id) }}" method="POST"
                            class="form_ajax_submit">
                            @csrf
                            @method('put')
                            @foreach ($items->getAttributes() as $key => $value)
                                @if ($key == 'id' || $value == '' || $key == 'provider')
                                    @continue
                                @elseif($key == 'creator')
                                    @break
                                @endif

                                <div class="form-group mb-2">
                                    <label for="{{ $key . $items->id }}">
                                        {{ Str::replace('_', ' ', Str::title($key)) }}</label>
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

                            {{-- <a target="_blank" href="{{ route('admin.settings.payment-configration.show', $items->id) }}">Test Payment</a> --}}

                        </form>
                    </div>
                </div>
            </div>
        @endforeach
    </div>



@endsection
