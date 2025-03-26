
<!-- Button trigger modal -->
<button type="button" hidden  class="btn btn-primary upload_ajax_modalbtn" data-toggle="modal" data-target="#upload_ajax_modal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="upload_ajax_modal" tabindex="-1" role="dialog" aria-labelledby="upload_ajax_modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header pb-0 pl-0 pt-0">

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                         <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Upload</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab"  onclick="load_image_ajax()" data-toggle="tab" data-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Image</button>
                        </li>

                    </ul>
                <button type="button" class="close pb-0 pt-4" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                </button>

            </div>
            <div class="modal-body">

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <div class="p-2 converter bg-secondary rounded">
                        <label for="converter_enabled" class="d-flex align-items-center gap-3">
                            <input type="checkbox" name="converter_enabled" class="form-check converter_enabled " id="converter_enabled">
                            Enabled to Resize 
                        </label>
                     
                        <div class="row">
                            <div class="col-4">
                                <label for="resize-width">Resize Width:</label> <br>
                                <input type="number" id="resize-width" name="resize-width" placeholder="Width" min="1" max="5000" class="form-control">
                            </div>
                            <div class="col-4">
                                <label for="resize-height">Resize Height:</label> <br>
                                <input type="number" id="resize-height" name="resize-height" placeholder="Height" min="1" max="5000" class="form-control">
                            </div>
                            <div class="col-4">
                                <label for="quality">Quality (1-100):</label> <br>
                                <input type="number" class="form-control" id="quality" name="quality" value="100" min="1" max="100">
                            </div>
                        </div>
                    </div>


                    <label for="file-input" class="d-block" id="drop-area">
                        Drag here to upload. Supported formats:</br>
                         png, jpg, jpeg, gif, webp, mmp, avif
                        <br/>
                        <div class="text-center">
                            <span class="btn btn-primary">Browse...  Multiple Files Support</span>
                        </div>
                    </label>
                    <input type="file" id="file-input" multiple hidden required accept="image/png, image/jpeg, image/gif, image/webp, image/mmp, image/avif">
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

      function generateUniqueFileName(originalName) {
        const timestamp = Date.now(); // Current timestamp
        const randomString = Math.random().toString(36).substring(2, 8); // Random string
        const fileExtension = originalName.substring(originalName.lastIndexOf('.')) || ''; // Extract file extension
        const baseName = originalName.substring(0, originalName.lastIndexOf('.')) || originalName; // Extract base name

        return `${baseName}_${timestamp}_${randomString}${fileExtension}`;
    }





    const CHUNK_SIZE = 0.2 * 1024 * 1024; // 200KB
    const MAX_RETRIES = 3; // Maximum retry attempts
      async function file_upload(files) {

        for(let j =0; j <files.length; j++){
            let preview_image =  `<div  type="button"  class="border progress_${j}">
                <div class="text-center">
                    <i class="fas fa-spinner fa-pulse"></i>
                </div>
                <div> Please wait</div>
                <div class="progress">

                     <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"> 0%</div>
                    </div>
                </div>
            </div>`;
            $(previewContainer).prepend(preview_image)
        }

        for (let i = 0; i < files.length; i++) {
            const file = files[i];
            if (!file) continue;
            const uniqueFileName = generateUniqueFileName(file.name);

            const totalChunks = Math.ceil(file.size / CHUNK_SIZE);
            let uploadedChunks = 0;

            for (let chunkIndex = 0; chunkIndex < totalChunks; chunkIndex++) {
                const start = chunkIndex * CHUNK_SIZE;
                const end = Math.min(start + CHUNK_SIZE, file.size);
                const chunk = file.slice(start, end);

                let retryCount = 0;
                let success = false;

                while (retryCount < MAX_RETRIES && !success) {
                    try {
                        await uploadChunk(chunk, uniqueFileName, chunkIndex, totalChunks, file.size, i);
                        success = true;
                        uploadedChunks++;
                    } catch (error) {
                        retryCount++;
                        console.error(
                            `Error uploading chunk ${chunkIndex + 1}: ${error.message}. Retrying (${retryCount}/${MAX_RETRIES})`
                        );
                    }
                }

                if (!success) {
                    console.error(`Failed to upload chunk ${chunkIndex + 1} after ${MAX_RETRIES} attempts.`);
                    alert(`Upload failed for file: ${file.name}.`);
                    return;
                }

                const progress = Math.floor((uploadedChunks / totalChunks) * 100);
                console.log(`Progress: ${progress}%`);
                $(`.progress_${i} .progress`).html(`
                     <div class="progress-bar progress-bar-striped" role="progressbar" style="width: ${progress}%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">${progress}%</div>`)
                // Optionally update a progress bar or UI element here
            }



            {{--  alert(`File ${file.name} uploaded successfully!`);  --}}
            {{--  format_image_preview(uniqueFileName)  --}}

        }
    }



        async function uploadChunk(chunk, fileName, chunkIndex, totalChunks, size, current_key) {
            let converter_enabled = $('input[name="converter_enabled"]').is(':checked') ? 'convert_eanabled' : 'no';
            let quality = $('input[name="quality"]').val();
            let resize_width = $('input[name="resize-width"]').val();
            let resize_height = $('input[name="resize-height"]').val();


            const formData = new FormData();
            formData.append('file', chunk);
            formData.append('fileName', fileName);
            formData.append('chunkIndex', chunkIndex);
            formData.append('totalChunks', totalChunks);
            formData.append('file_size', size);
            formData.append('converter_enabled', converter_enabled);
            formData.append('quality', quality);
            formData.append('resize_width', resize_width);
            formData.append('resize_height', resize_height);

            const response = await fetch('{{ url('uploads/post') }}', {
                method: 'POST',
                body: formData,
            });

            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }

            {{--  when uploaded complete check  --}}
            const data = await response.json();
            if(data.complete){
                preview_image = format_image_preview(data.name, data.id)
                $(`.progress_${current_key}`).html(`${preview_image}`)
                $(`.progress_${current_key}`).removeClass(`progress_${current_key}`)
            }
            {{--  end checking  --}}

        }






