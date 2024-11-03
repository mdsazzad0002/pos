<form action="{{ route('admin.area.update', $area->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <input type="text" name="name" class="form-control mb-2" value="{{ $area->name }}" placeholder="Enter your name">
    <input type="number" step="0.1" name="amount" value="{{ $area->amount }}" class="form-control mb-2" placeholder="Enter vat Amount %">

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
