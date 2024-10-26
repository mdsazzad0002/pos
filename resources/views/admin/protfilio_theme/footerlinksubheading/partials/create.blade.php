<form action="{{ route('admin.footerlinksubheading.store') }}" method="post" enctype="multipart/form-data">
    @csrf

    <div class="">
        <label for="">Heading name</label>
        <div class="input-group mb-3">
            <select required type="text" name="heading_id"  data-model="true" data-url="{{ route('admin.footerlinkheading.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="LeadSource" aria-label="LeadSource" aria-describedby="basic-addon1">
                <option selected value="">--Select An Item--</option>
            </select>
            <a target="_blank" type="button" class="btn btn-primary input-group-append" href="{{ route('admin.footerlinkheading.index') }}">+</a>
        </div>
    </div>

    <div class="form-group mb-2">
        <label for="footerlinksubheading">Title</label>
        <input type="text" name="title" class="form-control mb-2" id="footerlinksubheading" placeholder="Enter footerlinksubheading">
    </div>

    <div class="form-group mb-2">
        <label for="footerlinksubheading">Icon</label>
        <input type="text" name="icon" class="form-control mb-2" id="footerlinksubheading" placeholder="Enter icon class">
    </div>

    <div class="form-group mb-2">
        <label for="footerlinksubheading">Link</label>
        <input type="text" name="url" class="form-control mb-2"  id="footerlinksubheading" placeholder="Enter link">
    </div>


    <label for="status"> footerlinksubheading Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder="footerlinksubheading Status" name="status"  id="status" value="1">
    </label>





    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
