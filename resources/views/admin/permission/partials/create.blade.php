<form action="{{ route('admin.permission.store') }}" method="POST">
    @method('post')
    @csrf
    <input class="form-control mb-2" type="text" name="role_name" placeholder="Enter your roles ">
    <div>
        <table class="table table-bordered table-striped table-hover">
            <tr>
                <td>
                    <div>
                        <label for="selectAll_permission">Select All
                            <input type="checkbox"  onchange="selectPermission(this)" id="selectAll_permission">
                        </label>
                    </div>
                </td>
                <td></td>
            </tr>
            @foreach ($permissions as $key => $items)
            <tr>
                <td>
                    <label for="{{ $key }}" >
                        {{ $key }}
                        <input type="checkbox" onchange="target_base(this)" id="{{ $key }}">
                    </label>
                </td>
                <td>

                    @foreach ($items as $item)
                    <label for="target_id_{{ $item->id }}" class="badge badge-primary">
                        <input id="target_id_{{ $item->id }}" name="permission[]" type="checkbox" value="{{ $item->id }}">&nbsp;
                        {{ $item->name }}
                    </label>
                    @endforeach
                </td>
            </tr>
            @endforeach
        </table>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-primary" type="submit">Save</button>
    </div>

</form>


