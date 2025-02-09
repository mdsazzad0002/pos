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
                            <div class="card-header d-flex justify-content-between">Address

                                <div class="d-flex gap-1">
                                    <span class="btn btn-primary"> <i class="fa fa-pencil" onclick="editor_toggle(this, '.form{{$address->id}}')" aria-hidden="true"></i>
                                    </span>
                                    <form action="{{route('address.delete', $address->id)}}" method="post">
                                        @csrf
                                        @method('delete')
                                        <button class="btn btn-danger">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>

                            <form class="card-body form{{$address->id}}" method="POST" action="{{route('address.update', $address->id)}}">
                                @csrf
                                @method('put')
                                <table class="table table-bordered table-striped table-hover">
                                    {{-- {{ $customers }} --}}
                                    <tr>
                                        <td>Name :</td>
                                        <td> <input type="text" value="{{ $address->name }}" name="name" class="w-100" disabled ></td>
                                    </tr>
                                    <tr>
                                        <td>Email :</td>
                                        <td> <input type="email" name="email" class="w-100" disabled  value="{{ $address->email }}"/></td>
                                    </tr>
                                    <tr>
                                        <td>Phone :</td>
                                        <td>  <input type="tel" name="phone" class="w-100" disabled  value="{{ $address->phone }}"/></td>
                                    </tr>

                                    <tr>
                                        <td>Address :</td>
                                        <td>  <input type="text" name="address" class="w-100" disabled  value="{{ $address->address }}"/></td>
                                    </tr>
                                    <tr>
                                        <td>Apartment :</td>
                                        <td>  <input type="text" name="address_optional" class="w-100" disabled  value="{{ $address->address_optional }}"/></td>
                                    </tr>
                                    <tr>
                                        <td>District :</td>
                                        <td> <input type="text" name="district" class="w-100" disabled  value="{{ $address->district }}"/></td>
                                    </tr>

                                    <tr>
                                        <td>Post Code :</td>
                                        <td>  <input type="number" name="postal" class="w-100" disabled  value="{{ $address->postal }}"/></td>
                                    </tr>

                                    <tr>
                                        <td>Country :</td>
                                        <td> <input type="text" name="country" class="w-100" disabled  value="{{ $address->country }}"/> </td>
                                    </tr>
                                    <tr>
                                        <td>State :</td>
                                        <td>  <input type="text" name="state" class="w-100" disabled  value="{{ $address->state }}"/></td>
                                    </tr>
                                    <tr>
                                        <td>Updated By :</td>
                                        <td> {{ $address->updated_at?->format('d-M-Y h:i A') }}</td>
                                    </tr>
                                    <tr  class="action_button_edit">
                                        <td>
                                            <button class="btn btn-primary" type="submit">Save</button>
                                        </td>
                                        <td>  <button class="btn btn-danger" type="button" onclick="cancel_edit(this, '.form{{$address->id}}')">Cancel</button></td>
                                    </tr>



                                </table>



                            </form>
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


<script>
    function editor_toggle(thi, id){
        $(id).find('input').removeAttr('disabled');
        $(id).addClass('editing_enabled')
    }
    function cancel_edit(thi, id){
        $(id).find('input').attr('disabled', true);
        $(id).removeClass('editing_enabled')
    }
</script>


<style>
    .action_button_edit{
        display: none;
    }
    .editing_enabled .action_button_edit{
        display: contents;
    }
    </style>

