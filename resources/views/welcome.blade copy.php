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






<script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-analytics.js";

    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    const firebaseConfig = {
      apiKey: "AIzaSyDqZqQet0viWFo5cjYNgTxF0T0ixFkf6ug",
      authDomain: "test-1ee9d.firebaseapp.com",
      projectId: "test-1ee9d",
      storageBucket: "test-1ee9d.appspot.com",
      messagingSenderId: "855449878632",
      appId: "1:855449878632:web:e801798c7447abe9c0fbdd",
      measurementId: "G-WTSTY1Q4EH"
    };

    const app = initializeApp(firebaseConfig);
    const messaging = getMessaging(app);

    import { getMessaging, getToken, onMessage } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-messaging.js";
    const messaging = getMessaging(app);

    onMessage(messaging, (payload) => {
        console.log('Message received. ', payload);
        // Customize notification here
        const notificationTitle = payload.notification.title;
        const notificationOptions = {
            body: payload.notification.body,
            icon: payload.notification.icon
        };

        new Notification(notificationTitle, notificationOptions);
    });



  </script>


@endsection
