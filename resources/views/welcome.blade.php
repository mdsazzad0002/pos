{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', settings('dashboard_title', 10))

{{-- Content Extends  --}}
@section('content')

<!-- Small boxes (Stat box) -->
<div class="row connectedSortable" >

    @can('order read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $order }}" title="Order" icon="far fa-comments" link="{{ route('admin.order.index') }}" sort="sort_1" />
    @endcan

    @can('purchase read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $purchase }}" title="Purchase" icon="far fa-comments" link="{{ route('admin.purchase.index') }}" sort="sort_2" />
    @endcan


    @can('user read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $user }}" title="User" icon="far fa-user" link="{{ route('admin.user.index') }}" sort="sort_3" />
    @endcan


    @can('customer read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $customer }}" title="Customer" icon="far fa-comments" link="{{ route('admin.customer.index') }}" sort="sort_4" />
    @endcan

    @can('brand read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $brand }}" title="Brand" icon="far fa-comments" link="{{ route('admin.brand.index') }}" sort="sort_4" />
    @endcan

    @can('unit read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $unit }}" title="Unit" icon="far fa-comments" link="{{ route('admin.unit.index') }}" sort="sort_4" />
    @endcan

    @can('category read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $category }}" title="category" icon="far fa-comments" link="{{ route('admin.category.index') }}" sort="sort_4" />
    @endcan

    @can('role read')
        <x-dashboard.link_card column="col-lg-3 col-6"  bg="bg-success" count="{{ $role }}" title="role" icon="far fa-comments" link="{{ route('admin.permission.index') }}" sort="sort_4" />
    @endcan




</div>
<!-- /.row -->

@endsection
