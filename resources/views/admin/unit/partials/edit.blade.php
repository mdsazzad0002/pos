<form action="{{ route('admin.unit.update', $unit->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')


    <input type="text" value="{{ $unit->name }}" name="name" oninput="document.querySelector('.unit_text').innerHTML = this.value" class="form-control mb-2" placeholder="Enter unit name">
    <input type="text" value="{{ $unit->sort_name }}" name="sort_name" class="form-control mb-2" placeholder="Enter unit sort name">

    <label for="decemal">Decemal <span class="text-danger">*</span></label>
    <select type="text" name="decimal" class="form-control mb-2" id="decemal">
        <option @if($unit->decimal == 0) selected  @endif value="0">NO</option>
        <option @if ($unit->decimal == 1) selected  @endif value="1">YES</option>
    </select>

    <div class="mt-2 mb-3">

            <input type="checkbox" @if ($unit->sub_items_id != 0) checked  @endif name="unit_checked" id="unit_checked">   <label for="unit_checked" class="cursor-pointer">Add as multiple of other unit
        </label>
        <div class="extra_info_unit">


           <div class="row">
            <div class="col-4">
                1 <span class="unit_text">{{ $unit->name }}</span> =
            </div>
            <div class="col-4">
                <input type="text" name="sub_items" class="form-control" placeholder="Unit items" value="{{ $unit->sub_items }}" id="">
            </div>
            <div class="col-4">
                <select name="sub_items_id" id="" class="form-control ">
                    @forelse ($units as $id => $unit_items)
                      <option @if ($unit->sub_items_id == $id) checked  @endif value="{{ $id }}">{{ $unit_items }}</option>
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

