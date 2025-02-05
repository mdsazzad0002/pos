
<!-- Button trigger modal -->
<button type="button" hidden  class="btn btn-primary upload_ajax_modalbtn" data-bs-toggle="modal" data-bs-target="#upload_ajax_modal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="upload_ajax_modal" tabindex="-1" role="dialog" aria-labelledby="upload_ajax_modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header pb-0 pl-0 pt-0">

                    <ul class="nav nav-tabs" id="myTab" role="tablist">

                         <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Upload</button>
                        </li>

                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab"  onclick="load_image_ajax()" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Image</button>
                        </li>


                    </ul>

                    <button type="button" class="close pb-0 pt-4" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>

            </div>

            <div class="modal-body">
                @include('layout.admin.common_file_manager')
            </div>

        </div>
    </div>
</div>

