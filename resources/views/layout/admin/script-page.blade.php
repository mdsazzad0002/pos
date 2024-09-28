
<!-- jQuery -->
<script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{ asset('vendor/jquery-ui/jquery-ui.min.js') }}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- ChartJS -->
<script src="{{ asset('vendor/chart.js/Chart.min.js')}}"></script>
<!-- Sparkline -->
<script src="{{ asset('vendor/sparklines/sparkline.js')}}"></script>
<!-- JQVMap -->
<script src="{{ asset('vendor/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{ asset('vendor/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
<!-- jQuery Knob Chart -->
<script src="{{ asset('vendor/jquery-knob/jquery.knob.min.js')}}"></script>
<!-- daterangepicker -->
<script src="{{ asset('vendor/moment/moment.min.js')}}"></script>
<script src="{{ asset('vendor/daterangepicker/daterangepicker.js')}}"></script>
<!-- Tempusdominus Bootstrap 4 -->
{{--  <script src="{{ asset('vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>  --}}
<!-- Summernote -->
<script src="{{ asset('vendor/summernote/summernote-bs4.min.js')}}"></script>
<!-- flasher -->
<script src="{{ asset('vendor/flasher/flasher.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{ asset('vendor/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>



<script src="{{ asset('vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
<script src="{{ asset('vendor/jszip/jszip.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.flash.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.print.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.html5.min.js') }}"></script>



<script src="{{ asset('vendor/select2/js/select2.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('assets/dist/js/adminlte.js')}}"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{ asset('assets/dist/js/pages/dashboard.js')}}"></script>


<script>

    var current_url = '{{ url()->current() }}';
    var link_alldata = document.querySelectorAll('.nav-item .nav-link');
    link_alldata.forEach(function(element){
        if(element.href == current_url){
            $(element).addClass('active');
        }
    })
        if($('.active').parents('.nav-item')){
            $('.active').parents('.nav-item').addClass('active');
        }
        if($('.active').parents('.nav.nav-treeview')){
            $('.active').parents('.nav.nav-treeview').parents('.nav-item.active').addClass('menu-is-opening menu-open');
            $('.active').parents('.nav.nav-treeview').parents('.nav-item.active').find('a.nav-link:not(.nav-treeview a.nav-link)').addClass('active');
        }

</script>
