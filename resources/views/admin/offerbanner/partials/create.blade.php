<form action="{{ $offerbanner ? route('admin.offerbanner.update', $offerbanner->id) : route('admin.offerbanner.store') }}" method="post" enctype="multipart/form-data">
@csrf

@if($offerbanner)
    @method('put')
@endif



    <div class="form-group mb-2">
        <label class="form-label" for="type_of_style">Style Valiant</label>
        <select class="form-control" name="type" id="type_select_variant">
            <option @if($offerbanner ? ($offerbanner->type == 1) : false) selected  @endif value="1">Feature Card</option>
            <option @if($offerbanner ? ($offerbanner->type == 2) : false) selected  @endif value="2">Full Banner</option>
            <option @if($offerbanner ? ($offerbanner->type == 3) : false) selected  @endif value="3">Countdown</option>
        </select>
    </div>

    <div class="form-group mb-2">
        <label class="form-label" for="title"></label>
        <input type="title" name="title" class="form-control mb-2" value="{{ $offerbanner ? $offerbanner->title : '' }}" id="title" placeholder="title">
    </div>

    <div class="form-group mb-2 subtitle_variant" >
        <label class="form-label" for="subtitle"></label>
        <input type="subtitle" name="subtitle" class="form-control mb-2" value="{{ $offerbanner ? $offerbanner->subtitle : '' }}" id="subtitle" placeholder="subtitle">
    </div>



    <div class="form-group mb-2 items_2_full" style="display: none">
        <label  type="button" onclick="upload_select(this)"> {{ __('banner.image') }} <br>
            <input type="text" name="image1" value="{{ $offerbanner ?  $offerbanner->image1 : 0}}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($offerbanner ? $offerbanner->image1 : 0) }}" alt="">
        </label>
    </div>


    <div class="form-group mb-2">
        <label  type="button" onclick="upload_select(this)"> {{ __('banner.image1') }} <br>
            <input type="text" name="image2" value="{{ $offerbanner ? $offerbanner->image2 : 0 }}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($offerbanner ? $offerbanner->image2 : 0) }}" alt="">
        </label>
    </div>



    <div class="form-group mb-2">
        <label  type="button" onclick="upload_select(this)"> {{ __('banner.imagebg') }} <br>
            <input type="text" name="image3" value="{{ $offerbanner ? $offerbanner->image3 : 0 }}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($offerbanner ? $offerbanner->image3 : 0) }}" alt="">
        </label>
    </div>







    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>


<script>
    $('#type_select_variant').on('change', function(e){
        data_change(this);

    });

    data_change($('#type_select_variant'))
    function data_change(thi){
        if(thi.value == 1 || thi.value == 3){
            $('.items_2_full').css('display', 'none')
        }else{
            $('.items_2_full').css('display', 'block')
        }

        if(thi.value == 1 ){
            $('.subtitle_variant').css('display', 'block')

        }else{
            $('.subtitle_variant').css('display', 'none')

        }
    }
</script>
