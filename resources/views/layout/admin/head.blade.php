<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>@yield('title') | {{ settings('app_name_short', 9) }}</title>
<link rel="icon" href="{{ settings('app_image', 9) }}">
<!-- Font Awesome -->
<link rel="stylesheet" href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}">
<!-- Ionicons -->
{{--  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">  --}}
<!-- Tempusdominus Bootstrap 4 -->
{{--  <link rel="stylesheet" href="{{ asset('vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">  --}}
<!-- iCheck -->
{{--  <link rel="stylesheet" href="{{ asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">  --}}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
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
{{--  <link rel="stylesheet" href="{{ asset('vendor/toastr/toastr.css') }}">  --}}
<link rel="stylesheet" href="{{ asset('vendor/datatables/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{ asset('vendor/select2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('vendor/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/dist/css/custom.css') }}">

@stack('css')
<style>
    .dt-container.dt-empty-footer {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;

}
.dt-container.dt-empty-footer table{
    width: 100% !important;
}
.dt-container.dt-empty-footer{
    overflow: auto;
}

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


@media(max-width:800px){
    .dt-container.dt-empty-footer {
            flex-direction: column;
            align-items: center;
            gap: 5px;

    }



}
{{--  ul.nav.nav-treeview:has(.active){
    display: block;
}  --}}


</style>
