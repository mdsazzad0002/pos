{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('category', 10))

{{--  Content Extends  --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.category')
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Category Order Management
    </div>
    <div class="card-body"> 
        <div class="order_container">
            @foreach($items as $key => $item)
            <div class="order_items" dragable="true">
                <img class="w-100" src="{{dynamic_asset($item->upload_id)}}"/>
                <div>{{$item->name ?? ''}}</div>
            </div>
            @endforeach
        </div>
    </div>
</div>


<style>
    .order_items{
        user-select:none;
        
    }
</style>
@endsection

@push('js')
<script>

</script>
@endpush
