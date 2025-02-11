<form action="{{ route('admin.whole.sele.update', $wholeSeleProduct->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="mb-2">
        <label for="product_type_name"> Product Type Name </label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $wholeSeleProduct->name }}" placeholder="Enter Product Type name">
    </div>

    <label for="status"> wholeSeleProduct Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  placeholder=" Status" name="status" {{ $wholeSeleProduct->status == 1 ? 'checked' : '' }} id="status" value="1">
    </label>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
