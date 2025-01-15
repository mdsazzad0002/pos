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

                    @forelse ( $customer->order as $order)

                    <div class="col-6 mt-2">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">Order_information <span> #1</span></div>
                            <div class="card-body">

                                {{--     --}}

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

    @endsection
@endif