dropArea.addEventListener('dragover', () => {
    dropArea.classList.add('drag-over');
  });

  dropArea.addEventListener('dragleave', () => {
    dropArea.classList.remove('drag-over');
  });



  function format_image_preview(src_image, id){

    var src_image = '{{ asset('') }}uploads/'+src_image;

    // Check the file extension to determine if it's a video
    const videoExtensions = ['mp4', 'webm', 'ogg'];
    const imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
    const extension = src_image.split('.').pop().toLowerCase();

    if (videoExtensions.includes(extension)) {


        return `<div  type="button"  class="border"  onclick="select_image(this)">
            <img hidden data-id="${id}" class="img-fluid h-100 " style="object-fit:contain" src="${src_image}"/>
             <video   class="img-fluid " style="width:100%;height:100%;object-fit:contain"
                        style="object-fit:contain;"
                        src="${src_image}"
                        preload="metadata">
                    </video>
        </div>`;
    } else if (imageExtensions.includes(extension)) {
        {{--  console.log('image')  --}}
        return `<div  type="button"  class="border"  onclick="select_image(this)">
                    <img data-id="${id}" class="img-fluid h-100 " style="object-fit:contain" src="${src_image}"
                </div>`;
    }

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
    var p_w_image =  '';
    var p_h_image = '';
    function upload_select(thi, width = null, height =null){
        $('#upload_ajax_modal').modal('show');
        currnet_element_selected = thi;
        p_w_image = width ? width : '';
        p_h_image = height ? height : '';
        $("#upload_ajax_modal").find('input[name="resize-width"]').val(p_w_image);
        $("#upload_ajax_modal").find('input[name="resize-height"]').val(p_h_image);
    }

    function select_image(thi){

       //getting image data from upload window
        var img_tag_form_upload_window =  $(thi).find('img');
        var src_img = $(img_tag_form_upload_window).attr('src');
        var img_id = $(img_tag_form_upload_window).data('id');


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
    function add_more_filed_image(width = null, height = null){
        var items_image = `<div class="image_items_removeable">
                                 <label type="button" class="multiple" onclick="upload_select(this, ${width}, ${height})">
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
        height: 258px;
        margin: 20px auto;
        text-align: center;
        line-height: 43px;
        border: 2px dashed #ccc;
        cursor: pointer;
        display: flex !important;
        align-items: center;
        justify-content: center;
        flex-direction: column;
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

#preview-container i.fas.fa-spinner.fa-pulse {
    font-size: 23px;
    margin-top: 10px;
}
#preview-container .progress {
    margin: 5px;
}
</style>
