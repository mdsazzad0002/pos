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
    import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-analytics.js";
    import { getMessaging, getToken } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-messaging.js";

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
    const analytics = getAnalytics(app);
    const messaging = getMessaging(app);

    // Register the service worker
    if ('serviceWorker' in navigator) {
        navigator.serviceWorker.register('/firebase-messaging-sw.js').then((registration) => {
            console.log('Service Worker registered with scope:', registration.scope);
        }).catch((error) => {
            console.error('Service Worker registration failed:', error);
        });
    }

    // Request notification permission and get the token
    Notification.requestPermission().then((permission) => {
        if (permission === 'granted') {
            console.log("Notification permission granted.");
            return getToken(messaging);
        } else {
            console.error("Unable to get permission to notify.");
        }
    }).then((token) => {
        if (token) {
            console.log("FCM Token:", token);
            // Send this token to your server for further processing
        }
    }).catch((err) => {
        console.error("Error retrieving token.", err);
    });
</script>


{{--
<script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-analytics.js";



    // Your web app's Firebase configuration
    const firebaseConfig = {
        apiKey: "AIzaSyDqZqQet0viWFo5cjYNgTxF0T0ixFkf6ug",
        authDomain: "test-1ee9d.firebaseapp.com",
        projectId: "test-1ee9d",
        storageBucket: "test-1ee9d.appspot.com",
        messagingSenderId: "855449878632",
        appId: "1:855449878632:web:e801798c7447abe9c0fbdd",
        measurementId: "G-WTSTY1Q4EH"
    };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);




    import {
        // ...
        // Make sure to import getToken()
        getToken,
      } from "https://www.gstatic.com/firebasejs/10.12.0/firebase-messaging.js";
    const messaging = getMessaging(app);

    const checkIfTokenIsNotGeneratedBefore = () =>
    !window.localStorage.getItem("fcm_token");

    if (checkIfTokenIsNotGeneratedBefore()) {
        await requestPermission(messaging);
      }







</script>  --}}

@endsection
