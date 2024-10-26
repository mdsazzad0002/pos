<form action="{{ route('admin.footerlinkheading.update', $footerlinkheading->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="footerlinkheading">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="{{ $footerlinkheading->title }}" id="footerlinkheading" placeholder="Enter footerlinkheading">
    </div>


    <label for="status"> footerlinkheading Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="footerlinkheading Status" name="status" {{ $footerlinkheading->status == 1 ? 'checked' : '' }} id="status" value="1">
    </label>



    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
