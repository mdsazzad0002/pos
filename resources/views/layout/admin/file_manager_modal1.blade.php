
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

                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


                        <h3 class="text-center">Drag-and-Drop File Uploader</h3>
                        <label for="file-input" class="d-block" id="drop-area">
                            Drag here to preview
                        </label>
                        <input type="file" id="file-input" multiple hidden required>
                        <div class="row" id="preview-container"></div>


                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div id="image-container" style="  ">

                            </div>
                            <br>
                            <div class="text-center">
                                <button class="btn btn-primary " onclick="load_image_ajax()">
                                    load image
                                </button>
                            </div>
                    </div>

                  </div>




            </div>

        </div>
    </div>
</div>



<script>
    const dropArea = document.getElementById('drop-area');
    const fileInput = document.getElementById('file-input');
    var previewContainer = document.querySelector('#preview-container');
    var imageContainer = document.querySelector('#image-container');

// Utility function to prevent default browser behavior
    function preventDefaults(e) {
        e.preventDefault();
        e.stopPropagation();
    }

    // Preventing default browser behavior when dragging a file over the container
    dropArea.addEventListener('dragover', preventDefaults);
    dropArea.addEventListener('dragenter', preventDefaults);
    dropArea.addEventListener('dragleave', preventDefaults);

    // Handling dropping files into the area
    dropArea.addEventListener('drop', handleDrop);

    // We’ll discuss `handleDrop` function down the road
    function handleDrop(e) {
        e.preventDefault();

        // Getting the list of dragged files
        const files = e.dataTransfer.files;

        // Checking if there are any files
        if (files.length) {
          // Assigning the files to the hidden input from the first step
          fileInput.files = files;

          // Processing the files for previews (next step)
        //   console.log(files)
        //   handleFiles(files);
          file_upload(files);
          dropArea.classList.remove('drag-over');
        }
      }

      fileInput.addEventListener('change', function(e){
        e.preventDefault();
        file_upload(this.files)
        // handleFiles(this.files);
      })


      function file_upload(files){
        // Create a new FormData object
        var formData = new FormData();

        // Append each file to the FormData object
        for (var i = 0; i < files.length; i++) {
            formData.append('files[]', files[i]);
        }
        $.ajax({
            type:'post',
            url:'{{ url('/uploads') }}',
            processData: false,              // Required for FormData
            contentType: false,
            data: formData,
            success:function(data){
                data = JSON.parse(data);
                console.log(data)
                Object.keys(data).forEach(function(id, key){

                    preview_image = format_image_preview(data[id], id)

                    $(previewContainer).prepend(preview_image)
                })
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error('Error uploading files:', textStatus, errorThrown); // Handle errors
            }
        })


      }



dropArea.addEventListener('dragover', () => {
    dropArea.classList.add('drag-over');
  });

  dropArea.addEventListener('dragleave', () => {
    dropArea.classList.remove('drag-over');
  });



  function format_image_preview(src_image, id){
    var src_image = '{{ asset('') }}uploads/'+src_image;
    return `<div  type="button"  class="border"  onclick="select_image(this)">
                <img data-id="${id}" class="img-fluid h-100 " style="object-fit:contain" src="${src_image}"
            </div>`;

  }
  function isValidFileType(file) {
    const allowedTypes = ['image/jpeg', 'image/png','image/webp', 'image/gif'];
    return allowedTypes.includes(file.type);
  }








  var current_id_loaded = 9999999999999;
  function load_image_ajax(){
        $.ajax({
            type:'get',
            url:'{{ url('/uploads/get') }}',
            data: {
                id:current_id_loaded,
            },
            success:function(data){
                data = JSON.parse(data);
                if(data.length ==0){
                    $(imageContainer).append('<div>No Found More Data</div>');
                }
                Object.keys(data).forEach(function(id, key){

                   $(imageContainer).append(format_image_preview(data[id], id))
                   if(id <= parseInt(current_id_loaded)){
                       current_id_loaded = id
                   }


                })
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error('Error uploading files:', textStatus, errorThrown); // Handle errors
            }
        })
    }


</script>




<script>
    var currnet_element_selected = '';
    function upload_select(thi){
        $('#upload_ajax_modal').modal('show');
        currnet_element_selected = thi;
    }

    function select_image(thi){

       //getting image data from upload window
        var img_tag_form_upload_window =  $(thi).find('img');
        var src_img = $(img_tag_form_upload_window).attr('src');
        var img_id = $(img_tag_form_upload_window).data('id');

console.log(currnet_element_selected);
        //setting img info selecting window
       var selected_eleemtn =  $(currnet_element_selected).find('input');
       var selected_eleemtn_img =  $(currnet_element_selected).find('img');
       $(selected_eleemtn).val(img_id)
       selected_eleemtn_img.attr('src',src_img);

       $('#upload_ajax_modal').modal('hide');
    }
</script>
<script>
    function remove_element_image(thi){
        $(thi).parents('.image_items_removeable').remove();
    }
    function add_more_filed_image(){
        var items_image = `<div class="image_items_removeable">
                                 <label type="button" class="multiple" onclick="upload_select(this)">
                                    <input type="text" hidden name="images_multiple[]" id="image" class="form-control mb-2"/>
                                    <img style="max-height: 60px" src="{{ dynamic_asset(0) }}" alt=""/>
                                </label>
                                <span  onclick="remove_element_image(this)">x</span>
                            </div>`;
        $('.items_filed_iamge').append(items_image)
    }
</script>


<style>
    #preview-container,
    #image-container{
        display: grid;
        max-width: 1250px;
        grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
        grid-auto-flow: dense;
        margin: 0 auto;
        justify-content: center;
        grid-gap: 5px;
    }



  #drop-area {
    width: 400px;
    height: 200px;
    margin: 20px auto;
    text-align: center;
    line-height: 200px;
    border: 2px dashed #ccc;
    cursor: pointer;
  }

  #preview-container {
    text-align: center;
  }



  #drop-area.drag-over {
    background-color: #eee;
}




.items_container_image .items_filed_iamge {
    display: flex;
    gap: 7px;
}
.items_container_image .items_filed_iamge input{
    visibility:hidden;
}

.items_container_image .image_items_removeable{
    max-width:70px;
    position:relative;
}


.items_container_image .image_items_removeable span{
    position:absolute;
    top: -5px;
    right: -6px;
    z-index:9;
    background:red;
    width:25px;
    height:25px;
    display:flex;
    align-items:center;
    justify-content:center;
    border-radius:5px

}
.items_container_image .image_items_removeable span:hover{
    opacity: 0.8;
}
.items_container_image .items_container_image {
    display: flex;
    gap: 5px;
    flex-wrap: wrap;
}


.items_container_image .items_filed_iamge {
    display: flex;
    flex-wrap: wrap;
}

.items_container_image button.add_image_filed.btn.btn-primary {
    cursor: pointer;
}



</style>
