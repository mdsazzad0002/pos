<form
@if(isset($cashcounter))
    action="{{ route('admin.cashcounter.update', $cashcounter->id) }}"
@else

@php
    $cashcounter = null;
@endphp

    action="{{ route('admin.cashcounter.store') }}"
@endif
    method="post" enctype="multipart/form-data">

    @csrf

    @if($cashcounter)
        @method('put')
    @endif

        <label for="name"> cashcounter Name <br/>
            <input type="text" name="name" class="form-control mb-2" value="{{$cashcounter ? $cashcounter->name : '' }}" placeholder="Enter your name" id="name">
        </label>

        <div class="form-group mb-2">
            <label for="branch">Branch <span class="text-danger">Required</span></label>
            <div class="input-group mb-3">
                <select type="text" id="" data-url="{{ route('admin.branch.select') }}" data-ajax="true"  data-model="true" name="branch" class="form-control input-group-prepend select2" placeholder="Branch Name" id="branch" aria-label="Branch" aria-describedby="basic-addon1">
                    @if($cashcounter)
                        <option value="{{ $cashcounter->branch_id }}">{{ $cashcounter->branch_info->name ?? '' }}</option>
                    @else
                        <option value="">--branch--</option>
                    @endif

                </select>

                <a type="button" class="btn btn-primary input-group-append" target="_blank" href="{{ route('admin.branch.index') }}">+</a>
            </div>
        </div>


        <label for="status"> cashcounter Status <br/>
            <input type="checkbox" checked class="" hidden  name="status"   value="0">
            <input type="checkbox" class="toggle"  placeholder="cashcounter Status" name="status" {{ $cashcounter ? ($cashcounter->status == 1 ? 'checked' : '') : '' }} id="status" value="1">
        </label>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
