<form action="{{ route('admin.unit.store') }}" method="post" enctype="multipart/form-data">
@csrf

    <input type="text" name="name" oninput="document.querySelector('.unit_text').innerHTML = this.value" class="form-control mb-2" placeholder="Enter unit name">
    <input type="text" name="sort_name" class="form-control mb-2" placeholder="Enter unit sort name">

    <label for="decemal">Decemal <span class="text-danger">*</span></label>
    <select type="text" name="decimal" class="form-control mb-2" id="decemal">
        <option value="0">NO</option>
        <option value="1">YES</option>
    </select>

    <div class="mt-2 mb-3">

            <input type="checkbox" name="unit_checked" id="unit_checked">   <label for="unit_checked" class="cursor-pointer">Add as multiple of other unit
        </label>
        <div class="extra_info_unit">


           <div class="row">
            <div class="col-4">
                1 <span class="unit_text"></span> =
            </div>
            <div class="col-4">
                <input type="text" name="sub_items" class="form-control" placeholder="Unit items" id="">
            </div>
            <div class="col-4">
                <select name="sub_items_id" id="" class="form-control ">
                    @forelse ($units as $id => $unit)
                      <option value="{{ $id }}">{{ $unit }}</option>
                    @empty
                      <option value="0">No found Items</option>
                    @endforelse
                </select>
            </div>
           </div>
        </div>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
<style>
   #unit_checked ~ .extra_info_unit{
        display: none;
        cursor: pointer;
    }
    #unit_checked:checked ~ .extra_info_unit{
        display: block
    }
    .cursor-pointer{
        cursor: pointer;
    }
</style>

