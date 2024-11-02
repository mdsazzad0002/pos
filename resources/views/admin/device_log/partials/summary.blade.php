<div class="card">
    <div class="card-header">
        <!-- Content Wrapper. Contains page content -->
        @include('layout.admin.page-header' )
        <!-- /.content-header -->

    </div>
    <div class="card-body">
       {{ $slot }}
    </div>
</div>
