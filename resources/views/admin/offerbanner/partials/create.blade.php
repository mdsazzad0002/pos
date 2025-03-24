<form action="{{ $offerbanner ? route('admin.offerbanner.update', $offerbanner->id) : route('admin.offerbanner.store') }}" method="post" enctype="multipart/form-data">
@csrf

@if($offerbanner)
    @method('put')
@endif
    <div class="form-group mb-2">
        <label class="form-label" for="bannar_type">Style Valiant</label>
        <select class="form-control" name="type" id="type_select_variant">
            <option @if($offerbanner ? ($offerbanner->type == 1) : false) selected  @endif value="1">Feature Card</option>
            <option @if($offerbanner ? ($offerbanner->type == 2) : false) selected  @endif value="2">Full Banner</option>
            <option @if($offerbanner ? ($offerbanner->type == 3) : false) selected  @endif value="3">Countdown</option>
            <option @if($offerbanner ? ($offerbanner->type == 4) : false) selected  @endif value="4">Frontend Popup</option>
        </select>
    </div>

    <div class="form-group mb-2 title_variant" style="display:none">
        <label class="form-label" for="title"></label>
        <input type="text" name="title" class="form-control mb-2" value="{{ $offerbanner ? $offerbanner->title : '' }}" id="title" placeholder="title">
    </div>

    <div class="form-group mb-2 subtitle_variant" style="display:none" >
        <label class="form-label" for="subtitle"></label>
        <input type="text" name="subtitle" class="form-control mb-2" value="{{ $offerbanner ? $offerbanner->subtitle : '' }}" id="subtitle" placeholder="subtitle">
    </div>
    <div class="form-group mb-2 link_variant" style="display:none" >
        <label class="form-label" for="link"></label>
        <input type="text" name="link" class="form-control mb-2" value="{{ $offerbanner ? $offerbanner->link : '' }}" id="link" placeholder="link">
    </div>



    <div class="form-group mb-2 items_2_full" style="display: none">
        <label  type="button" onclick="upload_select(this)"> {{ __('banner.image') }} <br>
            <input type="text" name="image1" value="{{ $offerbanner ?  $offerbanner->image1 : 0}}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($offerbanner ? $offerbanner->image1 : 0) }}" alt="">
        </label>
    </div>


    <div class="form-group mb-2 items_2_full1" style="display:none">
        <label  type="button" onclick="upload_select(this)"> {{ __('banner.image1') }} <br>
            <input type="text" name="image2" value="{{ $offerbanner ? $offerbanner->image2 : 0 }}" id="image" class="form-control mb-2" hidden >
            <img style="max-height: 60px" src="{{ dynamic_asset($offerbanner ? $offerbanner->image2 : 0) }}" alt="">
        </label>
    </div>

    {{-- offerbanner status --}}
    <label for="status">  Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{$offerbanner ? ( $offerbanner->status == 1 ? 'checked' : '' ) : ''   }} id="status" value="1">
    </label>



    <div class="form-group mb-2 items_2_full2" style="display:none">
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

    // data_change($('#type_select_variant'))

    function data_change(thi){
            $('.title_variant').css('display', 'none')
            $('.subtitle_variant').css('display', 'none')
            $('.items_2_full').css('display', 'none')
            $('.items_2_full2').css('display', 'none')
            $('.items_2_full1').css('display', 'none')
            $('.link_variant').css('display', 'none')

        if(thi.value == 1){
            $('.title_variant').css('display', 'block')
            $('.subtitle_variant').css('display', 'block')
            $('.items_2_full2').css('display', 'block')
            $('.items_2_full1').css('display', 'block')
            $('.link_variant').css('display', 'block')
            return;
        }

        if(thi.value == 2){
            $('.title_variant').css('display', 'block')
            $('.subtitle_variant').css('display', 'block')
            $('.items_2_full').css('display', 'block')
            $('.items_2_full2').css('display', 'block')
            $('.items_2_full1').css('display', 'block')
            $('.link_variant').css('display', 'block')
            return;
        }
        if(thi.value == 3){
            $('.title_variant').css('display', 'block')
            $('.items_2_full2').css('display', 'block')
            $('.items_2_full1').css('display', 'block')
            $('.link_variant').css('display', 'block')
            return;
        }

        if(thi.value == 4){
            $('.link_variant').css('display', 'block')
            $('.items_2_full2').css('display', 'block')
            return;
        }
    }

    setTimeout(() => {
         data_change(document.querySelector('#type_select_variant'));
        console.log(document.querySelector('#type_select_variant'))
    }, 700);
</script>
