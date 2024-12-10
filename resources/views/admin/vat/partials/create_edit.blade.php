@php
    if (!isset($vat)){
        $vat = null;
    }

@endphp
<form
@if( $vat)
    action="{{ route('admin.vat.update', $vat->id) }}"
@else
    action="{{ route('admin.vat.store') }}"
@endif
    method="post" enctype="multipart/form-data">
    @csrf
    @if( $vat)
        @method('put')
    @endif
    <div>
        <input type="text" name="name" class="form-control mb-2" value="{{ $vat ? $vat->name : '' }}" placeholder="Enter your name">
        <input type="number" step="0.1" name="amount" value="{{$vat ? $vat->amount : 0 }}" class="form-control mb-2" placeholder="Enter vat Amount %">

        <label for="status"> Status <br />
            <input type="checkbox" checked class="" hidden name="status" value="0">
            <input type="checkbox" class="status toggle" {{ $vat ? ($vat->status ? 'checked' : '') : '' }}  placeholder="status" name="status"
                id="status" value="1">
        </label>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
