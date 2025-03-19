
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

<!-- daterangepicker -->
<script src="{{ asset('vendor/moment/moment.min.js')}}"></script>
<script src="{{ asset('vendor/daterangepicker/daterangepicker.js')}}"></script>
<script src="{{ asset('vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.js')}}"></script>

<script src="{{ asset('vendor/summernote/summernote.js')}}"></script>


<!-- flasher -->
<script src="{{ asset('vendor/flasher/flasher.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{ asset('vendor/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>



<script src="{{ asset('vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
<script src="{{ asset('vendor/jszip/jszip.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.print.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.flash.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('vendor/datatables-buttons/js/buttons.html5.min.js') }}"></script>



<script src="{{ asset('vendor/select2/js/select2.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('assets/dist/js/adminlte.js')}}"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{ asset('assets/dist/js/pages/dashboard.js')}}"></script>


<script>
function ActiveMenuCenter() {
    var container = document.querySelector('.sidebar .os-viewport');

    // Check if the container exists before proceeding
    if (container) {
        var activeItems = container.querySelectorAll('a.active');

        // Proceed only if activeItems is not empty
        if (activeItems.length > 0) {
            var activeItem = activeItems[activeItems.length - 1];

            var containerRect = container.getBoundingClientRect();
            var activeItemRect = activeItem.getBoundingClientRect();
            var scrollTop = activeItem.offsetTop - (containerRect.height / 2) + (activeItemRect.height / 2);
            container.scrollTop = scrollTop;
        }
    } else {
       // console.error('Container element not found');
    }
}


    // Scroll to the active item on load


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
        document.addEventListener('DOMContentLoaded', () => {
            setTimeout(function(){
                ActiveMenuCenter();
            },800)
        });


        function generateSlugMake(thi, target) {
            var text = thi.value;

            let output = text
                .toLowerCase()                  // Convert to lowercase
                .trim()                          // Trim spaces
                .replace(/[^a-z0-9\s-]/g, '')    // Remove special characters
                .replace(/\s+/g, '-')            // Replace spaces with dashes
                .replace(/-+/g, '-');            // Remove multiple dashes


            document.querySelector(target).value = output;

        }


        function copyToClipboard(text) {
            if (navigator.clipboard) {
                // Modern approach using Clipboard API
                navigator.clipboard.writeText(text).then(() => {
                    console.log('Text copied to clipboard');
                    flasher.success('Text copied to clipboard');
                }).catch(err => {
                    console.error('Failed to copy text: ', err);
                    flasher.error('Failed to copy text: ' + err);
                });
            } else {
                // Fallback for older browsers
                const textarea = document.createElement('textarea');
                textarea.value = text;
                document.body.appendChild(textarea);
                textarea.select();
                textarea.setSelectionRange(0, textarea.value.length); // For mobile compatibility

                try {
                    document.execCommand('copy');
                    console.log('Text copied to clipboard');
                    flasher.success('Text copied to clipboard');
                } catch (err) {
                    console.error('Failed to copy text: ', err);
                    flasher.error('Failed to copy text: ' + err);
                }

                document.body.removeChild(textarea); // Cleanup
            }
        }

       // for datatable format
        var database_dom_format = "<'row'<'col-lg-3 text-center text-lg-left mb-2'l><'col-lg-5 text-center mb-2'B><'col-lg-4 text-center text-lg-right mb-2'f>><'row'<'col-sm-12 overflow-auto'tr>><'row mt-2'<'col-sm-6'i><'col-sm-6 text-center text-md-right d-md-flex justify-content-md-end'p>>";
</script>
