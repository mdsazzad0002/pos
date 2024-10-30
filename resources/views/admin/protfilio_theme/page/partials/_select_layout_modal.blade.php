<form action="{{ route('admin.homePageManage.store') }}" method="post" enctype="multipart/form-data">
    @csrf

<input type="number" name="page_id" value="{{ $page_id }}" hidden>
    <div class="form-group mb-2">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control mb-2" value="" id="title" placeholder="Enter title">
    </div>

    <div class="form-group mb-2">
        <label for="subtitle">Subtitle</label>
        <input type="text" name="subtitle" class="form-control mb-2" value="" id="subtitle" placeholder="Enter subtitle">
    </div>

    <div class="">
        <label for="">Select Layout </label>
        <div class="input-group mb-3">
            <select required type="text" name="VarinatSuggession" data-model="true" data-url="{{ route('admin.VarinatSuggession.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="VarinatSuggession" aria-label="VarinatSuggession" aria-describedby="basic-addon1">
                <option value="">Lead Contact</option>
            </select>

        </div>
    </div>


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
