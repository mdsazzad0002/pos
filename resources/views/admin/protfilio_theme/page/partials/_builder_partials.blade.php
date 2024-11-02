<button class='btn btn-danger rounded rounded-circle ml-auto' data-title='{{ $item->title }}' onclick='button_ajax(this)' data-href='{{ route('admin.homePageManage.delete', $item->id) }}'><i class="fa fa-trash" aria-hidden="true"></i></button>


<div class="card">
    <div class="card-header" id="headingOne{{ $item->id }}">
        <h2 class="mb-0">
            <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseOne{{ $item->id }}" aria-expanded="true" aria-controls="collapseOne{{ $item->id }}">
                {{ $item->title }}

                ( DeasignID: <span class="text-danger">#{{ $item->key }}</span>)

            </button>
        </h2>
    </div>

    <div id="collapseOne{{ $item->id }}" class="collapse" aria-labelledby="headingOne{{ $item->id }}" data-parent=".accordion">
        <div class="card-body">



            <form class="form_ajax_submit" action="{{ route('admin.homePageManage.update',  $item->id ) }}" method="POST">
                @csrf
                @method('put')
                <!-- Include CSRF token for security -->


                <div class="row">
                    <div class="col-md-9">
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" id="title" name="title" value="{{ $item->title }}">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="title_status"> Title Status <br />
                            <input type="checkbox" checked class="" hidden name="title_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->title_status == 1 ? 'checked' : '' }} checked placeholder="Title Status" name="title_status" id="title_status" value="1">
                        </label>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-9">
                        <div class="form-group">
                            <label for="sub_title">Sub Title</label>
                            <input type="text" class="form-control" id="sub_title" name="sub_title" value="{{ $item->sub_title }}">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="sub_title_status"> Sub Title Status <br />
                            <input type="checkbox" checked class="" hidden name="sub_title_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->sub_title_status == 1 ? 'checked' : '' }} checked placeholder="Sub Title Status" name="sub_title_status" id="sub_title_status" value="1">
                        </label>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="short_read_more">Short Read More</label>
                            <input type="text" class="form-control" id="short_read_more" name="short_read_more" value="{{ $item->short_read_more }}" required>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="short_read_more_page_url">short_read_more_page_url</label>
                            <input type="text" class="form-control" id="short_read_more_page_url" name="short_read_more_page_url" value="{{ $item->short_read_more_page_url }}" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="short_read_more_status">short_read_more_status<br />
                            <input type="checkbox" checked class="" hidden name="short_read_more_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->short_read_more_status == 1 ? 'checked' : '' }} checked placeholder="Sub Title Status" name="short_read_more_status" id="short_read_more_status" value="1">
                        </label>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="view_all">View All</label>
                            <input type="text" class="form-control" id="view_all" name="view_all" value="{{ $item->view_all }}" required>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="view_all_page_url">view_all_page_url</label>
                            <input type="text" class="form-control" id="view_all_page_url" name="view_all_page_url" value="{{ $item->view_all_page_url }}" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="view_all_status">view_all_status<br />
                            <input type="checkbox" checked class="" hidden name="view_all_status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->view_all_status == 1 ? 'checked' : '' }} checked placeholder="Sub Title Status" name="view_all_status" id="view_all_status" value="1">
                        </label>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="items_per_row">Items Per Row</label>
                            <input type="number" class="form-control" id="items_per_row" name="items_per_row" value="{{ $item->items_per_row }}" required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="items_show">Items Show</label>
                            <input type="number" class="form-control" id="items_show" name="items_show" value="{{ $item->items_show }}" required>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label for="is_details_page"> is_details_page <br />
                            <input type="checkbox" checked  class="" hidden name="is_details_page" value="0">
                            <input type="checkbox" class="toggle" {{ $item->is_details_page == 1 ? 'checked' : '' }} checked placeholder="page is_details_page" name="is_details_page" id="is_details_page" value="1">
                        </label>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label for="status"> Page Status <br />
                            <input type="checkbox" checked class="" hidden name="status" value="0">
                            <input type="checkbox" class="toggle" {{ $item->status == 1 ? 'checked' : '' }} checked placeholder="page Status" name="status" id="status" value="1">
                        </label>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group" onclick="upload_select(this)">
                            <label for="background d-block">Background</label> <br>
                            <input hidden type="text" class="form-control" id="background" name="background" value="{{ $item->background }}" required>
                            <img style="max-height: 60px" src="{{  dynamic_asset($item->background) }}" alt="">
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label for="background_color">Background Color</label>
                            <input type="color" class="form-control" id="background_color" name="background_color" value="{{ $item->background_color }}" required>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label for="background_type"> Background Color <span class="text-danger"> On = Background Image, Off = Background Color </span> <br />
                            <input type="checkbox"  class="" checked hidden name="background_type" value="0">
                            <input type="checkbox" class="toggle" {{ $item->background_type == 1 ? 'checked' : '' }} checked placeholder="page Status" name="background_type" id="background_type" value="1">
                        </label>
                    </div>

                </div>


                <button type="submit" class="btn btn-primary">Submit</button>
            </form>


        </div>
    </div>
</div>
