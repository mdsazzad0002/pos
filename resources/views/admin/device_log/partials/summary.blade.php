<div class="card">
    <div class="card-header">
        <!-- Content Wrapper. Contains page content -->
        @include('layout.admin.page-header' )
        <!-- /.content-header -->

    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>150</h3>

                        <p>New Orders</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-th"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>150</h3>

                        <p>New Orders</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-th"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>150</h3>

                        <p>New Orders</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-th"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            @can('user create')
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3 >+</h3>

                        <p>New Category</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-th"></i>
                    </div>
                    <a href="javascript:void(0)" class="small-box-footer" onclick="button_ajax(this)" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  Category" data-href="{{ route('admin.category.create') }}">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            @endcan

        </div>
    </div>
</div>
