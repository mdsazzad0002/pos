@if($header_item)
<form action="{{ route('admin.header.update', $header_item->id) }}" method="POST">
    @csrf
    @method('put')

    <div>
        <label for="name" class="mb-2">
            Name <br />
            <input type="text" class="form-control" id="name" name="name" value="{{ $header_item->name ?? '' }}">
        </label>
        <label for="position" class="mb-2">
            Position <br />
            <select name="position" id="position" class="form-control">
                <option @if( $header_item->position == 'left' ) selected @endif value="left">Left</option>
                <option @if( $header_item->position == 'center' ) selected @endif value="center">Center</option>
                <option @if( $header_item->position == 'right' ) selected @endif value="right">Right</option>
            </select>
        </label>

        <div class="text-right">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>



    </div>
</form>
@endif
