<form action="{{ route('admin.discount.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter discount name">
    <select name="type" id="">
        <option value="0">Parsent</option>
        <option value="1">Fixed</option>
    </select>
    <input type="number" step="0.1" name="amount" class="form-control mb-2" placeholder="Enter discount amount">


    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

