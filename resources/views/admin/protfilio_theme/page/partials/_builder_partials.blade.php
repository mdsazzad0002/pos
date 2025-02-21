
<form action="{{ route('admin.homePageManage.destroy', $item->id) }}" class="delete_items" method="post">
    @method('delete')
    @csrf
    <button class='btn btn-danger rounded rounded-circle ml-auto close_button_section' ><i class="fa fa-trash" aria-hidden="true"></i></button>
</form>


<div class="card">
    <div class="card-header" id="headingOne{{ $item->id }}">
        <h2 class="mb-0">
            <button class="btn btn-link btn-block text-left collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne{{ $item->id }}" aria-expanded="true" aria-controls="collapseOne{{ $item->id }}">
                {{ $item->title }}

                ( Design ID: <span class="text-danger">#{{ $item->key }}</span>)

            </button>

            <button class="btn btn-warning" onclick="window.parent.document.querySelector('#Varinatfilter').value='{{ $item->key}}'"   title="Click to filter">
                <i class="fas fa-pencil-alt" ></i>
            </button>
            
            @if(config('app.env') == 'local')
                <button class="btn btn-warning" onclick="window.parent.copyToClipboard('{{ str_replace('.','/',$item->key) }}')"   title="Click to Copy for dev only"><i class="fas fa-copy" ></i></button>
            @endif
        </h2>
    </div>

    <div id="collapseOne{{ $item->id }}" class="collapse" aria-labelledby="headingOne{{ $item->id }}" data-parent=".accordion">
        <div class="card-body">



            <form class="form_ajax_submit" action="{{ route('admin.homePageManage.update',  $item->id ) }}" method="POST">
                @csrf
                @method('put')
                <!-- Include CSRF token for security -->


                @if($item->HasExists('title_manage_status'))
                    <div class="row   py-1" style="background: #86ebfd">
                        <div class="col-md-9">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input type="text" class="form-control" id="title" name="title" value="{{ $item->title }}">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label for="title_status">Status <br />
                                <input type="checkbox" checked class="" hidden name="title_status" value="0">
                                <input type="checkbox" class="toggle" {{ $item->title_status == 1 ? 'checked' : '' }}  placeholder="Title Status" name="title_status" id="title_status" value="1">
                            </label>
                        </div>
                    </div>
                @endif




                @if($item->HasExists('sub_title_manage_status'))
                <div class="row py-1" style="background: #f1f1f1">
                    <div class="col-md-9">
                        <div class="form-group">
                            <label for="sub_title">Sub Title</label>
                            <input type="text" class="form-control" id="sub_title" name="sub_title" value="{{ $item->sub_title }}">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="sub_title_status">Status <br />
                            <input type="checkbox" checked class="" hidden name="sub_title_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->sub_title_status == 1 ? 'checked' : '' }}  placeholder="Sub Title Status" name="sub_title_status" id="sub_title_status" value="1">
                        </label>
                    </div>
                </div>
                @endif


                @if($item->HasExists('title_manage_status') || $item->HasExists('sub_title_manage_status'))
                {{-- Title preset --}}
                <div class="py-1 row" style="background: #e0f1c3">
                    <div class="col-6">
                        <select name="title_style" onchange="change_title_style(this)" class="form-control" data-class=".title_style_img{{ $item->id }}">
                            <option @if($item->title_style == 'title_style_0') selected  @endif value="title_style_0">Default</option>
                            <option @if($item->title_style == 'title_style_1') selected  @endif value="title_style_1">Title style 1</option>
                            <option @if($item->title_style == 'title_style_2') selected  @endif value="title_style_2">Title style 2</option>
                            <option @if($item->title_style == 'title_style_3') selected  @endif value="title_style_3">Title style 3</option>
                            <option @if($item->title_style == 'title_style_4') selected  @endif value="title_style_4">Title style 4</option>
                            <option @if($item->title_style == 'title_style_5') selected  @endif value="title_style_5">Title style 5</option>
                            <option @if($item->title_style == 'title_style_6') selected  @endif value="title_style_6">Title style 6</option>
                        </select>
                    </div>
                    <div class="col-6">
                        <img class="title_style_img{{ $item->id }}" src="{{ asset('uploads/preset/title/'.$item->title_style.'.png') }}" alt="">
                    </div>
                </div>
                @endif
                {{-- // Title preset --}}


                @if($item->HasExists('short_read_more_manage_status'))
                <div class="row  py-1" style="background: #f1d9c3">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="short_read_more">Short Read More</label>
                            <input type="text" class="form-control" id="short_read_more" name="short_read_more" value="{{ $item->short_read_more }}" required>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="short_read_more_page_url">Short Read More Url</label>
                            <input type="text" class="form-control" id="short_read_more_page_url" name="short_read_more_page_url" value="{{ $item->short_read_more_page_url }}" >
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="short_read_more_status">Status<br />
                            <input type="checkbox" checked class="" hidden name="short_read_more_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->short_read_more_status == 1 ? 'checked' : '' }}  placeholder="Sub Title Status" name="short_read_more_status" id="short_read_more_status" value="1">
                        </label>
                    </div>
                </div>
                 @endif


                 @if($item->HasExists('view_all_manage_status'))
                <div class="row  py-1" style="background: #a8cef1">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="view_all">View All</label>
                            <input type="text" class="form-control" id="view_all" name="view_all" value="{{ $item->view_all ?? '#' }}" required>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="view_all_page_url">Details Page Url</label>
                            <input type="text" class="form-control" id="view_all_page_url" name="view_all_page_url" value="{{ $item->view_all_page_url ?? '#' }}" >
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="view_all_status">Status<br />
                            <input type="checkbox" checked class="" hidden name="view_all_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->view_all_status == 1 ? 'checked' : '' }}  placeholder="Sub Title Status" name="view_all_status" id="view_all_status" value="1">
                        </label>
                    </div>
                </div>
                @endif



                @if($item->HasExists('items_manage_status'))
                <div class="row  py-1" style="background: #c3f1eb">
                    @if($item->HasExists('items_per_row_status'))
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="items_per_row">Items Per Row</label>
                                <input type="number" class="form-control" id="items_per_row" name="items_per_row" value="{{ $item->items_per_row }}" >
                            </div>
                        </div>
                    @endif
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="items_show">Items Show</label>
                            <input type="number" class="form-control" id="items_show" name="items_show" value="{{ $item->items_show }}" >
                        </div>
                    </div>

                    @if($item->HasExists('is_details_page_manage_status'))
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label for="is_details_page"> Is Details Page <br />
                            <input type="checkbox" checked  class="" hidden name="is_details_page" value="0">
                            <input type="checkbox" class="toggle" {{ $item->is_details_page == 1 ? 'checked' : '' }}  placeholder="page is_details_page" name="is_details_page" id="is_details_page" value="1">
                        </label>
                    </div>
                    @endif
                @endif

                </div>

                @if($item->HasExists('background_manage_status'))
                <div class="row  py-1" style="background: #c3c6f1">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group" onclick="window.parent.upload_select(this)">
                            <label for="background d-block">Background (  On)</label> <br>
                            <input hidden type="text" class="form-control" id="background" name="background" value="{{ $item->background }}">
                            <img style="max-height: 60px" src="{{  dynamic_asset($item->background) }}" alt="">

                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label for="background_color">Background Color (OFF)</label>
                            <input type="color" class="form-control" id="background_color" name="background_color" value="{{ $item->background_color }}">
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label for="background_type"> Background Color <span class="text-danger"> On = Background Image, Off = Background Color </span> <br />
                            <input type="checkbox"  class="" checked hidden name="background_type" value="0">

                            <input type="checkbox" class="toggle" {{ $item->background_type == 1 ? 'checked' : '' }}  placeholder="page Status" name="background_type" id="background_type" value="1">
                        </label>
                    </div>

                </div>
                @endif



                @if($item->HasExists('upload_manage_status'))
                <div class="row  py-1" style="background: #f1c3ed">
                    <div class="col-md-6 ">
                        <div class="form-group" onclick="window.parent.upload_select(this)">
                            <label for="background d-block" id="upload_id1">Left Side Image</label> <br>
                            <input hidden type="text" class="form-control" id="upload_id1" name="upload_id1" value="{{ $item->upload_id1 }}">
                            <img style="max-height: 60px" src="{{  dynamic_asset($item->upload_id1) }}" alt="">
                        </div>
                    </div>
                    <div class="col-md-6 ">
                        <div class="form-group" onclick="window.parent.upload_select(this)">
                            <label for="background d-block" id="upload_id2">Right Side Image</label> <br>
                            <input hidden type="text" class="form-control" id="upload_id2" name="upload_id2" value="{{ $item->upload_id2 }}">
                            <img style="max-height: 60px" src="{{  dynamic_asset($item->upload_id2) }}" alt="">
                        </div>
                    </div>

                </div>
                @endif





                @if($item->HasExists('category_manage_status'))
                <div class="row  py-1" style="background: #ecc3f1">
                    <div class="col-md-6 ">
                      <select class="form-control" name="category">
                          @foreach($categories_items as $category)
                            <option value="{{ $category->id }}" {{ $item->category == $category->id ? 'selected' : '' }} > {{ $category->name }} </option>
                          @endforeach
                      </select>
                    </div>

                </div>
                @endif

                @if($item->HasExists('upload_manage_id3_status'))
                <div class="row  py-1" style="background: #ecc3f1">
                    <div class="col-md-6 ">
                        <div class="form-group" onclick="window.parent.upload_select(this)">
                            <label for="background d-block" id="upload_id3">Right Side Image</label> <br>
                            <input hidden type="text" class="form-control" id="upload_id3" name="upload_id3" value="{{ $item->upload_id3 }}">
                            <img style="max-height: 60px" src="{{  dynamic_asset($item->upload_id3) }}" alt="">
                        </div>
                    </div>

                </div>
                @endif


                <div class="row py-1" style="background: #c3f1e7">
                    <div class="col-md-6">
                        <label for="status"> Page Status <br />
                            <input type="checkbox" checked class="" hidden name="status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->status == 1 ? 'checked' : '' }}  placeholder="page Status" name="status" id="status" value="1">
                        </label>
                    </div>

                </div>
                <div class="row py-1" style="background: #c3f1e7">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary btn-block w-100">Save Change</button>
                    </div>
                </div>

            </form>


        </div>
    </div>
</div>


