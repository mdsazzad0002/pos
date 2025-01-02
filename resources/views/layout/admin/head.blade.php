<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>@yield('title') | {{ settings('app_name_short', 9) }}</title>
<link rel="icon" href="{{ settings('app_fav_image', 9) }}">
<!-- Font Awesome -->
<link rel="stylesheet" href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}">
<!-- Ionicons -->
{{--  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">  --}}
<!-- Tempusdominus Bootstrap 4 -->
{{--  <link rel="stylesheet" href="{{ asset('vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">  --}}
<!-- iCheck -->
<link rel="stylesheet" href="{{ asset('vendor/bootstrap/bootstrap.min.css') }}" >
<!-- JQVMap -->
<link rel="stylesheet" href="{{ asset('vendor/jqvmap/jqvmap.min.css')}}">
<!-- Theme style -->
<link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css')}}">
<!-- overlayScrollbars -->
<link rel="stylesheet" href="{{ asset('vendor/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
<!-- Daterange picker -->
<link rel="stylesheet" href="{{ asset('vendor/daterangepicker/daterangepicker.css')}}">
<!-- summernote -->
<link rel="stylesheet" href="{{ asset('vendor/summernote/summernote-bs4.min.css')}}">
<!-- tostar -->
<link rel="stylesheet" href="{{ asset('vendor/flasher/flasher.min.css') }}">

<link rel="stylesheet" href="{{ asset('vendor/datatables/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{ asset('vendor/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{ asset('vendor/bootstrap-icons/bootstrap-icons.min.css') }}">

<link rel="stylesheet" href="{{ asset('vendor/select2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('vendor/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/dist/css/custom.css') }}">

@stack('css')
<style>


    .brand-link .brand-image {
    margin-top: 0px;
    height: 40px;
    width: 36px;
    object-fit: cover;
}


.input-group{
    flex-wrap: nowrap;
}
.input-group button{
    white-space: nowrap;
}
.selection, span.select2-selection.select2-selection--single{
    height: 100% !important;
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}



.dt-buttons {
    display: flex;
    /* align-items: center; */
    /* text-align: center; */
    justify-content: center;
    margin-bottom:0px !important;

}
.dt-buttons button{
    border:none;
    border:1px solid #9e9e9e;


}
.dt-buttons button:first-child{
    border-top-left-radius:4px;
    border-bottom-left-radius:4px;
}

.dt-buttons button:last-child{
    border-top-right-radius:4px;
    border-bottom-right-radius:4px;
}

.card .inner .overlay{
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}

.items_list_list_mail {
    margin-bottom: 10px;
    display: flex;
    gap: 8px;
}
.items_list_list_mail span{
  background:#6c757d;
    border-radius:5px;
    padding:3px 5px;
    color:white;
    cursor:pointer;
}
.cursor-pointer{
    cursor: pointer;
    user-select: none;
}
.language_container{
    height: 27px;
    margin: auto 0;
}
.btn:has(span.btn_grouped){
    padding:0px 7px 0 0;
    overflow:hidden;
    border:none

}

.btn span.btn_grouped{
    padding:7px 10px;
    margin-right:4px;
    display:inline-block;
    background:#000000ad;
}

.btn:has(span.btn_grouped):hover span.btn_grouped{
        background:#000000c7;
}
</style>
