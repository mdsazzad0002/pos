@extends('frontend.protfilio_theme._profile.master')
@php
    if(!isset($register_page)){
        $register_page = \App\Models\Page::where('status', 1)->where('page_type', 'register')->first();
    }


    $customer = auth()->guard('customer')->user();

    // dd($location)

@endphp

@if(auth()->guard('customer')->user())

    @section('profile')


            <div class="col-12">
                <div class="row">

                    @forelse ( $customer->addressable as $address)

                    <div class="col-6 mt-2">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">Address <span> #1</span></div>
                            <div class="card-body">
                                <table class="table table-bordered table-striped table-hover">
                                    {{-- {{ $customers }} --}}
                                    <tr>
                                        <td>Name :</td>
                                        <td> {{ $address->name }}</td>
                                    </tr>
                                    <tr>
                                        <td>Email :</td>
                                        <td> {{ $address->email }}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone :</td>
                                        <td> {{ $address->phone }}</td>
                                    </tr>

                                    <tr>
                                        <td>Address :</td>
                                        <td> {{ $address->address }}</td>
                                    </tr>
                                    <tr>
                                        <td>Apartment :</td>
                                        <td> {{ $address->address_optional }}</td>
                                    </tr>
                                    <tr>
                                        <td>District :</td>
                                        <td> {{ $address->town }}</td>
                                    </tr>

                                    <tr>
                                        <td>Post Code :</td>
                                        <td> {{ $address->postal }}</td>
                                    </tr>

                                    <tr>
                                        <td>Country :</td>
                                        <td> {{ $address->country }}</td>
                                    </tr>
                                    <tr>
                                        <td>State :</td>
                                        <td> {{ $address->state }}</td>
                                    </tr>
                                    <tr>
                                        <td>updated_at :</td>
                                        <td> {{ $address->updated_at?->format('d-M-Y h:i A') }}</td>
                                    </tr>
                                </table>
                           

                            </div>
                        </div>
                    </div>
                    @empty
                    <div class="col-12">
                        <div class="bg-warning rounded shadow p-4 text-center">
                            <h3>
                                Not found
                            </h3>
                            <br>
                            Location Data
                        </div>
                    </div>
                    @endforelse

                </div>
            </div>
    </div>

    @endsection
@endif
