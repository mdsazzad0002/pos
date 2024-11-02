{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', settings('dashboard_title', 10))

{{-- Content Extends  --}}
@section('content')

<!-- Small boxes (Stat box) -->
<div class="row connectedSortable" >


    {{--  Here is report Section  --}}
    @include('admin.dashboard._cards.users')
    @include('admin.dashboard._cards.payment')


    {{--  Order Card  --}}
    @can('order read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="orders" title="All Order" icon="fas fa-luggage-cart" link="{{ route('admin.order.index') }}" sort="sort_1" />
    @endcan

    {{--  End Order  --}}

    {{--  Purchause  --}}
    @can('purchase read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary"  items="purchases" title="All Purchase" icon="fas fa-store-alt" link="{{ route('admin.purchase.index') }}" sort="sort_2" />
    @endcan
    {{--  End Purchase  --}}



{{--  Customer  --}}
    @can('customer read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary" items="customers"  title="Customer" icon="far fa-comments" link="{{ route('admin.customer.index') }}" sort="sort_4" />
    @endcan
{{--  End Customer  --}}


{{--  Brand  --}}
    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-primary" items="brands" title="All Brand" icon="far fa-comments" link="{{ route('admin.brand.index') }}" sort="sort_4" />
    @endcan
{{--  End Brand  --}}

{{--  Unit  --}}
    @can('unit read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="units" title="Unit" icon="far fa-comments" link="{{ route('admin.unit.index') }}" sort="sort_4" />
    @endcan
{{--  End Unit  --}}


{{--  Category  --}}
    @can('category read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="categories" title="All category" icon="far fa-comments" link="{{ route('admin.category.index') }}" sort="sort_4" />
    @endcan
{{--  End Category  --}}

{{--  Role  --}}
    @can('role read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" items="roles" title="role" icon="far fa-comments" link="{{ route('admin.permission.index') }}" sort="sort_4" />
    @endcan
    {{--  End Role  --}}




</div>
<!-- /.row -->



<input hidden type="text" value="{{  $fcm->fcm_public_key ?? '' }}" id="notification_dynamic_pubic">
<input  hidden type="text" value="{{  url('/') }}" id="local_url_fcm">
<script src="{{ asset('user_push_notification.js') }}"></script>


@endsection





