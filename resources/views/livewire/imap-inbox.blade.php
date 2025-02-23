<div>


    <div class="p-3 bg-warning mb-2 d-none" wire:offline.class.remove="d-none">
        Whoops, your device has lost connection. The web page you are viewing is offline.
    </div>


    <!-- Main content -->
       <section class="content" x-data="{ compose_message: false , loading: false}">
        <div class="row">
            <div class="col-md-3">
                <button
                 x-on:click="compose_message = !compose_message" class="btn btn-primary btn-block mb-3">Compose</button>

                <div class="card" >
                    <div class="card-header">
                        <h3 class="card-title">Folders</h3>

                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <ul class="nav nav-pills flex-column">


                                <li  class="nav-item @if($box == 'INBOX') active @endif"  wire:click="changeBox('INBOX')">
                                    <a href="javascript:void(0)" class="nav-link">
                                        <i class="fas fa-inbox"></i> Inbox
                                        <span class="badge bg-primary float-right">{{$unread_message}}</span>
                                    </a>
                                </li>

                            <li class="nav-item @if ($box == 'Sent') active @endif" wire:click="changeBox('Sent')">
                                <a href="javascript:void(0)" class="nav-link">
                                    <i class="far fa-envelope"></i> Sent
                                </a>
                            </li>
                            <li class="nav-item @if ($box == 'Drafts') active @endif" wire:click="changeBox('Drafts')">
                                <a href="javascript:void(0)" class="nav-link">
                                    <i class="far fa-file-alt"></i> Drafts
                                </a>
                            </li>
                            <li class="nav-item @if ($box == 'Junk') active @endif" wire:click="changeBox('Junk')">
                                <a href="javascript:void(0)" class="nav-link">
                                    <i class="fas fa-filter"></i> Junk
                                    <span class="badge bg-warning float-right">65</span>
                                </a>
                            </li>
                            <li class="nav-item @if ($box == 'Trash') active @endif" wire:click="changeBox('Trash')">
                                <a href="javascript:void(0)" class="nav-link">
                                    <i class="far fa-trash-alt"></i> Trash
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Labels</h3>

                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="far fa-circle text-danger"></i>
                                    Important
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="far fa-circle text-warning"></i> Promotions
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="far fa-circle text-primary"></i>
                                    Social
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
                @include('livewire.imap_includes.compose_data')

                @if ($active_message)
                    @include('livewire.imap_includes.message_read')
                @else
                    @include('livewire.imap_includes.message_box')
                @endif


                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>

