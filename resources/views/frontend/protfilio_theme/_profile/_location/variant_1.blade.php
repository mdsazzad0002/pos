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
            <div class="bg-white text-dark">
                Location
            </div>
   
            <div class="col-12">
                <div class="row">
                    <card-header>
                        <h4>Loaction</h4>
                    </card-header>
                    @forelse ( $customer->addressable as $address)

                    <div class="col-6 mt-2">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">Address <span> #1</span></div>
                            <div class="card-body">
                                <table class="table table-bordered table-striped table-hover">
                                    {{-- {{ $customers }} --}}
                                    <tr>
                                        <td>Address :</td>
                                        <td> {{ $address->address }}</td>
                                    </tr>
                                    <tr>
                                        <td>village :</td>
                                        <td> {{ $address->village }}</td>
                                    </tr>
                                    <tr>
                                        <td>post :</td>
                                        <td> {{ $address->post }}</td>
                                    </tr>
                                    <tr>
                                        <td>post_code :</td>
                                        <td> {{ $address->post_code }}</td>
                                    </tr>
                                    <tr>
                                        <td>stay_time :</td>
                                        <td> {{ $address->stay_time }}</td>
                                    </tr>
                                    <tr>
                                        <td>country :</td>
                                        <td> {{ $address->country }}</td>
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
                        <div class="bg-warning rounded shadow p-5 text-center">
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
