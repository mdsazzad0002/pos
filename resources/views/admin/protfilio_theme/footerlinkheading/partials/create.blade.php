<form action="{{ route('admin.footerlinkheading.store') }}" method="post" enctype="multipart/form-data">
    @csrf


    <div class="form-group mb-2">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="" id="title" placeholder="Enter footerlinkheading">
    </div>





    <label for="status"> footerlinkheading Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="footerlinkheading Status" name="status" id="status" value="1">
    </label>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
