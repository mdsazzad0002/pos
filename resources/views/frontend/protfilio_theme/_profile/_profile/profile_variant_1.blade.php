@extends('frontend.protfilio_theme._profile.master')
@section('profile')
    @if(auth()->guard('customer')->user())
        <div class="">
            <div class="items_element_row">
            <div class="items_element">

                        <h2>
                            {{ \App\Models\Order::where('customer_id', Auth::guard('customer')->user()->id)->count() }}
                        </h2>
                        <p>Orders</p>

                </div>

            </div>
        </div>
    @endif
@endsection


@push('css')
<style>
    .items_element_row{
        display:grid;
        padding:10px;
        grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
        gap:5px;
    }
    .items_element {
        box-shadow:0 0 5px #b8b8b8;
        padding:20px;
        text-align:center;
        display:flex;
        align-items:center;
        justify-content:center;
        gap:5px;
        flex-direction:column;
        border-radius:5px
    }
</style>
@endpush
